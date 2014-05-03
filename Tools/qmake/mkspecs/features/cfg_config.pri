# -------------------------------------------------------------------
# Global configure options for WebKit
#
# See 'Tools/qmake/README' for an overview of the build system
# -------------------------------------------------------------------


dwarning(entering cfg_config.pri)


# warn when multiply included
contains (CFG_CONFIG_PRI_INCLUDED, cfg_config_file_included) {
    dwarning (multiple inclusion of cfg_config.pri)
}
CFG_CONFIG_PRI_INCLUDED += cfg_config_file_included




# For qmake and will added to DEFINES
CFG_FEATURE_DEFAULTS = \  # = default value
# from features.pri
    CFG_ENABLE_3D_RENDERING=1 \  # =1
    CFG_ENABLE_ACCELERATED_2D_CANVAS=1 \  # =0
    CFG_ENABLE_BATTERY_STATUS=1 \  # =0
    CFG_ENABLE_BLOB=1 \  # =1
    CFG_ENABLE_CANVAS_PATH=1 \  # =1
    CFG_ENABLE_CANVAS_PROXY=1 \  # =0
    CFG_ENABLE_CHANNEL_MESSAGING=1 \  # =1
    CFG_ENABLE_CSP_NEXT=1 \  # =0
    CFG_ENABLE_CSS_BOX_DECORATION_BREAK=1 \  # =1
    CFG_ENABLE_CSS_COMPOSITING=1 \  # =1
    CFG_ENABLE_CSS_EXCLUSIONS=1 \  # =1
    CFG_ENABLE_CSS_FILTERS=1 \  # =1
    CFG_ENABLE_CSS_GRID_LAYOUT=1 \  # =0
    CFG_ENABLE_CSS_HIERARCHIES=1 \  # =0
    CFG_ENABLE_CSS_IMAGE_ORIENTATION=1 \  # =0
    CFG_ENABLE_CSS_IMAGE_RESOLUTION=1 \  # =0
    CFG_ENABLE_CSS_IMAGE_SET=1 \  # =1
    CFG_ENABLE_CSS_REGIONS=1 \  # =1
    CFG_ENABLE_CSS_SHADERS=1 \  # =0
    CFG_ENABLE_CSS_SHAPES=1 \  # =1
    CFG_ENABLE_CSS_STICKY_POSITION=1 \  # =1
    CFG_ENABLE_CSS_TRANSFORMS_ANIMATIONS_UNPREFIXED=1 \  # =1
    CFG_ENABLE_CSS_VARIABLES=1 \  # =0
    CFG_ENABLE_CSS3_CONDITIONAL_RULES=1 \  # =0
    CFG_ENABLE_CSS3_TEXT=1 \  # =0
    CFG_ENABLE_CSS3_TEXT_LINE_BREAK=1 \  # =0
    CFG_ENABLE_DASHBOARD_SUPPORT=1 \  # =0
    CFG_ENABLE_DATAGRID=1 \  # =0
    CFG_ENABLE_DATALIST_ELEMENT=1 \  # =1
    CFG_ENABLE_DATA_TRANSFER_ITEMS=1 \  # =0
    CFG_ENABLE_DETAILS_ELEMENT=1 \  # =1
    CFG_ENABLE_DEVICE_ORIENTATION=1 \  # =1
    CFG_ENABLE_DIRECTORY_UPLOAD=1 \  # =0
    CFG_ENABLE_DOWNLOAD_ATTRIBUTE=1 \  # =1
    CFG_ENABLE_FAST_MOBILE_SCROLLING=1 \  # =1
    CFG_ENABLE_FILE_SYSTEM=1 \  # =0
    CFG_ENABLE_FILTERS=1 \  # =1
    CFG_ENABLE_FONT_LOAD_EVENTS=1 \  # =0
    CFG_ENABLE_FTPDIR=1 \  # =1
    CFG_ENABLE_FULLSCREEN_API=1 \  # =1
    CFG_ENABLE_GAMEPAD=1 \  # =0
    CFG_ENABLE_GEOLOCATION=1 \  # =1
    CFG_ENABLE_GESTURE_EVENTS=1 \  # =1
    CFG_ENABLE_HIGH_DPI_CANVAS=1 \  # =0
    CFG_ENABLE_ICONDATABASE=1 \  # =1
    CFG_ENABLE_IFRAME_SEAMLESS=1 \  # =1
    CFG_ENABLE_INDEXED_DATABASE=1 \  # =1
    CFG_ENABLE_INPUT_SPEECH=1 \  # =0
    CFG_ENABLE_INPUT_TYPE_COLOR=1 \  # =1
    CFG_ENABLE_INPUT_TYPE_DATE=1 \  # =0
    CFG_ENABLE_INPUT_TYPE_DATETIME_INCOMPLETE=1 \  # =0
    CFG_ENABLE_INPUT_TYPE_DATETIMELOCAL=1 \  # =0
    CFG_ENABLE_INPUT_TYPE_MONTH=1 \  # =0
    CFG_ENABLE_INPUT_TYPE_TIME=1 \  # =0
    CFG_ENABLE_INPUT_TYPE_WEEK=1 \  # =0
    CFG_ENABLE_INSPECTOR=1 \  # =1
    CFG_ENABLE_INSPECTOR_SERVER=1 \  # =1
    CFG_ENABLE_JAVASCRIPT_DEBUGGER=1 \  # =1
    CFG_ENABLE_LEGACY_CSS_VENDOR_PREFIXES=1 \  # =0
    CFG_ENABLE_LEGACY_NOTIFICATIONS=1 \  # =1
    CFG_ENABLE_LEGACY_VIEWPORT_ADAPTION=1 \  # =1
    CFG_ENABLE_LEGACY_VENDOR_PREFIXES=1 \  # =1
    CFG_ENABLE_LEGACY_WEB_AUDIO=1 \  # =1
    CFG_ENABLE_LINK_PREFETCH=1 \  # =1
    CFG_ENABLE_MATHML=1 \  # =0
    CFG_ENABLE_MEDIA_SOURCE=1 \  # =0
    CFG_ENABLE_MEDIA_STATISTICS=1 \  # =0
    CFG_ENABLE_MEDIA_STREAM=1 \  # =0
    CFG_ENABLE_METER_ELEMENT=1 \  # =1
    CFG_ENABLE_MHTML=1 \  # =1
    CFG_ENABLE_MICRODATA=1 \  # =0
    CFG_ENABLE_MOUSE_CURSOR_SCALE=1 \  # =0
    CFG_ENABLE_NAVIGATOR_CONTENT_UTILS=1 \  # =0
    CFG_ENABLE_NETSCAPE_PLUGIN_API=1 \  # =0
    CFG_ENABLE_NETWORK_INFO=1 \  # =0
    CFG_ENABLE_NOSNIFF=1 \  # =0
    CFG_ENABLE_NOTIFICATIONS=1 \  # =1
    CFG_ENABLE_ORIENTATION_EVENTS=1 \  # =1
    CFG_ENABLE_PAGE_VISIBILITY_API=1 \  # =1
    CFG_ENABLE_PROGRESS_ELEMENT=1 \  # =1
    CFG_ENABLE_PROXIMITY_EVENTS=1 \  # =0
    CFG_ENABLE_QUOTA=1 \  # =0
    CFG_ENABLE_RESOLUTION_MEDIA_QUERY=1 \  # =1
    CFG_ENABLE_RESOURCE_TIMING=1 \  # =0
    CFG_ENABLE_REQUEST_ANIMATION_FRAME=1 \  # =1
    CFG_ENABLE_SCRIPTED_SPEECH=1 \  # =0
    CFG_ENABLE_SECCOMP_FILTERS=1 \  # =0
    CFG_ENABLE_SHADOW_DOM=1 \  # =0
    CFG_ENABLE_SHARED_WORKERS=1 \  # =1
    CFG_ENABLE_SMOOTH_SCROLLING=1 \  # =1
    CFG_ENABLE_SQL_DATABASE=1 \  # =1
    CFG_ENABLE_STYLE_SCOPED=1 \  # =0
    CFG_ENABLE_SUBPIXEL_LAYOUT=1 \  # =1
    CFG_ENABLE_SVG=1 \  # =1
    CFG_ENABLE_SVG_FONTS=1 \  # =1
    CFG_ENABLE_TEMPLATE_ELEMENT=1 \  # =0
    CFG_ENABLE_TEXT_AUTOSIZING=1 \  # =0
    CFG_ENABLE_THREADED_HTML_PARSER=1 \  # =0
    CFG_ENABLE_TOUCH_ADJUSTMENT=1 \  # =1
    CFG_ENABLE_TOUCH_EVENTS=1 \  # =1
    CFG_ENABLE_TOUCH_ICON_LOADING=1 \  # =0
    CFG_ENABLE_USER_TIMING=1 \  # =0
    CFG_ENABLE_VIBRATION=1 \  # =0
    CFG_ENABLE_VIDEO=1 \  # =0
    CFG_ENABLE_VIDEO_TRACK=1 \  # =1
    CFG_ENABLE_VIEW_MODE_CSS_MEDIA=1 \  # =1
    CFG_ENABLE_WEBGL=1 \  # =0
    CFG_ENABLE_WEB_AUDIO=1 \  # =0
    CFG_ENABLE_WEB_SOCKETS=1 \  # =1
    CFG_ENABLE_WEB_TIMING=1 \  # =1
    CFG_ENABLE_WORKERS=1 \  # =1
    CFG_ENABLE_XHR_TIMEOUT=1 \  # =1
    CFG_ENABLE_XSLT=1 \  # =0
