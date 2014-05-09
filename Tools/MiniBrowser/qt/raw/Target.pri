CFG_FILE_RAW_TARGET_PRI = Tools\MiniBrowser\qt\raw\Target.pri
cfg_warning_file_in($$CFG_FILE_RAW_TARGET_PRI)

TEMPLATE = app
TARGET = MiniBrowserRaw

HEADERS += \
    View.h

SOURCES += \
    View.cpp

DESTDIR = $${ROOT_BUILD_DIR}/bin

QT = core gui network webkitwidgets

WEBKIT += wtf

cfg_enable?(CFG_JAVASCRIPTCORE) {
    WEBKIT += javascriptcore
}

cfg_build?(webkit2) {
    WEBKIT += webkit2
}

cfg_warning_file_out($$CFG_FILE_RAW_TARGET_PRI)
