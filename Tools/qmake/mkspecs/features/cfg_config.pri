# -------------------------------------------------------------------
# Global configure options for WebKit
#
# See 'Tools/qmake/README' for an overview of the build system
# -------------------------------------------------------------------


cfg_dwarning(entering cfg_config.pri)


# warn when multiply included
contains (CFG_CONFIG_PRI_INCLUDED, cfg_config_file_included) {
    cfg_dwarning (multiple inclusion of cfg_config.pri)
}
CFG_CONFIG_PRI_INCLUDED += cfg_config_file_included




# For qmake and will added to DEFINES
# See also in  # Dependences
CFG_FEATURE_DEFAULTS = \  # = default value  # which block depend from it
# from features.pri
    ENABLE_3D_RENDERING=0 \  # =1  # WebCore
    ENABLE_ACCELERATED_2D_CANVAS=0 \  # =0  # WebCore
    ENABLE_BATTERY_STATUS=0 \  # =0  # WebCore, WebKit2
    ENABLE_BLOB=0 \  # =1  # WebCore, WebKit2
    ENABLE_CANVAS_PATH=0 \  # =1  # WebCore
    ENABLE_CANVAS_PROXY=0 \  # =0  # WebCore
    ENABLE_CHANNEL_MESSAGING=0 \  # =1  # WebCore
    ENABLE_CSP_NEXT=0 \  # =0  # WebCore
    ENABLE_CSS_BOX_DECORATION_BREAK=0 \  # =1
    ENABLE_CSS_COMPOSITING=0 \  # =1  # WebCore, WebKit2
    ENABLE_CSS_EXCLUSIONS=0 \  # =1  # WebCore
    ENABLE_CSS_FILTERS=0 \  # =1  # WebCore, WebKit2
    ENABLE_CSS_GRID_LAYOUT=0 \  # =0  # none
    ENABLE_CSS_HIERARCHIES=0 \  # =0  # none
    ENABLE_CSS_IMAGE_ORIENTATION=0 \  # =0  # WebCore
    ENABLE_CSS_IMAGE_RESOLUTION=0 \  # =0  # WebCore
    ENABLE_CSS_IMAGE_SET=0 \  # =1  # WebCore
    ENABLE_CSS_REGIONS=0 \  # =1  # WebCore, WebKit2
    ENABLE_CSS_SHADERS=0 \  # =0  # WebCore, WebKit2, ANGLE, WebKit
    ENABLE_CSS_SHAPES=0 \  # =1  # WebCore
    ENABLE_CSS_STICKY_POSITION=0 \  # =1  # WebCore
    ENABLE_CSS_TRANSFORMS_ANIMATIONS_UNPREFIXED=0 \  # =1  # none
    ENABLE_CSS_VARIABLES=0 \  # =0  # WebCore
    ENABLE_CSS3_CONDITIONAL_RULES=0 \  # =0  # WebCore
    ENABLE_CSS3_TEXT=0 \  # =0  # WebCore
    ENABLE_CSS3_TEXT_LINE_BREAK=0 \  # =0  # none
    ENABLE_DASHBOARD_SUPPORT=0 \  # =0  # WebCore, WebKit2
    ENABLE_DATAGRID=0 \  # =0  # none
    ENABLE_DATALIST_ELEMENT=0 \  # =1  # WebCore
    ENABLE_DATA_TRANSFER_ITEMS=0 \  # =0  # WebCore
    ENABLE_DETAILS_ELEMENT=0 \  # =1  # WebCore
    ENABLE_DEVICE_ORIENTATION=0 \  # =1  # WebCore, WebKit2, WebKit, widgetsapi
    ENABLE_DIRECTORY_UPLOAD=0 \  # =0  # WebCore, WebKit2
    ENABLE_DOWNLOAD_ATTRIBUTE=0 \  # =1  # WebCore
    ENABLE_FAST_MOBILE_SCROLLING=0 \  # =1  # WebCore
    ENABLE_FILE_SYSTEM=0 \  # =0  # WebCore
    ENABLE_FILTERS=0 \  # =1  # WebCore
    ENABLE_FONT_LOAD_EVENTS=0 \  # =0  # WebCore
    ENABLE_FTPDIR=0 \  # =1  # WebCore
    ENABLE_FULLSCREEN_API=0 \  # =1  # WebCore, WebKit2, WebKitTestRunner
    ENABLE_GAMEPAD=0 \  # =0  # WebCore
    ENABLE_GEOLOCATION=0 \  # =1  # WebCore, WebKit2, WebKit, widgetsapi
    ENABLE_GESTURE_EVENTS=0 \  # =1  # WebCore, WebKit2, WebKit
    ENABLE_HIGH_DPI_CANVAS=0 \  # =0  # WebCore
    ENABLE_ICONDATABASE=0 \  # =1  # WebCore, WebKit2, WebKit
    ENABLE_IFRAME_SEAMLESS=0 \  # =1  # WebCore, WebKit2, WebKit
    ENABLE_INDEXED_DATABASE=0 \  # =1  # WebCore, WebKit
    ENABLE_INPUT_SPEECH=0 \  # =0  # WebCore
    ENABLE_INPUT_TYPE_COLOR=0 \  # =1  # WebCore, WebKit2, WebKit
    ENABLE_INPUT_TYPE_DATE=0 \  # =0  # WebCore
    ENABLE_INPUT_TYPE_DATETIME_INCOMPLETE=0 \  # =0  # WebCore
    ENABLE_INPUT_TYPE_DATETIMELOCAL=0 \  # =0  # WebCore
    ENABLE_INPUT_TYPE_MONTH=0 \  # =0  # WebCore
    ENABLE_INPUT_TYPE_TIME=0 \  # =0  # WebCore
    ENABLE_INPUT_TYPE_WEEK=0 \  # =0  # WebCore
    ENABLE_INSPECTOR=0 \  # =1  # WebCore, WebKit2, WebKit, WebKitTestRunner
    ENABLE_INSPECTOR_SERVER=0 \  # =1  # WebKit2
    ENABLE_JAVASCRIPT_DEBUGGER=0 \  # =1  # WebCore, WebKit2
    ENABLE_LEGACY_CSS_VENDOR_PREFIXES=0 \  # =0  # WebCore
    ENABLE_LEGACY_NOTIFICATIONS=0 \  # =1  # WebCore, WebKit2, WebKit
    ENABLE_LEGACY_VIEWPORT_ADAPTION=0 \  # =1  # WebCore
    ENABLE_LEGACY_VENDOR_PREFIXES=0 \  # =1  # none
    ENABLE_LEGACY_WEB_AUDIO=0 \  # =1  # WebCore
    ENABLE_LINK_PREFETCH=0 \  # =1  # WebCore
    ENABLE_MATHML=0 \  # =0  # WebCore
    ENABLE_MEDIA_SOURCE=0 \  # =0  # WebCore
    ENABLE_MEDIA_STATISTICS=0 \  # =0  # WebCore
    ENABLE_MEDIA_STREAM=0 \  # =0  # WebCore
    ENABLE_METER_ELEMENT=0 \  # =1  # WebCore
    ENABLE_MHTML=0 \  # =1  # WebCore, WebKit2, WebKit
    ENABLE_MICRODATA=0 \  # =0  # WebCore
    ENABLE_MOUSE_CURSOR_SCALE=0 \  # =0  # WebCore
    ENABLE_NAVIGATOR_CONTENT_UTILS=0 \  # =0  # WebCore
    ENABLE_NETSCAPE_PLUGIN_API=0 \  # =0  # WebCore, WebKit2, WebKit
    ENABLE_NETWORK_INFO=0 \  # =0  # WebCore, WebKit2
    ENABLE_NOSNIFF=0 \  # =0  # WebCore
    ENABLE_NOTIFICATIONS=0 \  # =1  # WebCore, WebKit2, WebKit
    ENABLE_ORIENTATION_EVENTS=0 \  # =1  # WebCore, WebKit
    ENABLE_PAGE_VISIBILITY_API=0 \  # =1  # WebCore, WebKit2, WebKit
    ENABLE_PROGRESS_ELEMENT=0 \  # =1  # WebCore
    ENABLE_PROXIMITY_EVENTS=0 \  # =0  # WebCore, WebKit2
    ENABLE_QUOTA=0 \  # =0  # WebCore
    ENABLE_RESOLUTION_MEDIA_QUERY=0 \  # =1  # WebCore
    ENABLE_RESOURCE_TIMING=0 \  # =0  # WebCore
    ENABLE_REQUEST_ANIMATION_FRAME=0 \  # =1  # WebCore, WebKit2, WebKit
    ENABLE_SCRIPTED_SPEECH=0 \  # =0  # WebCore
    ENABLE_SECCOMP_FILTERS=0 \  # =0  # WebKit2
    ENABLE_SHADOW_DOM=0 \  # =0  # WebCore, WebKit2
    ENABLE_SHARED_WORKERS=0 \  # =1  # WebCore
    ENABLE_SMOOTH_SCROLLING=0 \  # =1  # WebCore, WebKit2, WebKit
    ENABLE_SQL_DATABASE=0 \  # =1  # WebCore, WebKit2, WebKit
    ENABLE_STYLE_SCOPED=0 \  # =0  # WebCore
    ENABLE_SUBPIXEL_LAYOUT=0 \  # =1  # WebCore
    ENABLE_SVG=0 \  # =1  # WebCore
    ENABLE_SVG_FONTS=0 \  # =1  # WebCore
    ENABLE_TEMPLATE_ELEMENT=0 \  # =0  # WebCore
    ENABLE_TEXT_AUTOSIZING=0 \  # =0  # WebCore
    ENABLE_THREADED_HTML_PARSER=0 \  # =0  # WebCore
    ENABLE_TOUCH_ADJUSTMENT=0 \  # =1  # WebCore, WebKit2, WebKit
    ENABLE_TOUCH_EVENTS=0 \  # =1  # WebCore, WebKit2, WebKit, WebKitTestRunner
    ENABLE_TOUCH_ICON_LOADING=0 \  # =0  # WebCore
    ENABLE_USER_TIMING=0 \  # =0  # WebCore
    ENABLE_VIBRATION=0 \  # =0  # WebCore, WebKit2
    ENABLE_VIDEO=0 \  # =0  # WebCore, WebKit2, WebKit, widgetsapi
    ENABLE_VIDEO_TRACK=0 \  # =1  # WebCore, WebKit2
    ENABLE_VIEW_MODE_CSS_MEDIA=0 \  # =1  # WebCore
    ENABLE_WEBGL=0 \  # =0  # WebCore, WebKit2, WebKit, widgetsapi, tests, QtTestBrowser
    ENABLE_WEB_AUDIO=0 \  # =0  # WebCore, WebKit2, WebKit, QtTestBrowser
    ENABLE_WEB_SOCKETS=0 \  # =1  # WebCore
    ENABLE_WEB_TIMING=0 \  # =1  # WebCore
    ENABLE_WORKERS=0 \  # =1  # WebCore, WebKit
    ENABLE_XHR_TIMEOUT=0 \  # =1  # WebCore
    ENABLE_XSLT=0 \  # =0  # WebCore
