# -------------------------------------------------------------------
# Global configure options for WebKit
#
# See 'Tools/qmake/README' for an overview of the build system
# -------------------------------------------------------------------

dwarning(entering cfg_config.pri)

# warn when multiply included
contains (CFG_CONFIG_PRI_INCLUDED, cfg_config_file_included) {
    warning (multiple inclusion of cfg_config.pri)
}
CFG_CONFIG_PRI_INCLUDED += cfg_config_file_included


# For qmake and will added to DEFINES
CFG_FEATURE_DEFAULTS = \
# from features.pri
    CFG_ENABLE_3D_RENDERING=1 \
    CFG_ENABLE_ACCELERATED_2D_CANVAS=0 \
    CFG_ENABLE_BATTERY_STATUS=0 \
    CFG_ENABLE_BLOB=1 \
    CFG_ENABLE_CANVAS_PATH=1 \
    CFG_ENABLE_CANVAS_PROXY=0 \
    CFG_ENABLE_CHANNEL_MESSAGING=1 \
    CFG_ENABLE_CSP_NEXT=0 \
    CFG_ENABLE_CSS_BOX_DECORATION_BREAK=1 \
    CFG_ENABLE_CSS_COMPOSITING=1 \
    CFG_ENABLE_CSS_EXCLUSIONS=1 \
    CFG_ENABLE_CSS_FILTERS=1 \
    CFG_ENABLE_CSS_GRID_LAYOUT=0 \
    CFG_ENABLE_CSS_HIERARCHIES=0 \
    CFG_ENABLE_CSS_IMAGE_ORIENTATION=0 \
    CFG_ENABLE_CSS_IMAGE_RESOLUTION=0 \
    CFG_ENABLE_CSS_IMAGE_SET=1 \
    CFG_ENABLE_CSS_REGIONS=1 \
    CFG_ENABLE_CSS_SHADERS=0 \
    CFG_ENABLE_CSS_SHAPES=1 \
    CFG_ENABLE_CSS_STICKY_POSITION=1 \
    CFG_ENABLE_CSS_TRANSFORMS_ANIMATIONS_UNPREFIXED=1 \
    CFG_ENABLE_CSS_VARIABLES=0 \
    CFG_ENABLE_CSS3_CONDITIONAL_RULES=0 \
    CFG_ENABLE_CSS3_TEXT=0 \
    CFG_ENABLE_CSS3_TEXT_LINE_BREAK=0 \
    CFG_ENABLE_DASHBOARD_SUPPORT=0 \
    CFG_ENABLE_DATAGRID=0 \
    CFG_ENABLE_DATALIST_ELEMENT=1 \
    CFG_ENABLE_DATA_TRANSFER_ITEMS=0 \
    CFG_ENABLE_DETAILS_ELEMENT=1 \
    CFG_ENABLE_DEVICE_ORIENTATION=1 \
    CFG_ENABLE_DIRECTORY_UPLOAD=0 \
    CFG_ENABLE_DOWNLOAD_ATTRIBUTE=1 \
    CFG_ENABLE_FAST_MOBILE_SCROLLING=1 \
    CFG_ENABLE_FILE_SYSTEM=0 \
    CFG_ENABLE_FILTERS=1 \
    CFG_ENABLE_FONT_LOAD_EVENTS=0 \
    CFG_ENABLE_FTPDIR=1 \
    CFG_ENABLE_FULLSCREEN_API=1 \
    CFG_ENABLE_GAMEPAD=0 \
    CFG_ENABLE_GEOLOCATION=1 \
    CFG_ENABLE_GESTURE_EVENTS=1 \
    CFG_ENABLE_HIGH_DPI_CANVAS=0 \
    CFG_ENABLE_ICONDATABASE=1 \
    CFG_ENABLE_IFRAME_SEAMLESS=1 \
    CFG_ENABLE_INDEXED_DATABASE=1 \
    CFG_ENABLE_INPUT_SPEECH=0 \
    CFG_ENABLE_INPUT_TYPE_COLOR=1 \
    CFG_ENABLE_INPUT_TYPE_DATE=0 \
    CFG_ENABLE_INPUT_TYPE_DATETIME_INCOMPLETE=0 \
    CFG_ENABLE_INPUT_TYPE_DATETIMELOCAL=0 \
    CFG_ENABLE_INPUT_TYPE_MONTH=0 \
    CFG_ENABLE_INPUT_TYPE_TIME=0 \
    CFG_ENABLE_INPUT_TYPE_WEEK=0 \
    CFG_ENABLE_INSPECTOR=1 \
    CFG_ENABLE_INSPECTOR_SERVER=1 \
    CFG_ENABLE_JAVASCRIPT_DEBUGGER=1 \
    CFG_ENABLE_LEGACY_CSS_VENDOR_PREFIXES=0 \
    CFG_ENABLE_LEGACY_NOTIFICATIONS=1 \
    CFG_ENABLE_LEGACY_VIEWPORT_ADAPTION=1 \
    CFG_ENABLE_LEGACY_VENDOR_PREFIXES=1 \
    CFG_ENABLE_LEGACY_WEB_AUDIO=1 \
    CFG_ENABLE_LINK_PREFETCH=1 \
    CFG_ENABLE_MATHML=0 \
    CFG_ENABLE_MEDIA_SOURCE=0 \
    CFG_ENABLE_MEDIA_STATISTICS=0 \
    CFG_ENABLE_MEDIA_STREAM=0 \
    CFG_ENABLE_METER_ELEMENT=1 \
    CFG_ENABLE_MHTML=1 \
    CFG_ENABLE_MICRODATA=0 \
    CFG_ENABLE_MOUSE_CURSOR_SCALE=0 \
    CFG_ENABLE_NAVIGATOR_CONTENT_UTILS=0 \
    CFG_ENABLE_NETSCAPE_PLUGIN_API=0 \
    CFG_ENABLE_NETWORK_INFO=0 \
    CFG_ENABLE_NOSNIFF=0 \
    CFG_ENABLE_NOTIFICATIONS=1 \
    CFG_ENABLE_ORIENTATION_EVENTS=1 \
    CFG_ENABLE_PAGE_VISIBILITY_API=1 \
    CFG_ENABLE_PROGRESS_ELEMENT=1 \
    CFG_ENABLE_PROXIMITY_EVENTS=0 \
    CFG_ENABLE_QUOTA=0 \
    CFG_ENABLE_RESOLUTION_MEDIA_QUERY=1 \
    CFG_ENABLE_RESOURCE_TIMING=0 \
    CFG_ENABLE_REQUEST_ANIMATION_FRAME=1 \
    CFG_ENABLE_SCRIPTED_SPEECH=0 \
    CFG_ENABLE_SECCOMP_FILTERS=0 \
    CFG_ENABLE_SHADOW_DOM=0 \
    CFG_ENABLE_SHARED_WORKERS=1 \
    CFG_ENABLE_SMOOTH_SCROLLING=1 \
    CFG_ENABLE_SQL_DATABASE=1 \
    CFG_ENABLE_STYLE_SCOPED=0 \
    CFG_ENABLE_SUBPIXEL_LAYOUT=1 \
    CFG_ENABLE_SVG=1 \
    CFG_ENABLE_SVG_FONTS=1 \
    CFG_ENABLE_TEMPLATE_ELEMENT=0 \
    CFG_ENABLE_TEXT_AUTOSIZING=0 \
    CFG_ENABLE_THREADED_HTML_PARSER=0 \
    CFG_ENABLE_TOUCH_ADJUSTMENT=1 \
    CFG_ENABLE_TOUCH_EVENTS=1 \
    CFG_ENABLE_TOUCH_ICON_LOADING=0 \
    CFG_ENABLE_USER_TIMING=0 \
    CFG_ENABLE_VIBRATION=0 \
    CFG_ENABLE_VIDEO=0 \
    CFG_ENABLE_VIDEO_TRACK=1 \
    CFG_ENABLE_VIEW_MODE_CSS_MEDIA=1 \
    CFG_ENABLE_WEBGL=0 \
    CFG_ENABLE_WEB_AUDIO=0 \
    CFG_ENABLE_WEB_SOCKETS=1 \
    CFG_ENABLE_WEB_TIMING=1 \
    CFG_ENABLE_WORKERS=1 \
    CFG_ENABLE_XHR_TIMEOUT=1 \
    CFG_ENABLE_XSLT=0 \
