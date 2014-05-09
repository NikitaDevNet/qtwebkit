# -------------------------------------------------------------------
# Project file for TestWebKitAPI's InjectedBundle
#
# See 'Tools/qmake/README' for an overview of the build system
# -------------------------------------------------------------------

CFG_FILE_TWAPI_INJECTEDBUNDLE_PRI = Tools\TestWebKitAPI\InjectedBundle.pri
cfg_warning_file_in($$CFG_FILE_TWAPI_INJECTEDBUNDLE_PRI)

TEMPLATE = lib
TARGET = TestWebKitAPIInjectedBundle

INCLUDEPATH += $$PWD
INCLUDEPATH += $${ROOT_WEBKIT_DIR}/Source/ThirdParty/gtest/include

SOURCES += \
    $$PWD/InjectedBundleController.cpp \
    $$PWD/InjectedBundleController.h \
    $$PWD/InjectedBundleMain.cpp \
    $$PWD/InjectedBundleTest.h \
    $$PWD/PlatformUtilities.cpp \
    $$PWD/PlatformUtilities.h \
    $$PWD/qt/InjectedBundleControllerQt.cpp \
    $$PWD/qt/PlatformUtilitiesQt.cpp

#cfg_build?(webkit2) {
  SOURCES += \
    $$PWD/Tests/WebKit2/CanHandleRequest_Bundle.cpp \
    $$PWD/Tests/WebKit2/DocumentStartUserScriptAlertCrash_Bundle.cpp \
    $$PWD/Tests/WebKit2/DOMWindowExtensionBasic_Bundle.cpp \
    $$PWD/Tests/WebKit2/DOMWindowExtensionNoCache_Bundle.cpp \
    $$PWD/Tests/WebKit2/GetInjectedBundleInitializationUserDataCallback_Bundle.cpp \
    $$PWD/Tests/WebKit2/HitTestResultNodeHandle_Bundle.cpp \
    $$PWD/Tests/WebKit2/InjectedBundleBasic_Bundle.cpp \
    $$PWD/Tests/WebKit2/InjectedBundleFrameHitTest_Bundle.cpp \
    $$PWD/Tests/WebKit2/InjectedBundleInitializationUserDataCallbackWins_Bundle.cpp \
    $$PWD/Tests/WebKit2/LoadCanceledNoServerRedirectCallback_Bundle.cpp \
    $$PWD/Tests/WebKit2/MouseMoveAfterCrash_Bundle.cpp \
    $$PWD/Tests/WebKit2/NewFirstVisuallyNonEmptyLayout_Bundle.cpp \
    $$PWD/Tests/WebKit2/NewFirstVisuallyNonEmptyLayoutFails_Bundle.cpp \
    $$PWD/Tests/WebKit2/NewFirstVisuallyNonEmptyLayoutForImages_Bundle.cpp \
    $$PWD/Tests/WebKit2/NewFirstVisuallyNonEmptyLayoutFrames_Bundle.cpp \
    $$PWD/Tests/WebKit2/ParentFrame_Bundle.cpp \
    $$PWD/Tests/WebKit2/ResponsivenessTimerDoesntFireEarly_Bundle.cpp \
    $$PWD/Tests/WebKit2/ShouldGoToBackForwardListItem_Bundle.cpp \
    $$PWD/Tests/WebKit2/UserMessage_Bundle.cpp \
    $$PWD/Tests/WebKit2/WillSendSubmitEvent_Bundle.cpp \
    $$PWD/Tests/WebKit2/WKConnection_Bundle.cpp
#}


DESTDIR = $${ROOT_BUILD_DIR}/lib

QT += core webkit

WEBKIT += wtf

cfg_enable?(CFG_JAVASCRIPTCORE) {
    WEBKIT += javascriptcore
}

WEBKIT += webcore

cfg_build?(webkit2) {
    WEBKIT += webkit2
}

CONFIG += plugin rpath compiling_thirdparty_code

LIBS += -L$${ROOT_BUILD_DIR}/Source/ThirdParty/gtest/$$targetSubDir() -lgtest

DEFINES += APITEST_SOURCE_DIR=\\\"$$PWD\\\" \
           ROOT_BUILD_DIR=\\\"$${ROOT_BUILD_DIR}\\\"

cfg_warning_file_out($$CFG_FILE_TWAPI_INJECTEDBUNDLE_PRI)