# from FeatureDefines.h
    ENABLE_8BIT_TEXTRUN=0 \  # =0  # WebCore
    ENABLE_ACCELERATED_OVERFLOW_SCROLLING=0 \  # =0  # WebCore
    ENABLE_CONTEXT_MENUS=0 \  # =1  # WebCore, WebKit2, WebKitTestRunner
    ENABLE_CSS_DEVICE_ADAPTATION=0 \  # =0  # WebCore, WebKit2
    ENABLE_CSS_TRANSFORMS_ANIMATIONS_TRANSITIONS_UNPREFIXED=0 \  # =0  # none
    ENABLE_CUSTOM_SCHEME_HANDLER=0 \  # =0  # WebCore
    ENABLE_DELETION_UI=0 \  # =0  # WebCore, WebKit2
    ENABLE_DIALOG_ELEMENT=0 \  # =0  # WebCore
    ENABLE_DRAGGABLE_REGION=0 \  # =0  # WebCore
    ENABLE_DRAG_SUPPORT=0 \  # =1  # WebCore, WebKit2
    ENABLE_ENCRYPTED_MEDIA=0 \  # =0  # WebCore
    ENABLE_ENCRYPTED_MEDIA_V2=0 \  # =0  # WebCore
    ENABLE_GLIB_SUPPORT=0 \  # =0  # none
    ENABLE_HIDDEN_PAGE_DOM_TIMER_THROTTLING=0 \  # =0  # WebCore, WebKit2
    ENABLE_IMAGE_DECODER_DOWN_SAMPLING=0 \  # =0  # WebCore
    ENABLE_JAVASCRIPT_I18N_API=0 \  # =0  # WebCore
    ENABLE_MEDIA_CAPTURE=0 \  # =0  # WebCore, WebKit2
    ENABLE_NETSCAPE_PLUGIN_METADATA_CACHE=0 \  # =0  # WebCore, WebKit
    ENABLE_OBJECT_MARK_LOGGING=0 \  # =0  # JavaScriptCore
    ENABLE_OPENCL=0 \  # =0  # WebCore
    ENABLE_OPENTYPE_VERTICAL=0 \  # =0  # WebCore
    ENABLE_PLUGIN_PACKAGE_SIMPLE_HASH=0 \  # =0  # WebCore
    ENABLE_PLUGIN_PROXY_FOR_VIDEO=0 \  # =0  # WebCore, WebKit2
    ENABLE_POINTER_LOCK=0 \  # =0  # WebCore
    ENABLE_REPAINT_THROTTLING=0 \  # =0  # WebCore
    ENABLE_RUBBER_BANDING=0 \  # =0  # WebCore
    ENABLE_SATURATED_LAYOUT_ARITHMETIC=0 \  # =0  # WebCore
    ENABLE_SPEECH_SYNTHESIS=0 \  # =0  # WebCore
    ENABLE_SPELLCHECK=0 \  # =0  # none
    ENABLE_TEXT_CARET=0 \  # =1  # WebCore
    ENABLE_THREADED_SCROLLING=0 \  # =0  # WebCore, WebKit2
    ENABLE_VIEWPORT=0 \  # =0  # WebCore
    ENABLE_VIEWSOURCE_ATTRIBUTE=0 \  # =1  # WebCore
    ENABLE_WEB_ARCHIVE=0 \  # =0  # WebCore, WebKit2
    \
