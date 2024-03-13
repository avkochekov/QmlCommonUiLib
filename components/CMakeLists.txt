qt_add_library(QmlComponents STATIC)
qt_add_qml_module(QmlComponents
    URI QmlComponents
    VERSION 1.0
    QML_FILES
        components/TkItemControls.qml
    SOURCES
        components/tkitem.cpp components/tkitem.h
)

set_target_properties(QmlComponents PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_compile_definitions(QmlComponents
    PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(QmlComponents
    PRIVATE Qt6::Quick)

target_include_directories(QmlComponents PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_include_directories(QmlComponents PUBLIC components/)
