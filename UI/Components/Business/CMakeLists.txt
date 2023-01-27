# 添加qml文件
set(QMLFILES
        PTWindow.qml
        FontFamilties.qml)

set_source_files_properties(FontFamilties.qml PROPERTIES
    QT_QML_SINGLETON_TYPE TRUE)

qt_add_library(BusinessLib STATIC)

set_target_properties(BusinessLib PROPERTIES AUTOMOC ON)
target_link_libraries(BusinessLib PRIVATE Qt6::Quick)

qt_add_qml_module(BusinessLib
    URI Business
    VERSION 1.0
    RESOURCE_PREFIX /violet-ve.com/imports
    QML_FILES ${QMLFILES}
)