# This is here only for switch off, not for switch on.
# For switch on made it in FeatureDefines.h
    ENABLE_DATE_AND_TIME_INPUT_TYPES=0 \  # =0  # WebCore
    \
# This is here only for switch off, not for switch on.
# For switch on made it in FeatureDefines.h
    ENABLE_PAN_SCROLLING=0 \  # =0  # WebCore, WebKit
    \
# This is here only for switch off, not for switch on.
# For switch on made it in Platform.h
#    ENABLE_JIT=0 \  # =0  # JavaScriptCore
    \
# This is here only for switch off, not for switch on.
# For switch on made it in Platform.h
    USE_TEXTURE_MAPPER_GL=0 \  # =0  # WebCore, WebKit2, WebKit, widgetsapi
    \
    \
# for  cfg_config  (ENABLE_CFG_*)
# See also in  # Dependences
    ENABLE_CFG_ACCESSIBILITY=1 \  # =1
    ENABLE_CFG_CACHE=1 \  # =1
    ENABLE_CFG_FILTERS=1 \  # =1
    ENABLE_CFG_HISTORY=1 \  # =1
    ENABLE_CFG_ICON=1 \  # =1
    ENABLE_CFG_JAVASCRIPTCORE=1 \  # =1
    ENABLE_CFG_LEVELDB=0 \  # =1  # WebCore
    ENABLE_CFG_NETWORK=1 \  # =1
    ENABLE_CFG_PLUGINS=1 \  # =1
    ENABLE_CFG_SQLITE3=1 \  # =1
    ENABLE_CFG_STORAGE=1 \  # =1
    ENABLE_CFG_TRANSFORMS=1 \  # =1

