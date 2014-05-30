/*
 * Copyright (C) 2006, 2007, 2008, 2009 Apple Inc. All rights reserved.
 * Copyright (C) 2011 Google Inc. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1.  Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer. 
 * 2.  Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution. 
 * 3.  Neither the name of Apple Computer, Inc. ("Apple") nor the names of
 *     its contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission. 
 *
 * THIS SOFTWARE IS PROVIDED BY APPLE AND ITS CONTRIBUTORS "AS IS" AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL APPLE OR ITS CONTRIBUTORS BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#ifndef DocumentLoader_h
#define DocumentLoader_h

#if ENABLE(CFG_CACHE)
#include "CachedRawResourceClient.h"
#include "CachedResourceHandle.h"
#endif

#include "DocumentLoadTiming.h"
#include "DocumentWriter.h"

#if ENABLE(CFG_ICON)
#include "IconDatabaseBase.h"
#endif

#include "NavigationAction.h"

#if ENABLE(CFG_NETWORK)
#include "ResourceError.h"
#endif

#include "ResourceLoaderOptions.h"

#if ENABLE(CFG_NETWORK)
#include "ResourceRequest.h"
#include "ResourceResponse.h"
#endif

#include "StringWithDirection.h"
#include "SubstituteData.h"
#include "Timer.h"
#include <wtf/HashSet.h>
#include <wtf/RefPtr.h>
#include <wtf/Vector.h>

#if HAVE(RUNLOOP_TIMER)
#include <wtf/RunLoopTimer.h>
#endif

namespace WTF {
class SchedulePair;
}

namespace WebCore {
    class ApplicationCacheHost;
#if ENABLE(WEB_ARCHIVE) || ENABLE(MHTML)
    class Archive;
#endif
    class ArchiveResource;
    class ArchiveResourceCollection;
    class CachedRawResource;
    class CachedResourceLoader;
    class ContentFilter;
    class FormState;
    class Frame;
    class FrameLoader;
    class Page;
    class ResourceBuffer;
    class ResourceLoader;
    class SharedBuffer;
    class SubstituteResource;

    typedef HashSet<RefPtr<ResourceLoader> > ResourceLoaderSet;
#if ENABLE(CFG_NETWORK)
    typedef Vector<ResourceResponse> ResponseVector;
#endif

    class DocumentLoader : public RefCounted<DocumentLoader>
#if ENABLE(CFG_CACHE)
            , private CachedRawResourceClient
#endif
    {
        WTF_MAKE_FAST_ALLOCATED;
    public:
        static PassRefPtr<DocumentLoader> create(
#if ENABLE(CFG_NETWORK)
                const ResourceRequest& request,
#endif
                const SubstituteData& data)
        {
            return adoptRef(new DocumentLoader(
#if ENABLE(CFG_NETWORK)
                                request,
#endif
                                data));
        }
        virtual ~DocumentLoader();

        void setFrame(Frame*);
        Frame* frame() const { return m_frame; }

        virtual void attachToFrame();
        virtual void detachFromFrame();

        FrameLoader* frameLoader() const;
        ResourceLoader* mainResourceLoader() const;
        PassRefPtr<ResourceBuffer> mainResourceData() const;
        
        DocumentWriter* writer() const { return &m_writer; }

#if ENABLE(CFG_NETWORK)
        const ResourceRequest& originalRequest() const;
        const ResourceRequest& originalRequestCopy() const;

        const ResourceRequest& request() const;
        ResourceRequest& request();
#endif

        CachedResourceLoader* cachedResourceLoader() const { return m_cachedResourceLoader.get(); }

        const SubstituteData& substituteData() const { return m_substituteData; }

        // FIXME: This is the same as requestURL(). We should remove one of them.
        const KURL& url() const;
        const KURL& unreachableURL() const;

        const KURL& originalURL() const;
        const KURL& requestURL() const;
        const KURL& responseURL() const;
        const String& responseMIMEType() const;

        void replaceRequestURLForSameDocumentNavigation(const KURL&);
        bool isStopping() const { return m_isStopping; }
        void stopLoading();
        void setCommitted(bool committed) { m_committed = committed; }
        bool isCommitted() const { return m_committed; }
        bool isLoading() const;
#if ENABLE(CFG_NETWORK)
        const ResourceResponse& response() const { return m_response; }
        const ResourceError& mainDocumentError() const { return m_mainDocumentError; }
#endif
        bool isClientRedirect() const { return m_isClientRedirect; }
        void setIsClientRedirect(bool isClientRedirect) { m_isClientRedirect = isClientRedirect; }
        void handledOnloadEvents();
        bool wasOnloadHandled() { return m_wasOnloadHandled; }
        bool isLoadingInAPISense() const;
        void setTitle(const StringWithDirection&);
        const String& overrideEncoding() const { return m_overrideEncoding; }

#if PLATFORM(MAC)
        void schedule(WTF::SchedulePair*);
        void unschedule(WTF::SchedulePair*);
#endif

#if ENABLE(WEB_ARCHIVE) || ENABLE(MHTML)
        void setArchive(PassRefPtr<Archive>);
        void addAllArchiveResources(Archive*);
        void addArchiveResource(PassRefPtr<ArchiveResource>);
        PassRefPtr<Archive> popArchiveForSubframe(const String& frameName, const KURL&);
        SharedBuffer* parsedArchiveData() const;

        bool scheduleArchiveLoad(ResourceLoader*, const ResourceRequest&);
#endif // ENABLE(WEB_ARCHIVE) || ENABLE(MHTML)

        // Return the ArchiveResource for the URL only when loading an Archive
        ArchiveResource* archiveResourceForURL(const KURL&) const;

        PassRefPtr<ArchiveResource> mainResource() const;

        // Return an ArchiveResource for the URL, either creating from live data or
        // pulling from the ArchiveResourceCollection
        PassRefPtr<ArchiveResource> subresource(const KURL&) const;
        void getSubresources(Vector<PassRefPtr<ArchiveResource> >&) const;


#ifndef NDEBUG
        bool isSubstituteLoadPending(ResourceLoader*) const;
#endif
        void cancelPendingSubstituteLoad(ResourceLoader*);   
        
#if ENABLE(CFG_NETWORK)
        void addResponse(const ResourceResponse&);
        const ResponseVector& responses() const { return m_responses; }
#endif

        const NavigationAction& triggeringAction() const { return m_triggeringAction; }
        void setTriggeringAction(const NavigationAction& action) { m_triggeringAction = action; }
        void setOverrideEncoding(const String& encoding) { m_overrideEncoding = encoding; }
#if ENABLE(CFG_NETWORK)
        void setLastCheckedRequest(const ResourceRequest& request) { m_lastCheckedRequest = request; }
        const ResourceRequest& lastCheckedRequest()  { return m_lastCheckedRequest; }
#endif

        void stopRecordingResponses();
        const StringWithDirection& title() const { return m_pageTitle; }

        KURL urlForHistory() const;
        bool urlForHistoryReflectsFailure() const;

        // These accessors accommodate WebCore's somewhat fickle custom of creating history
        // items for redirects, but only sometimes. For "source" and "destination",
        // these accessors return the URL that would have been used if a history
        // item were created. This allows WebKit to link history items reflecting
        // redirects into a chain from start to finish.
        String clientRedirectSourceForHistory() const { return m_clientRedirectSourceForHistory; } // null if no client redirect occurred.
        String clientRedirectDestinationForHistory() const { return urlForHistory(); }
        void setClientRedirectSourceForHistory(const String& clientRedirectSourceForHistory) { m_clientRedirectSourceForHistory = clientRedirectSourceForHistory; }
        
        String serverRedirectSourceForHistory() const { return (urlForHistory() == url() || url() == blankURL()) ? String() : urlForHistory().string(); } // null if no server redirect occurred.
        String serverRedirectDestinationForHistory() const { return url(); }

        bool didCreateGlobalHistoryEntry() const { return m_didCreateGlobalHistoryEntry; }
        void setDidCreateGlobalHistoryEntry(bool didCreateGlobalHistoryEntry) { m_didCreateGlobalHistoryEntry = didCreateGlobalHistoryEntry; }
        
        void setDefersLoading(bool);
        void setMainResourceDataBufferingPolicy(DataBufferingPolicy);

        void startLoadingMainResource();
#if ENABLE(CFG_NETWORK)
        void cancelMainResourceLoad(const ResourceError&);
#endif
        
        // Support iconDatabase in synchronous mode.
        void iconLoadDecisionAvailable();
        
        // Support iconDatabase in asynchronous mode.
#if ENABLE(CFG_ICON)
        void continueIconLoadWithDecision(IconLoadDecision);
#endif
        void getIconLoadDecisionForIconURL(const String&);
        void getIconDataForIconURL(const String&);

        bool isLoadingMainResource() const { return m_loadingMainResource; }
        bool isLoadingMultipartContent() const { return m_isLoadingMultipartContent; }

        void stopLoadingPlugIns();
        void stopLoadingSubresources();

        void addSubresourceLoader(ResourceLoader*);
        void removeSubresourceLoader(ResourceLoader*);
        void addPlugInStreamLoader(ResourceLoader*);
        void removePlugInStreamLoader(ResourceLoader*);

        void subresourceLoaderFinishedLoadingOnePart(ResourceLoader*);

        void setDeferMainResourceDataLoad(bool defer) { m_deferMainResourceDataLoad = defer; }
        
        void didTellClientAboutLoad(const String& url)
        { 
#if !PLATFORM(MAC)
            // Don't include data urls here, as if a lot of data is loaded
            // that way, we hold on to the (large) url string for too long.
            if (protocolIs(url, "data"))
                return;
#endif
            if (!url.isEmpty())
                m_resourcesClientKnowsAbout.add(url);
        }
        bool haveToldClientAboutLoad(const String& url) { return m_resourcesClientKnowsAbout.contains(url); }
#if ENABLE(CFG_NETWORK)
        void recordMemoryCacheLoadForFutureClientNotification(const ResourceRequest&);
        void takeMemoryCacheLoadsForClientNotification(Vector<ResourceRequest>& loads);
#endif

        DocumentLoadTiming* timing() { return &m_documentLoadTiming; }
        void resetTiming() { m_documentLoadTiming = DocumentLoadTiming(); }

        // The WebKit layer calls this function when it's ready for the data to
        // actually be added to the document.
        void commitData(const char* bytes, size_t length);

        ApplicationCacheHost* applicationCacheHost() const { return m_applicationCacheHost.get(); }

        void checkLoadComplete();

    protected:
        DocumentLoader(
#if ENABLE(CFG_NETWORK)
                const ResourceRequest&,
#endif
                const SubstituteData&);

        bool m_deferMainResourceDataLoad;

    private:

        // The URL of the document resulting from this DocumentLoader.
        KURL documentURL() const;
        Document* document() const;

#if ENABLE(CFG_NETWORK)
        void setRequest(const ResourceRequest&);
#endif

        void commitIfReady();
#if ENABLE(CFG_NETWORK)
        void setMainDocumentError(const ResourceError&);
#endif
        void commitLoad(const char*, int);
        void clearMainResourceLoader();

        void setupForReplace();
        void maybeFinishLoadingMultipartContent();
        
        bool maybeCreateArchive();
#if ENABLE(WEB_ARCHIVE) || ENABLE(MHTML)
        void clearArchiveResources();
#endif

#if ENABLE(CFG_NETWORK)
        void willSendRequest(ResourceRequest&, const ResourceResponse&);
#endif
        void finishedLoading(double finishTime);
#if ENABLE(CFG_NETWORK)
        void mainReceivedError(const ResourceError&);
#endif
#if ENABLE(CFG_CACHE)
#if ENABLE(CFG_NETWORK)
        virtual void redirectReceived(CachedResource*, ResourceRequest&, const ResourceResponse&) OVERRIDE;
        virtual void responseReceived(CachedResource*, const ResourceResponse&) OVERRIDE;
#endif
        virtual void dataReceived(CachedResource*, const char* data, int length) OVERRIDE;
        virtual void notifyFinished(CachedResource*) OVERRIDE;
#endif

        bool maybeLoadEmpty();

        bool isMultipartReplacingLoad() const;
#if ENABLE(CFG_NETWORK)
        bool isPostOrRedirectAfterPost(const ResourceRequest&, const ResourceResponse&);

        static void callContinueAfterNavigationPolicy(void*, const ResourceRequest&, PassRefPtr<FormState>, bool shouldContinue);
        void continueAfterNavigationPolicy(const ResourceRequest&, bool shouldContinue);
#endif

        static void callContinueAfterContentPolicy(void*, PolicyAction);
        void continueAfterContentPolicy(PolicyAction);

        void stopLoadingForPolicyChange();
#if ENABLE(CFG_NETWORK)
        ResourceError interruptedForPolicyChangeError() const;
#endif

#if HAVE(RUNLOOP_TIMER)
        typedef RunLoopTimer<DocumentLoader> DocumentLoaderTimer;
#else
        typedef Timer<DocumentLoader> DocumentLoaderTimer;
#endif
        void handleSubstituteDataLoadSoon();
        void handleSubstituteDataLoadNow(DocumentLoaderTimer*);
        void startDataLoadTimer();

        void deliverSubstituteResourcesAfterDelay();
        void substituteResourceDeliveryTimerFired(Timer<DocumentLoader>*);

        void clearMainResource();

        Frame* m_frame;
        RefPtr<CachedResourceLoader> m_cachedResourceLoader;

#if ENABLE(CFG_CACHE)
        CachedResourceHandle<CachedRawResource> m_mainResource;
#endif
        ResourceLoaderSet m_subresourceLoaders;
        ResourceLoaderSet m_multipartSubresourceLoaders;
        ResourceLoaderSet m_plugInStreamLoaders;
        
        mutable DocumentWriter m_writer;

#if ENABLE(CFG_NETWORK)
        // A reference to actual request used to create the data source.
        // This should only be used by the resourceLoadDelegate's
        // identifierForInitialRequest:fromDatasource: method. It is
        // not guaranteed to remain unchanged, as requests are mutable.
        ResourceRequest m_originalRequest;
#endif

        SubstituteData m_substituteData;

#if ENABLE(CFG_NETWORK)
        // A copy of the original request used to create the data source.
        // We have to copy the request because requests are mutable.
        ResourceRequest m_originalRequestCopy;
        
        // The 'working' request. It may be mutated
        // several times from the original request to include additional
        // headers, cookie information, canonicalization and redirects.
        ResourceRequest m_request;

        ResourceResponse m_response;
    
        ResourceError m_mainDocumentError;    
#endif

        bool m_originalSubstituteDataWasValid;
        bool m_committed;
        bool m_isStopping;
        bool m_gotFirstByte;
        bool m_isClientRedirect;
        bool m_isLoadingMultipartContent;

        // FIXME: Document::m_processingLoadEvent and DocumentLoader::m_wasOnloadHandled are roughly the same
        // and should be merged.
        bool m_wasOnloadHandled;

        StringWithDirection m_pageTitle;

        String m_overrideEncoding;

        // The action that triggered loading - we keep this around for the
        // benefit of the various policy handlers.
        NavigationAction m_triggeringAction;

#if ENABLE(CFG_NETWORK)
        // The last request that we checked click policy for - kept around
        // so we can avoid asking again needlessly.
        ResourceRequest m_lastCheckedRequest;

        // We retain all the received responses so we can play back the
        // WebResourceLoadDelegate messages if the item is loaded from the
        // page cache.
        ResponseVector m_responses;
#endif
        bool m_stopRecordingResponses;
        
        typedef HashMap<RefPtr<ResourceLoader>, RefPtr<SubstituteResource> > SubstituteResourceMap;
        SubstituteResourceMap m_pendingSubstituteResources;
        Timer<DocumentLoader> m_substituteResourceDeliveryTimer;

        OwnPtr<ArchiveResourceCollection> m_archiveResourceCollection;
#if ENABLE(WEB_ARCHIVE) || ENABLE(MHTML)
        RefPtr<Archive> m_archive;
        RefPtr<SharedBuffer> m_parsedArchiveData;
#endif

        HashSet<String> m_resourcesClientKnowsAbout;
#if ENABLE(CFG_NETWORK)
        Vector<ResourceRequest> m_resourcesLoadedFromMemoryCacheForClientNotification;
#endif
        
        String m_clientRedirectSourceForHistory;
        bool m_didCreateGlobalHistoryEntry;

        bool m_loadingMainResource;
        DocumentLoadTiming m_documentLoadTiming;

        double m_timeOfLastDataReceived;
        unsigned long m_identifierForLoadWithoutResourceLoader;

        DocumentLoaderTimer m_dataLoadTimer;
        bool m_waitingForContentPolicy;

#if ENABLE(CFG_ICON)
        RefPtr<IconLoadDecisionCallback> m_iconLoadDecisionCallback;
        RefPtr<IconDataCallback> m_iconDataCallback;
#endif

        friend class ApplicationCacheHost;  // for substitute resource delivery
        OwnPtr<ApplicationCacheHost> m_applicationCacheHost;

#if USE(CONTENT_FILTERING)
        RefPtr<ContentFilter> m_contentFilter;
#endif
    };

#if ENABLE(CFG_NETWORK)
    inline void DocumentLoader::recordMemoryCacheLoadForFutureClientNotification(const ResourceRequest& request)
    {
        m_resourcesLoadedFromMemoryCacheForClientNotification.append(request);
    }

    inline void DocumentLoader::takeMemoryCacheLoadsForClientNotification(Vector<ResourceRequest>& loadsSet)
    {
        loadsSet.swap(m_resourcesLoadedFromMemoryCacheForClientNotification);
        m_resourcesLoadedFromMemoryCacheForClientNotification.clear();
    }
#endif

}

#endif // DocumentLoader_h
