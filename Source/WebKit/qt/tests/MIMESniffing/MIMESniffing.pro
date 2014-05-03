include(../tests.pri)
TARGET = MIMESniffing
CONFIG += console

!contains(CONFIG, gprof) {
    SOURCES += ../../../../WebCore/platform/network/MIMESniffing.cpp
}

HEADERS += \
    ../../../../WebCore/platform/network/MIMESniffing.h \
    TestData.h

cfg_build?(network) {
  INCLUDEPATH += \
    ../../../../WebCore/platform/network
}

cfg_build?(javascriptcore) {
  INCLUDEPATH += \
    ../../../../JavaScriptCore \
    ../../../../JavaScriptCore/runtime
}

INCLUDEPATH += \
    ../../../../WTF

RESOURCES += resources.qrc