#
# These are in  # Dependences
#
# HERE DO NOT SWITCH ON
# NOT USE IN cfg_enable?() cfg_use?(), ONLY IN cfg_build?()
#
# from  features.pri  (ENABLE_*)
# from  Platform.h  (USE_*)
#    USE_3D_GRAPHICS=1 \  # =1  # WebCore, WebKit2, WebKit, widgetsapi, api, WebKit.pro
#    USE_CROSS_PLATFORM_CONTEXT_MENUS=0 \  # =1  # WebCore, WebKit2
#    USE_TEXTURE_MAPPER=1 \  # =1  # WebCore, WebKit2, WebKit, widgetsapi




# Only for qmake
CFG_BUILD_FEATURES = \  # = default value  # which block depend from it
    \
# By default we enable "production build", and build-webkit, which is
# used by bots and developers, will disable it, to enable warnings etc.
    CFG_BUILD_PRODUCTION_BUILD=1 \  # =1
    \
# build_
    CFG_BUILD_DRT=0 \  # =1
    CFG_BUILD_IMAGEDIFF=0 \  # =1
    CFG_BUILD_MINIBROWSER=0 \  # =1
    CFG_BUILD_QTTESTSUPPORT=0 \  # =1  # MiniBrowser
    CFG_BUILD_TEST_NPAPI=0 \  # =1
    CFG_BUILD_TESTBROWSER=0 \  # =1
    CFG_BUILD_TESTS=0 \  # =1
    CFG_BUILD_WEBKIT1=1 \  # =1  # WebKit2
    CFG_BUILD_WEBKIT2=0 \  # =1  # WebKit
    CFG_BUILD_WTR=0 \  # =1
    \
    CFG_BUILD_QT_EXAMPLES=0 \  # =1
    \
