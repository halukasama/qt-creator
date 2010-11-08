TEMPLATE = lib
TARGET = Help
QT += network

include(../../qtcreatorplugin.pri)
include(help_dependencies.pri)

CONFIG += help
DEFINES += QT_CLUCENE_SUPPORT HELP_LIBRARY

HEADERS += \
    centralwidget.h \
    docsettingspage.h \
    filtersettingspage.h \
    generalsettingspage.h \
    help_global.h \
    helpconstants.h \
    helpfindsupport.h \
    helpindexfilter.h \
    helpmanager.h \
    helpmode.h \
    helpplugin.h \
    helpviewer.h \
    helpviewer_p.h \
    openpagesmanager.h \
    openpagesmodel.h \
    openpagesswitcher.h \
    openpageswidget.h \
    remotehelpfilter.h \
    searchwidget.h \
    xbelsupport.h \
    externalhelpwindow.h

SOURCES += \
    centralwidget.cpp \
    docsettingspage.cpp \
    filtersettingspage.cpp \
    generalsettingspage.cpp \
    helpfindsupport.cpp \
    helpindexfilter.cpp \
    helpmanager.cpp \
    helpmode.cpp \
    helpplugin.cpp \
    helpviewer.cpp \
    helpviewer_qtb.cpp \
    helpviewer_qwv.cpp \
    openpagesmanager.cpp \
    openpagesmodel.cpp \
    openpagesswitcher.cpp \
    openpageswidget.cpp \
    remotehelpfilter.cpp \
    searchwidget.cpp \
    xbelsupport.cpp \
    externalhelpwindow.cpp
    
FORMS += docsettingspage.ui \
    filtersettingspage.ui \
    generalsettingspage.ui \
    remotehelpfilter.ui

INCLUDEPATH += $$PWD

RESOURCES += help.qrc
include(../../shared/help/help.pri)

contains(QT_CONFIG, webkit) {
    QT += webkit
}