# from FeatureDefines.h
    CFG_ENABLE_8BIT_TEXTRUN=0 \
    CFG_ENABLE_ACCELERATED_OVERFLOW_SCROLLING=0 \
    CFG_ENABLE_CONTEXT_MENUS=1 \
    CFG_ENABLE_CSS_DEVICE_ADAPTATION=0 \
    CFG_ENABLE_CSS_TRANSFORMS_ANIMATIONS_TRANSITIONS_UNPREFIXED=0 \
    CFG_ENABLE_CUSTOM_SCHEME_HANDLER=0 \
    CFG_ENABLE_DELETION_UI=0 \
    CFG_ENABLE_DIALOG_ELEMENT=0 \
    CFG_ENABLE_DRAGGABLE_REGION=0 \
    CFG_ENABLE_DRAG_SUPPORT=1 \
    CFG_ENABLE_ENCRYPTED_MEDIA=0 \
    CFG_ENABLE_ENCRYPTED_MEDIA_V2=0 \
    CFG_ENABLE_GLIB_SUPPORT=0 \
    CFG_ENABLE_HIDDEN_PAGE_DOM_TIMER_THROTTLING=0 \
    CFG_ENABLE_IMAGE_DECODER_DOWN_SAMPLING=0 \
# This is here only for switch off, not for switch on.
# For switch on made it in FeatureDefines.h
#    CFG_ENABLE_DATE_AND_TIME_INPUT_TYPES=0 \
    CFG_ENABLE_JAVASCRIPT_I18N_API=0 \
    CFG_ENABLE_MEDIA_CAPTURE=0 \
    CFG_ENABLE_NETSCAPE_PLUGIN_METADATA_CACHE=0 \
    CFG_ENABLE_OBJECT_MARK_LOGGING=0 \
    CFG_ENABLE_OPENCL=0 \
    CFG_ENABLE_OPENTYPE_VERTICAL=0 \
