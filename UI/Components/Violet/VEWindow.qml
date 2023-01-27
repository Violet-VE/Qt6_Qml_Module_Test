import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Templates as T

T.ApplicationWindow {

    property alias veWinWidth: veWindow.width
    property alias veWinHeight: veWindow.height
    property alias veWinVisible: veWindow.visible
    property alias veWinTitle: veWindow.title

    property alias veWinBGImgColor: winBGImg.color
    property alias veWinBGImgSource: winBGImg.source

    id: veWindow

    ColorImage {
        id: winBGImg
        anchors.centerIn: parent
        width: 512
        height: 512
    }
}
