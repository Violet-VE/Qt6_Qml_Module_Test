import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Templates as T

T.ApplicationWindow {

    property alias veWinWidth: veWindow.width
    property alias veWinHeight: veWindow.height
    property alias veWinVisible: veWindow.visible
    property alias veWinTitle: veWindow.title

    property color veWinBGImgColor: winBGImg.color
    property alias veWinBGImgSource: winBGImg.source

    id: veWindow

    ColorImage {
        id: winBGImg
        anchors.centerIn: parent // 在父组件中居中，不加这个的话下面两行不起作用
    }
}