# use_
# All in one files reduce memory usage at link time. At compiler time the code
# visibility for the compiler increases and faster more compact code can be produced,
# so turn it on in production builds.
# CFG_BUILD_ALL_IN_ONE_FILES=0 -- less memory for compiling, more time for compiling (~25%)
    CFG_BUILD_ALL_IN_ONE_FILES=1 \  # =1  # WebCore
    CFG_BUILD_LIBXML2=0 \  # =1  # WebCore
    CFG_BUILD_TILED_BACKING_STORE=0 \  # =1  # WebCore, WebKit2, WebKit
    CFG_BUILD_WEBP=0 \  # =1
    CFG_BUILD_ZLIB=0 \  # =1  # WebCore
    \
# have_
    CFG_BUILD_QSTYLE=0 \  # =1
    CFG_BUILD_QTPOSITIONING=0 \  # =1  # WebKit2, WebKit
    CFG_BUILD_QTPRINTSUPPORT=0 \  # =1  # WebKit, widgetsapi, DumpRenderTree, QtTestBrowser
    CFG_BUILD_QTQUICK=0 \  # =1  # WebKit2, widgetsapi, QtWebKit.pro, tests, Tools.pro
    CFG_BUILD_QTSENSORS=0 \  # =1  # WebCore, WebKit2, WebKit
    CFG_BUILD_QTTESTLIB=0 \  # =1
    \
# See also in  # Dependences
# enable_
    CFG_BUILD_GAMEPAD=0 \  # =1
    CFG_BUILD_NETSCAPE_PLUGIN_API=0 \  # =1
    CFG_BUILD_VIDEO=0 \  # =1
    CFG_BUILD_WEBGL=0 \  # =1
    CFG_BUILD_XSLT=0 \  # =1
# See also in  # Dependences
# use_
    CFG_BUILD_3D_GRAPHICS=0 \  # =1
    CFG_BUILD_CROSS_PLATFORM_CONTEXT_MENUS=0 \  # =1
    CFG_BUILD_TEXTURE_MAPPER=0 \  # =1




# Will added to DEFINES if =1 without "=1"
CFG_MINIMAL_QT_DEFINES = \  # = default value  # which block depend from it
# from minimal_qt.prf
    QT_NO_BEARERMANAGEMENT=1 \  # =0  # WebCore, WebKit
    QT_NO_CLIPBOARD=1 \  # =0  # WebCore, WebKit2, WebKit
    QT_NO_COMBOBOX=1 \  # =0  # WebKit, QtTestBrowser
    QT_NO_CURSOR=1 \  # =0  # WebCore, WebKit
    QT_NO_DESKTOPSERVICES=1 \  # =0  # WebKit, QtTestBrowser
    QT_NO_FILEDIALOG=1 \  # =0  # WebKit, QtTestBrowser
    QT_NO_IM=1 \  # =0  # WebKit
    QT_NO_INPUTDIALOG=1 \  # =0  # WebKit, QtTestBrowser
    QT_NO_MESSAGEBOX=1 \  # =0  # WebKit, QtTestBrowser
    QT_NO_OPENSSL=1 \  # =0  # WebCore, WebKit, DumpRenderTreeQt
    QT_NO_PRINTER=1 \  # =0  # WebKit, QtTestBrowser, DumpRenderTreeQt
    QT_NO_SHORTCUT=1 \  # =0  # WebKit, QtTestBrowser
    QT_NO_STYLE_STYLESHEET=1 \  # =0  # WebKit
    QT_NO_SYSTEMTRAYICON=1 \  # =0  # WebKit
    QT_NO_TEMPORARYFILE=1 \  # =0  # WebCore
    QT_NO_TOOLTIP=1 \  # =0  # WebKit, QtTestBrowser
    QT_NO_UNDOCOMMAND=1 \  # =0  # WebKit
    QT_NO_UNDOSTACK=1 \  # =0  # WebKit, QtTestBrowser, DumpRenderTreeQt
    QT_NO_XRENDER=1 \  # =0  # WebCore
    \
    QT_NO_ANIMATION=1 \  # =0  # QtTestBrowser
    QT_NO_LINEEDIT=1 \  # =0  # QtTestBrowser
    \