# This is here only for switch off, not for switch on.
# For switch on made it in FeatureDefines.h
#    CFG_ENABLE_PAN_SCROLLING=0 \
    CFG_ENABLE_PLUGIN_PACKAGE_SIMPLE_HASH=0 \
    CFG_ENABLE_PLUGIN_PROXY_FOR_VIDEO=0 \
    CFG_ENABLE_POINTER_LOCK=0 \
    CFG_ENABLE_REPAINT_THROTTLING=0 \
    CFG_ENABLE_RUBBER_BANDING=0 \
    CFG_ENABLE_SATURATED_LAYOUT_ARITHMETIC=0 \
    CFG_ENABLE_SPEECH_SYNTHESIS=0 \
    CFG_ENABLE_SPELLCHECK=0 \
    CFG_ENABLE_TEXT_CARET=1 \
    CFG_ENABLE_THREADED_SCROLLING=0 \
    CFG_ENABLE_VIEWPORT=0 \
    CFG_ENABLE_VIEWSOURCE_ATTRIBUTE=1 \
    CFG_ENABLE_WEB_ARCHIVE=0 \
# from Platform.h
#    CFG_USE_3D_GRAPHICS=1 \
# This is here only for switch off, not for switch on.
# For switch on made it in Platform.h
#    CFG_USE_TEXTURE_MAPPER_GL=0 \
# This is here only for switch off, not for switch on.
# For switch on made it in Platform.h
#    CFG_ENABLE_JIT=0 \


