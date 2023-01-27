# 添加qml文件
set(QMLFILES
        DarkGray.qml)

set_source_files_properties(DarkGray.qml PROPERTIES
    QT_QML_SINGLETON_TYPE TRUE)

qt_add_library(StyleLib STATIC)

set_target_properties(StyleLib PROPERTIES AUTOMOC ON)
target_link_libraries(StyleLib PRIVATE Qt6::Quick)

qt_add_qml_module(StyleLib
    URI Style
    VERSION 1.0
    RESOURCE_PREFIX /violet-ve.com/imports
    QML_FILES ${QMLFILES}
)
