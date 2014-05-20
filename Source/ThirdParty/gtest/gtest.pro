CFG_FILE_GTEST_GTEST_PRO = Source\ThirdParty\gtest\gtest.pro
cfg_dwarning_file_in($$CFG_FILE_GTEST_GTEST_PRO)

TEMPLATE = lib
CONFIG += static
TARGET = gtest

DEFINES += QT_NO_KEYWORDS

INCLUDEPATH += $$PWD/include $${ROOT_WEBKIT_DIR}/Source/WTF

#cfg_enable?(CFG_JAVASCRIPTCORE) {
    INCLUDEPATH += $${ROOT_WEBKIT_DIR}/Source/JavaScriptCore
#}

INCLUDEPATH += $$QT.core.includes

HEADERS = $$PWD/include/gtest/*.h $$PWD/include/gtest/internal/*.h
SOURCES = $$PWD/src/gtest-all.cc

QT =

CONFIG += compiling_thirdparty_code

cfg_dwarning_file_out($$CFG_FILE_GTEST_GTEST_PRO)
