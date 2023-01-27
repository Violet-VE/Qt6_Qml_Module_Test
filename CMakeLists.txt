cmake_minimum_required(VERSION 3.19)

project(ModuleTest VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD 20)

list(APPEND QML_IMPORT_PATH ${PROJECT_SOURCE_DIR})
list(APPEND QML_IMPORT_PATH ${PROJECT_SOURCE_DIR}/UI)
list(APPEND QML_IMPORT_PATH ${PROJECT_SOURCE_DIR}/UI/Components)

set(QML_IMPORT_PATH ${QML_IMPORT_PATH} CACHE STRING "导入模块路径" FORCE)

set(CPPFILES
        Src/main.cpp)

# 添加qml文件
set(QMLFILES
        UI/main.qml)

# 添加资源文件
set(QRCFILES
        Resources/main.qrc)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

add_subdirectory(UI/Style)
add_subdirectory(UI/Components/Business)
add_subdirectory(UI/Components/Violet)

# 项目窗口对文件进行分组
SOURCE_GROUP("Resource Files" FILES ${QRCFILES})
SOURCE_GROUP("Qml UI Files" FILES ${QMLFILES})

qt_add_executable(appModuleTest ${CPPFILES} ${QRCFILES} ${QMLFILES})

qt_add_qml_module(appModuleTest
    URI ModuleTest
    VERSION 1.0
    RESOURCE_PREFIX /
    QML_FILES ${QMLFILES}
)

set_target_properties(appModuleTest PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appModuleTest
    PRIVATE Qt6::Quick
    StyleLibplugin
    BusinessLibplugin
    VioletLibplugin)

install(TARGETS appModuleTest
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