# from FeatureDefines.h
    CFG_ENABLE_8BIT_TEXTRUN=1 \  # =0
    CFG_ENABLE_ACCELERATED_OVERFLOW_SCROLLING=1 \  # =0
    CFG_ENABLE_CONTEXT_MENUS=1 \  # =1
    CFG_ENABLE_CSS_DEVICE_ADAPTATION=1 \  # =0
    CFG_ENABLE_CSS_TRANSFORMS_ANIMATIONS_TRANSITIONS_UNPREFIXED=1 \  # =0
    CFG_ENABLE_CUSTOM_SCHEME_HANDLER=1 \  # =0
    CFG_ENABLE_DELETION_UI=1 \  # =0
    CFG_ENABLE_DIALOG_ELEMENT=1 \  # =0
    CFG_ENABLE_DRAGGABLE_REGION=1 \  # =0
    CFG_ENABLE_DRAG_SUPPORT=1 \  # =1
    CFG_ENABLE_ENCRYPTED_MEDIA=1 \  # =0
    CFG_ENABLE_ENCRYPTED_MEDIA_V2=1 \  # =0
    CFG_ENABLE_GLIB_SUPPORT=1 \  # =0
    CFG_ENABLE_HIDDEN_PAGE_DOM_TIMER_THROTTLING=1 \  # =0
    CFG_ENABLE_IMAGE_DECODER_DOWN_SAMPLING=1 \  # =0
    \
