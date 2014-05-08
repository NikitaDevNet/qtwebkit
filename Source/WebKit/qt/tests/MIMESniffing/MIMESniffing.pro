include(../tests.pri)
TARGET = MIMESniffing
CONFIG += console

!contains(CONFIG, gprof) {
    SOURCES += ../../../../WebCore/platform/network/MIMESniffing.cpp
}

HEADERS += \
    ../../../../WebCore/platform/network/MIMESniffing.h \
    TestData.h

#cfg_enable?(CFG_NETWORK) {
  INCLUDEPATH += \
    ../../../../WebCore/platform/network
#}

cfg_enable?(CFG_JAVASCRIPTCORE) {
  INCLUDEPATH += \
    ../../../../JavaScriptCore \
    ../../../../JavaScriptCore/runtime
}

INCLUDEPATH += \
    ../../../../WTF

RESOURCES += resources.qrc
