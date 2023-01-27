pragma Singleton

import QtQuick

Item {
    // 应用程序的样式
    property real appWidth: 1000
    property real appHeight: 480
    property string appTitle: qsTr("Hello World!")
    property color appBGColor: "#00ff00"
    property string appBGImgSource: "qrc:/Imgs/setting.png"
}