# This is here only for switch off, not for switch on.
# For switch on made it in FeatureDefines.h
#    CFG_ENABLE_DATE_AND_TIME_INPUT_TYPES=0 \  # =0
    \
    CFG_ENABLE_JAVASCRIPT_I18N_API=1 \  # =0
    CFG_ENABLE_MEDIA_CAPTURE=1 \  # =0
    CFG_ENABLE_NETSCAPE_PLUGIN_METADATA_CACHE=1 \  # =0
    CFG_ENABLE_OBJECT_MARK_LOGGING=1 \  # =0
    CFG_ENABLE_OPENCL=1 \  # =0
    CFG_ENABLE_OPENTYPE_VERTICAL=1 \  # =0
    \
# This is here only for switch off, not for switch on.
# For switch on made it in FeatureDefines.h
#    CFG_ENABLE_PAN_SCROLLING=0 \  # =0
    \
    CFG_ENABLE_PLUGIN_PACKAGE_SIMPLE_HASH=1 \  # =0
    CFG_ENABLE_PLUGIN_PROXY_FOR_VIDEO=1 \  # =0
    CFG_ENABLE_POINTER_LOCK=1 \  # =0
    CFG_ENABLE_REPAINT_THROTTLING=1 \  # =0
    CFG_ENABLE_RUBBER_BANDING=1 \  # =0
    CFG_ENABLE_SATURATED_LAYOUT_ARITHMETIC=1 \  # =0
    CFG_ENABLE_SPEECH_SYNTHESIS=1 \  # =0
    CFG_ENABLE_SPELLCHECK=1 \  # =0
    CFG_ENABLE_TEXT_CARET=1 \  # =1
    CFG_ENABLE_THREADED_SCROLLING=1 \  # =0
    CFG_ENABLE_VIEWPORT=1 \  # =0
    CFG_ENABLE_VIEWSOURCE_ATTRIBUTE=1 \  # =1
    CFG_ENABLE_WEB_ARCHIVE=1 \  # =0