# These are not used
    QT_NO_CONCURRENT=1 \  # =0
    QT_NO_CRASHHANDLER=1 \  # =0
    QT_NO_GRAPHICSEFFECT=1 \  # =0
    QT_NO_QUUID_STRING=1 \  # =0
    \
# From sources of WebKit
    QT_NO_ACCESSIBILITY=1 \  # =0  # WebKit
    QT_NO_COLORDIALOG=1 \  # =0  # WebKit
    QT_NO_GESTURES=1 \  # =0  # WebKit, DumpRenderTree
    QT_NO_GRAPHICSVIEW=1 \  # =0  # WebKit
    QT_NO_SPINBOX=1 \  # =0  # WebCore, WebKit
    QT_NO_SSL=1 \  # =0  # WebKit2


# compile errors
#    QT_NO_ACTION=0 \  # =0  # WebKit
# run errors
#    QT_NO_CONTEXTMENU=0 \  # =0  # WebKit
#    QT_NO_MENU=0 \  # =0  # WebKit
#    QT_NO_WHEELEVENT=0 \  # =0  # WebKit, DumpRenderTree
# run with problems
#    QT_NO_DRAGANDDROP=0 \  # =0  # WebKit




# Dependences

# for static build
contains(CONFIG, static) {
  CFG_FEATURE_DEFAULTS -= ENABLE_CFG_STATIC=0
  CFG_FEATURE_DEFAULTS += ENABLE_CFG_STATIC=1
} else {
  CFG_FEATURE_DEFAULTS -= ENABLE_CFG_STATIC=1
  CFG_FEATURE_DEFAULTS += ENABLE_CFG_STATIC=0
}



# from  Platform.h  (USE_*)

#    USE_3D_GRAPHICS=0 \  # =0  # WebCore, WebKit2, WebKit, widgetsapi, api, WebKit.pro
contains(CFG_BUILD_FEATURES, CFG_BUILD_3D_GRAPHICS=1) {
    CFG_FEATURE_DEFAULTS -= USE_3D_GRAPHICS=0
# See features.prf  #    CFG_FEATURE_DEFAULTS += USE_3D_GRAPHICS=1
} else {
    CFG_FEATURE_DEFAULTS -= USE_3D_GRAPHICS=1
    CFG_FEATURE_DEFAULTS += USE_3D_GRAPHICS=0
}

# Changed in Platform.h
#    USE_CROSS_PLATFORM_CONTEXT_MENUS=0 \  # =0  # WebCore, WebKit2
contains(CFG_BUILD_FEATURES, CFG_BUILD_CROSS_PLATFORM_CONTEXT_MENUS=1) {
    CFG_FEATURE_DEFAULTS -= USE_CROSS_PLATFORM_CONTEXT_MENUS=0
# See features.prf  #    CFG_FEATURE_DEFAULTS += USE_CROSS_PLATFORM_CONTEXT_MENUS=1
} else {
    CFG_FEATURE_DEFAULTS -= USE_CROSS_PLATFORM_CONTEXT_MENUS=1
    CFG_FEATURE_DEFAULTS += USE_CROSS_PLATFORM_CONTEXT_MENUS=0
}

# Changed in Platform.h
#    USE_TEXTURE_MAPPER=1 \  # =1  # WebCore, WebKit2, WebKit, widgetsapi
contains(CFG_BUILD_FEATURES, CFG_BUILD_TEXTURE_MAPPER=1) {
    CFG_FEATURE_DEFAULTS -= USE_TEXTURE_MAPPER=0
# See WebKit1.pri, widgetsapi.pri  #    CFG_FEATURE_DEFAULTS += USE_TEXTURE_MAPPER=1
} else {
    CFG_FEATURE_DEFAULTS -= USE_TEXTURE_MAPPER=1
    CFG_FEATURE_DEFAULTS += USE_TEXTURE_MAPPER=0
}



