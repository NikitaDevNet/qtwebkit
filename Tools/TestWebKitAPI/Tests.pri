CFG_FILE_TWAPI_TESTS_PRI = Tools\TestWebKitAPI\Tests.pri
cfg_dwarning_file_in($$CFG_FILE_TWAPI_TESTS_PRI)

TEMPLATE = subdirs

SUBDIRS += Tests/WTF

cfg_enable?(CFG_JAVASCRIPTCORE) {
    SUBDIRS += Tests/JavaScriptCore
}

cfg_build?(webkit2) {
    SUBDIRS += Tests/WebKit2
}

cfg_dwarning_file_out($$CFG_FILE_TWAPI_TESTS_PRI)
