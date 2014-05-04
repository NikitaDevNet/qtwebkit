TEMPLATE = subdirs

SUBDIRS += Tests/WTF

cfg_enable?(CFG_JAVASCRIPTCORE) {
    SUBDIRS += Tests/JavaScriptCore
}

cfg_build?(webkit2) {
    SUBDIRS += Tests/WebKit2
}