# from Platform.h
#    CFG_USE_3D_GRAPHICS=1 \  # =1
    \
# This is here only for switch off, not for switch on.
# For switch on made it in Platform.h
#    CFG_USE_TEXTURE_MAPPER_GL=0 \  # =0
    \
# This is here only for switch off, not for switch on.
# For switch on made it in Platform.h
#    CFG_ENABLE_JIT=0 \  # =0
    \
# Changed in Platform.h
    CFG_USE_TEXTURE_MAPPER=1 \  # =1
    \
    CFG_ENABLE_JAVASCRIPTCORE=1 \  # =1




# See these features in Platform.h and change them there, if you need.
#
# This is without  "#if !defined(...)"  , in fact are hard coded in Platform.h
#if USE(3D_GRAPHICS) && PLATFORM(QT)
#WTF_USE_COORDINATED_GRAPHICS=1 \  # =1
#
# This is without  "#if !defined(...)"  , in fact are hard coded in Platform.h
#if PLATFORM(QT)
# Changed in Platform.h
#if PLATFORM(QT) && !defined(WTF_USE_TEXTURE_MAPPER)
#WTF_USE_TEXTURE_MAPPER=1 \  # =1
#
# These are without conditions, hard coded in Platform.h
#ENABLE_DEBUG_WITH_BREAKPOINT=0 \  # =0
#ENABLE_OBJECT_MARK_LOGGING=0 \  # =0
#ENABLE_REGEXP_TRACING=0 \  # =0
#WTF_USE_GRAMMAR_CHECKING=1 \  # =1
#
# These are without  "#if !defined(...)"  , in fact are hard coded in Platform.h
#WTF_USE_ACCELERATED_COMPOSITING=1 \  # =1
#WTF_USE_ACCESSIBILITY_CONTEXT_MENUS=1 \  # =1
#WTF_USE_AUTOMATIC_TEXT_REPLACEMENT=1 \  # =1
#WTF_USE_CROSS_PLATFORM_CONTEXT_MENUS=1 \  # =1
#WTF_USE_COREAUDIO=1 \  # =1
#WTF_USE_COREMEDIA=1 \  # =1
#WTF_USE_UNIFIED_TEXT_CHECKING=1 \  # =1




# Only for qmake
CFG_BUILD_FEATURES = \  # = default value
    \
# By default we enable "production build", and build-webkit, which is
# used by bots and developers, will disable it, to enable warnings etc.
    CFG_BUILD_PRODUCTION_BUILD=1 \  # =1
    \
# see also  CFG_USE_3D_GRAPHICS
    CFG_BUILD_3D_GRAPHICS=1 \  # =1
