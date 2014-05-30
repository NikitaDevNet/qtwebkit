/*
    Copyright (C) 1998 Lars Knoll (knoll@mpi-hd.mpg.de)
    Copyright (C) 2001 Dirk Mueller <mueller@kde.org>
    Copyright (C) 2004, 2006, 2007, 2008 Apple Inc. All rights reserved.
    Copyright (C) 2010 Google Inc. All rights reserved.

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Library General Public
    License as published by the Free Software Foundation; either
    version 2 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Library General Public License for more details.

    You should have received a copy of the GNU Library General Public License
    along with this library; see the file COPYING.LIB.  If not, write to
    the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
    Boston, MA 02110-1301, USA.
 */

#ifndef ResourceLoadScheduler_h
#define ResourceLoadScheduler_h

#include "FrameLoaderTypes.h"
#include "ResourceLoaderOptions.h"

#if ENABLE(CFG_NETWORK)
#include "ResourceLoadPriority.h"
#endif

#include "Timer.h"
#include <wtf/Deque.h>
#include <wtf/HashMap.h>
#include <wtf/HashSet.h>
#include <wtf/Noncopyable.h>
#include <wtf/text/StringHash.h>
#include <wtf/text/WTFString.h>

namespace WebCore {

class CachedResource;
class Frame;
class KURL;
class NetscapePlugInStreamLoader;
class NetscapePlugInStreamLoaderClient;
class ResourceLoader;
class ResourceRequest;
class SubresourceLoader;

class ResourceLoadScheduler {
    WTF_MAKE_NONCOPYABLE(ResourceLoadScheduler); WTF_MAKE_FAST_ALLOCATED;
public:
    friend ResourceLoadScheduler* resourceLoadScheduler();

#if ENABLE(CFG_NETWORK)
    virtual PassRefPtr<SubresourceLoader> scheduleSubresourceLoad(Frame*, CachedResource*, const ResourceRequest&, ResourceLoadPriority, const ResourceLoaderOptions&);
#endif
    virtual PassRefPtr<NetscapePlugInStreamLoader> schedulePluginStreamLoad(Frame*, NetscapePlugInStreamLoaderClient*, const ResourceRequest&);
    virtual void remove(ResourceLoader*);
    virtual void crossOriginRedirectReceived(ResourceLoader*, const KURL& redirectURL);
    
#if ENABLE(CFG_NETWORK)
    virtual void servePendingRequests(ResourceLoadPriority minimumPriority = ResourceLoadPriorityVeryLow);
#endif
    virtual void suspendPendingRequests();
    virtual void resumePendingRequests();
    
    bool isSerialLoadingEnabled() const { return m_isSerialLoadingEnabled; }
    virtual void setSerialLoadingEnabled(bool b) { m_isSerialLoadingEnabled = b; }

protected:
    ResourceLoadScheduler();
    virtual ~ResourceLoadScheduler();

    void notifyDidScheduleResourceRequest(ResourceLoader*);

private:
#if ENABLE(CFG_NETWORK)
    void scheduleLoad(ResourceLoader*, ResourceLoadPriority);
#endif
    void scheduleServePendingRequests();
    void requestTimerFired(Timer<ResourceLoadScheduler>*);

    bool isSuspendingPendingRequests() const { return !!m_suspendPendingRequestsCount; }

    class HostInformation {
        WTF_MAKE_NONCOPYABLE(HostInformation); WTF_MAKE_FAST_ALLOCATED;
    public:
        HostInformation(const String&, unsigned);
        ~HostInformation();
        
        const String& name() const { return m_name; }
#if ENABLE(CFG_NETWORK)
        void schedule(ResourceLoader*, ResourceLoadPriority = ResourceLoadPriorityVeryLow);
#endif
        void addLoadInProgress(ResourceLoader*);
        void remove(ResourceLoader*);
        bool hasRequests() const;
#if ENABLE(CFG_NETWORK)
        bool limitRequests(ResourceLoadPriority) const;
#endif

        typedef Deque<RefPtr<ResourceLoader> > RequestQueue;
#if ENABLE(CFG_NETWORK)
        RequestQueue& requestsPending(ResourceLoadPriority priority) { return m_requestsPending[priority]; }
#endif

    private:                    
#if ENABLE(CFG_NETWORK)
        RequestQueue m_requestsPending[ResourceLoadPriorityHighest + 1];
#endif
        typedef HashSet<RefPtr<ResourceLoader> > RequestMap;
        RequestMap m_requestsLoading;
        const String m_name;
        const int m_maxRequestsInFlight;
    };

    enum CreateHostPolicy {
        CreateIfNotFound,
        FindOnly
    };
    
    HostInformation* hostForURL(const KURL&, CreateHostPolicy = FindOnly);
#if ENABLE(CFG_NETWORK)
    void servePendingRequests(HostInformation*, ResourceLoadPriority);
#endif

    typedef HashMap<String, HostInformation*, StringHash> HostMap;
    HostMap m_hosts;
    HostInformation* m_nonHTTPProtocolHost;
        
    Timer<ResourceLoadScheduler> m_requestTimer;

    unsigned m_suspendPendingRequestsCount;
    bool m_isSerialLoadingEnabled;
};

ResourceLoadScheduler* resourceLoadScheduler();

}

#endif