# for  cfg_config  (ENABLE_CFG_*)

# See also ENABLE_CFG_LEVELDB in CFG_FEATURE_DEFAULTS
contains(CFG_FEATURE_DEFAULTS, ENABLE_INDEXED_DATABASE=1) {
    CFG_FEATURE_DEFAULTS -= ENABLE_CFG_LEVELDB=0
    CFG_FEATURE_DEFAULTS += ENABLE_CFG_LEVELDB=1
}

# See also ENABLE_CFG_JAVASCRIPTCORE in CFG_FEATURE_DEFAULTS
contains(CFG_FEATURE_DEFAULTS, ENABLE_JAVASCRIPTCORE=1)|contains(CFG_FEATURE_DEFAULTS, ENABLE_JAVASCRIPT_DEBUGGER=1)|contains(CFG_FEATURE_DEFAULTS, ENABLE_JAVASCRIPT_I18N_API=1) {
    CFG_FEATURE_DEFAULTS -= ENABLE_CFG_JAVASCRIPTCORE=0
    CFG_FEATURE_DEFAULTS += ENABLE_CFG_JAVASCRIPTCORE=1
}

# See also ENABLE_CFG_SQLITE3 in CFG_FEATURE_DEFAULTS
contains(CFG_FEATURE_DEFAULTS, ENABLE_ICONDATABASE=1)|contains(CFG_FEATURE_DEFAULTS, ENABLE_SQL_DATABASE=1)|contains(CFG_FEATURE_DEFAULTS, ENABLE_SHARED_WORKERS=1)|contains(CFG_FEATURE_DEFAULTS, ENABLE_WORKERS=1) {
    CFG_FEATURE_DEFAULTS -= ENABLE_CFG_SQLITE3=0
    CFG_FEATURE_DEFAULTS += ENABLE_CFG_SQLITE3=1
#} else {
#    CFG_FEATURE_DEFAULTS -= ENABLE_CFG_SQLITE3=1
#    CFG_FEATURE_DEFAULTS += ENABLE_CFG_SQLITE3=0
}




# See these features in Platform.h and change them there, if you need.


# This is without  "#if !defined(...)"  , in fact are hard coded in Platform.h
###  Changed in Platform.h  ###
//#if PLATFORM(QT)
#if PLATFORM(QT) && !defined(WTF_USE_TEXTURE_MAPPER)
#WTF_USE_TEXTURE_MAPPER=1 \  # =1

### Changed in Platform.h  ###
#//#if PLATFORM(WIN)
#if PLATFORM(WIN) && !defined(WTF_USE_CROSS_PLATFORM_CONTEXT_MENUS)
#WTF_USE_CROSS_PLATFORM_CONTEXT_MENUS=1 \  # =1  # WebCore, WebKit2


# This is without  "#if !defined(...)"  , in fact are hard coded in Platform.h
#if USE(3D_GRAPHICS) && PLATFORM(QT)
#WTF_USE_COORDINATED_GRAPHICS=1 \  # =1  # WebCore, WebKit2

# These are without conditions, hard coded in Platform.h
#ENABLE_DEBUG_WITH_BREAKPOINT=0 \  # =0  # JavaScriptCore
#ENABLE_OBJECT_MARK_LOGGING=0 \  # =0  # JavaScriptCore
#ENABLE_REGEXP_TRACING=0 \  # =0  # JavaScriptCore
#WTF_USE_GRAMMAR_CHECKING=1 \  # =1  # WebCore

# These are without  "#if !defined(...)"  , in fact are hard coded in Platform.h
#WTF_USE_ACCELERATED_COMPOSITING=1 \  # =1  # WebCore, WebKit2, WebKit
#WTF_USE_ACCESSIBILITY_CONTEXT_MENUS=1 \  # =1  # WebCore, WebKit2
#WTF_USE_AUTOMATIC_TEXT_REPLACEMENT=1 \  # =1  # WebCore, WebKit2

#WTF_USE_COREAUDIO=1 \  # =1  # WebCore
#WTF_USE_COREMEDIA=1 \  # =1  # WebCore
#WTF_USE_UNIFIED_TEXT_CHECKING=1 \  # =1  # WebCore, WebKit2




cfg_dwarning(leaving cfg_config.pri)