# see also  WTF_USE_CROSS_PLATFORM_CONTEXT_MENUS
    CFG_BUILD_CROSS_PLATFORM_CONTEXT_MENUS=1 \  # =1
    CFG_BUILD_DRT=1 \  # =1
    CFG_BUILD_GAMEPAD=1 \  # =1
    CFG_BUILD_IMAGEDIFF=1 \  # =1
    CFG_BUILD_INCLUDE_WEBINSPECTOR=1 \  # =1
    CFG_BUILD_LEVELDB=1 \  # =1
    CFG_BUILD_LIBXML2=1 \  # =1
    CFG_BUILD_MINIBROWSER=1 \  # =1
    CFG_BUILD_NETSCAPE_PLUGIN_API=1 \  # =1
    CFG_BUILD_QSTYLE=1 \  # =1
    CFG_BUILD_QTPOSITIONING=1 \  # =1
    CFG_BUILD_QTPRINTSUPPORT=1 \  # =1
    CFG_BUILD_QTQUICK=1 \  # =1
    CFG_BUILD_QTSENSORS=1 \  # =1
    CFG_BUILD_QTTESTLIB=1 \  # =1
    CFG_BUILD_QTTESTSUPPORT=1 \  # =1
    CFG_BUILD_TEST_NPAPI=1 \  # =1
    CFG_BUILD_TESTBROWSER=1 \  # =1
    CFG_BUILD_TESTS=1 \  # =1
    CFG_BUILD_TEXTURE_MAPPER=1 \  # =1
    CFG_BUILD_TILED_BACKING_STORE=1 \  # =1
    CFG_BUILD_VIDEO=1 \  # =1
    CFG_BUILD_WEBGL=1 \  # =1
    CFG_BUILD_WEBKIT1=1 \  # =1
    CFG_BUILD_WEBKIT2=1 \  # =1
    CFG_BUILD_WEBP=1 \  # =1
    CFG_BUILD_WTR=1 \  # =1
    CFG_BUILD_XSLT=1 \  # =1
    CFG_BUILD_ZLIB=1 \  # =1
    \
    CFG_BUILD_CACHE=1 \  # =1
    CFG_BUILD_EXAMPLES=1 \  # =1
    CFG_BUILD_FILTERS=1 \  # =1
    CFG_BUILD_HISTORY=1 \  # =1
    CFG_BUILD_ICON=1 \  # =1
    CFG_BUILD_JAVASCRIPTCORE=1 \  # =1
    CFG_BUILD_NETWORK=1 \  # =1
    CFG_BUILD_PLUGINS=1 \  # =1
    CFG_BUILD_SQLITE3=1 \  # =1
    CFG_BUILD_STORAGE=1 \  # =1
    CFG_BUILD_TRANSFORMS=1 \  # =1




# Will added to DEFINES if =1 without "=1"
CFG_MINIMAL_QT_DEFINES *= \  # = default value
# from minimal_qt.prf
    QT_NO_ANIMATION=0 \  # =0
    QT_NO_BEARERMANAGEMENT=0 \  # =0
    QT_NO_CLIPBOARD=0 \  # =0
    QT_NO_COMBOBOX=0 \  # =0
    QT_NO_CURSOR=0 \  # =0
    QT_NO_DESKTOPSERVICES=0 \  # =0
    QT_NO_FILEDIALOG=0 \  # =0
    QT_NO_IM=0 \  # =0
    QT_NO_INPUTDIALOG=0 \  # =0
    QT_NO_LINEEDIT=0 \  # =0
    QT_NO_MESSAGEBOX=0 \  # =0
    QT_NO_OPENSSL=0 \  # =0
    QT_NO_PRINTER=0 \  # =0
    QT_NO_SHORTCUT=0 \  # =0
    QT_NO_STYLE_STYLESHEET=0 \  # =0
    QT_NO_SYSTEMTRAYICON=0 \  # =0
    QT_NO_TEMPORARYFILE=0 \  # =0
    QT_NO_TOOLTIP=0 \  # =0
    QT_NO_UNDOCOMMAND=0 \  # =0
    QT_NO_UNDOSTACK=0 \  # =0
    QT_NO_XRENDER=0 \  # =0
    \
# These are not used
    QT_NO_CONCURRENT=0 \  # =0
    QT_NO_CRASHHANDLER=0 \  # =0
    QT_NO_GRAPHICSEFFECT=0 \  # =0
    QT_NO_QUUID_STRING=0 \  # =0




# Dependences

contains(CFG_FEATURE_DEFAULTS, CFG_USE_3D_GRAPHICS=1) {
    CFG_BUILD_FEATURES -= CFG_BUILD_3D_GRAPHICS=0
    CFG_BUILD_FEATURES *= CFG_BUILD_3D_GRAPHICS=1
}

