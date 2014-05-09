# -------------------------------------------------------------------
# Project file for the jsc binary (interactive interpreter)
#
# See 'Tools/qmake/README' for an overview of the build system
# -------------------------------------------------------------------

CFG_FILE_JS_JSC_PRO = Source\JavaScriptCore\jsc.pro
cfg_warning_file_in($$CFG_FILE_JS_JSC_PRO)

TEMPLATE = app

TARGET = jsc
DESTDIR = $${ROOT_BUILD_DIR}/bin

QT -= gui

win32-*: CONFIG += console
win32-msvc*: CONFIG += exceptions_off stl_off
win32-msvc*|win32-icc: INCLUDEPATH += $$ROOT_WEBKIT_DIR/Source/JavaScriptCore/os-win32

cfg_enable?(CFG_JAVASCRIPTCORE) {
    WEBKIT += javascriptcore
}

WEBKIT += wtf

SOURCES = jsc.cpp

win32-* {
    LIBS += -ladvapi32
}

wince* {
    LIBS += mmtimer.lib
}

# Prevent warnings about difference in visibility on Mac OS X
contains(QT_CONFIG, reduce_exports):CONFIG += hide_symbols
unix:contains(QT_CONFIG, reduce_relocations):CONFIG += bsymbolic_functions

cfg_warning_file_out($$CFG_FILE_JS_JSC_PRO)
