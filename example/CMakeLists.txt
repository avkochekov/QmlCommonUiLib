cmake_minimum_required(VERSION 3.16)

project(QmlComponents VERSION 0.1 LANGUAGES CXX)

qt_add_executable(ExampleProject example.cpp)
qt_add_qml_module(ExampleProject
    URI ExampleProjectApp
    VERSION 1.0
    QML_FILES qml/example.qml
)
target_link_libraries(ExampleProject PRIVATE Qt6::Quick QmlComponentsplugin)
target_compile_definitions(ExampleProject PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
