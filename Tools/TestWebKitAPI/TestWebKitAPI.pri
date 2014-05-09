CFG_FILE_TWAPI_TWAPI_PRI = Tools\TestWebKitAPI\TestWebKitAPI.pri
cfg_warning_file_in($$CFG_FILE_TWAPI_TWAPI_PRI)

INCLUDEPATH += $$PWD $${ROOT_WEBKIT_DIR}/Source/ThirdParty/gtest/include
WEBKIT += wtf

cfg_enable?(CFG_JAVASCRIPTCORE) {
    WEBKIT += javascriptcore
}

cfg_build?(webkit2) {
    WEBKIT += webkit2
}

DEFINES += QT_NO_CAST_FROM_ASCII

QT += core core-private gui gui-private webkit quick quick-private

CONFIG += compiling_thirdparty_code

SOURCES += \
    $$PWD/JavaScriptTest.cpp \
    $$PWD/PlatformUtilities.cpp \
    $$PWD/TestsController.cpp \
    $$PWD/qt/main.cpp \
    $$PWD/qt/PlatformUtilitiesQt.cpp \
    $$PWD/qt/PlatformWebViewQt.cpp

LIBS += -L$${ROOT_BUILD_DIR}/Source/ThirdParty/gtest/$$targetSubDir() -lgtest

DEFINES += ROOT_BUILD_DIR=\\\"$${ROOT_BUILD_DIR}\\\"

cfg_warning_file_out($$CFG_FILE_TWAPI_TWAPI_PRI)
