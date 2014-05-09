CFG_FILE_MIME_MIMESNIFFING_PRO = Source\WebKit\qt\tests\MIMESniffing\MIMESniffing.pro
cfg_warning_file_in($$CFG_FILE_MIME_MIMESNIFFING_PRO)

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

#cfg_enable?(CFG_JAVASCRIPTCORE) {
  INCLUDEPATH += \
    ../../../../JavaScriptCore \
    ../../../../JavaScriptCore/runtime
#}

INCLUDEPATH += \
    ../../../../WTF

RESOURCES += resources.qrc

cfg_warning_file_out($$CFG_FILE_MIME_MIMESNIFFING_PRO)
