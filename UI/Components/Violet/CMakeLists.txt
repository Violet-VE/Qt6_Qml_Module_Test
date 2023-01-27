# 添加qml文件
set(QMLFILES
        VEWindow.qml)

qt_add_library(VioletLib STATIC)

set_target_properties(VioletLib PROPERTIES AUTOMOC ON)
target_link_libraries(VioletLib PRIVATE Qt6::Quick)

qt_add_qml_module(VioletLib
    URI Violet
    VERSION 1.0
    RESOURCE_PREFIX /violet-ve.com/imports
    QML_FILES ${QMLFILES}
)
