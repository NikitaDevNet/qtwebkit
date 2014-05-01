TEMPLATE = subdirs

SUBDIRS += Tests/WTF

cfg_build?(javascriptcore) {
    SUBDIRS += Tests/JavaScriptCore
}

cfg_build?(webkit2) {
    SUBDIRS += Tests/WebKit2
}
