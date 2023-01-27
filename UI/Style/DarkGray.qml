pragma Singleton

import QtQuick

Item {
    // 应用程序的样式
    property double appWidth: 1000
    property double appHeight: 480
    property string appTitle: qsTr("Hello World!")
    property color appBGColor: "#ff0000"
    property string appBGImgSource: "qrc:/Imgs/Preview.jpg"
}