contains(CFG_FEATURE_DEFAULTS, USE_CROSS_PLATFORM_CONTEXT_MENUS=1) {
    CFG_BUILD_FEATURES -= CFG_BUILD_CROSS_PLATFORM_CONTEXT_MENUS=0
    CFG_BUILD_FEATURES *= CFG_BUILD_CROSS_PLATFORM_CONTEXT_MENUS=1
}

contains(CFG_FEATURE_DEFAULTS, CFG_ENABLE_GAMEPAD=1) {
    CFG_BUILD_FEATURES -= CFG_BUILD_GAMEPAD=0
    CFG_BUILD_FEATURES *= CFG_BUILD_GAMEPAD=1
}


contains(CFG_FEATURE_DEFAULTS, CFG_ENABLE_JAVASCRIPTCORE=1)|contains(CFG_FEATURE_DEFAULTS, CFG_ENABLE_JAVASCRIPT_DEBUGGER=1)|contains(CFG_FEATURE_DEFAULTS, CFG_ENABLE_JAVASCRIPT_I18N_API=1) {
    CFG_BUILD_FEATURES -= CFG_BUILD_JAVASCRIPTCORE=0
    CFG_BUILD_FEATURES *= CFG_BUILD_JAVASCRIPTCORE=1
}

contains(CFG_FEATURE_DEFAULTS, CFG_ENABLE_INDEXED_DATABASE=1) {
    CFG_BUILD_FEATURES -= CFG_BUILD_LEVELDB=0
    CFG_BUILD_FEATURES *= CFG_BUILD_LEVELDB=1
}

contains(CFG_FEATURE_DEFAULTS, CFG_ENABLE_NETSCAPE_PLUGIN_API=1) {
    CFG_BUILD_FEATURES -= CFG_BUILD_NETSCAPE_PLUGIN_API=0
    CFG_BUILD_FEATURES *= CFG_BUILD_NETSCAPE_PLUGIN_API=1
}

# turn on SQLITE support if any of the dependent features are turned on
contains(CFG_FEATURE_DEFAULTS, CFG_ENABLE_ICONDATABASE=1)|contains(CFG_FEATURE_DEFAULTS, CFG_ENABLE_SQL_DATABASE=1)|contains(CFG_FEATURE_DEFAULTS, CFG_ENABLE_SHARED_WORKERS=1)|contains(CFG_FEATURE_DEFAULTS, CFG_ENABLE_WORKERS=1) {
    CFG_BUILD_FEATURES -= CFG_BUILD_SQLITE3=0
    CFG_BUILD_FEATURES *= CFG_BUILD_SQLITE3=1
#} else {
#    CFG_BUILD_FEATURES -= CFG_BUILD_SQLITE3=1
#    CFG_BUILD_FEATURES *= CFG_BUILD_SQLITE3=0
}

contains(CFG_FEATURE_DEFAULTS, CFG_USE_TEXTURE_MAPPER=1) {
    CFG_BUILD_FEATURES -= CFG_BUILD_TEXTURE_MAPPER=0
    CFG_BUILD_FEATURES *= CFG_BUILD_TEXTURE_MAPPER=1
}

contains(CFG_FEATURE_DEFAULTS, CFG_ENABLE_VIDEO=1) {
    CFG_BUILD_FEATURES -= CFG_BUILD_VIDEO=0
    CFG_BUILD_FEATURES *= CFG_BUILD_VIDEO=1
}

contains(CFG_FEATURE_DEFAULTS, CFG_ENABLE_WEBGL=1) {
    CFG_BUILD_FEATURES -= CFG_BUILD_WEBGL=0
    CFG_BUILD_FEATURES *= CFG_BUILD_WEBGL=1
}

contains(CFG_FEATURE_DEFAULTS, CFG_ENABLE_XSLT=1) {
    CFG_BUILD_FEATURES -= CFG_BUILD_XSLT=0
    CFG_BUILD_FEATURES *= CFG_BUILD_XSLT=1
}



dwarning(CFG_FEATURE_DEFAULTS =, $$CFG_FEATURE_DEFAULTS)
dwarning(CFG_BUILD_FEATURES =, $$CFG_BUILD_FEATURES)
dwarning(CFG_MINIMAL_QT_DEFINES =, $$CFG_MINIMAL_QT_DEFINES)


dwarning(leaving cfg_config.pri)
