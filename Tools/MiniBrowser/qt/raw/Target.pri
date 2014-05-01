TEMPLATE = app
TARGET = MiniBrowserRaw

HEADERS += \
    View.h

SOURCES += \
    View.cpp

DESTDIR = $${ROOT_BUILD_DIR}/bin

QT = core gui network webkitwidgets

WEBKIT += wtf webkit2

cfg_build?(javascriptcore) {
    WEBKIT += javascriptcore
}