# See these features in Platform.h and change them there, if you need.
#
# This is without  "#if !defined(...)"  , in fact are hard coded in Platform.h
#if USE(3D_GRAPHICS) && PLATFORM(QT)
#WTF_USE_COORDINATED_GRAPHICS=1 \
#
# This is without  "#if !defined(...)"  , in fact are hard coded in Platform.h
#if PLATFORM(QT)
#WTF_USE_TEXTURE_MAPPER=1 \
#
# These are without conditions, hard coded in Platform.h
#ENABLE_DEBUG_WITH_BREAKPOINT=0 \
#ENABLE_OBJECT_MARK_LOGGING=0 \
#ENABLE_REGEXP_TRACING=0 \
#WTF_USE_GRAMMAR_CHECKING=1 \
#
# These are without  "#if !defined(...)"  , in fact are hard coded in Platform.h
#WTF_USE_ACCELERATED_COMPOSITING=1 \
#WTF_USE_ACCESSIBILITY_CONTEXT_MENUS=1 \
#WTF_USE_AUTOMATIC_TEXT_REPLACEMENT=1 \
#WTF_USE_CROSS_PLATFORM_CONTEXT_MENUS=1 \
#WTF_USE_COREAUDIO=1 \
#WTF_USE_COREMEDIA=1 \
#WTF_USE_UNIFIED_TEXT_CHECKING=1 \


dwarning(CFG_FEATURE_DEFAULTS = $$CFG_FEATURE_DEFAULTS)


# Only for qmake
CFG_FEATURES = $$CFG_FEATURE_DEFAULTS \
# By default we enable "production build", and build-webkit, which is
# used by bots and developers, will disable it, to enable warnings etc.
    CFG_BUILD_PRODUCTION_BUILD=1 \
    CFG_BUILD_INCLUDE_WEBINSPECTOR=1 \
    CFG_BUILD_LANGUAGE_JAVASCRIPT=1 \
    CFG_BUILD_TILED_BACKING_STORE=1 \
# see also  WTF_USE_CROSS_PLATFORM_CONTEXT_MENUS
    CFG_BUILD_CROSS_PLATFORM_CONTEXT_MENUS=1 \
    CFG_BUILD_QTQUICK=1 \
    CFG_BUILD_QTPRINTSUPPORT=1 \
    CFG_BUILD_QSTYLE=1 \
    CFG_BUILD_QTTESTLIB=1 \
    CFG_BUILD_QTPOSITIONING=1 \
    CFG_BUILD_QTSENSORS=1 \
    CFG_BUILD_LIBXML2=1 \
# see also  CFG_ENABLE_XSLT
    CFG_BUILD_XSLT=1 \
    CFG_BUILD_ZLIB=1 \
    CFG_BUILD_WEBP=1 \
    CFG_BUILD_SYSTEM_LEVELDB=1 \
# see also  CFG_ENABLE_NETSCAPE_PLUGIN_API
    CFG_BUILD_NETSCAPE_PLUGIN_API=1 \
# see also  CFG_ENABLE_VIDEO
    CFG_BUILD_VIDEO=1 \
# see also  CFG_ENABLE_GAMEPAD
    CFG_BUILD_GAMEPAD=1 \
    CFG_BUILD_SQLITE3=1 \
# see also  CFG_USE_3D_GRAPHICS
    CFG_BUILD_3D_GRAPHICS=1 \
# see also  CFG_ENABLE_WEBGL
    CFG_BUILD_WEBGL=1 \
# if CFG_BUILD_PRODUCTION_BUILD=1 {
    CFG_BUILD_DRT=1 \
    CFG_BUILD_WTR=1 \
    CFG_BUILD_IMAGEDIFF=1 \
    CFG_BUILD_TEST_NPAPI=1 \
    CFG_BUILD_TESTBROWSER=1 \
    CFG_BUILD_MINIBROWSER=1 \
    CFG_BUILD_QTTESTSUPPORT=1 \
    CFG_BUILD_TESTS=1 \
# } (if CFG_BUILD_PRODUCTION_BUILD=1)
    CFG_BUILD_WEBKIT1=1 \
    CFG_BUILD_WEBKIT2=1 \

dwarning(CFG_FEATURES = $$CFG_FEATURES)


dwarning (leaving cfg_config.pri)
