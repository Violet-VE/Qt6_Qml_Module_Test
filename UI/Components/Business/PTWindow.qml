import QtQuick
import UI.Style
import UI.Components.Violet

VEWindow {
    id: root

    veWinWidth: DarkGray.appWidth
    veWinHeight: DarkGray.appHeight
    veWinVisible: true
    veWinTitle: DarkGray.appTitle
    veWinBGImgColor: DarkGray.appBGColor
    veWinBGImgSource: DarkGray.appBGImgSource

    Text {
        anchors.centerIn: parent
        text: qsTr("Hey!你好！")
        font.family: FontFamilties.mainFontName
        font.pixelSize: 48
        color: "#FF0000"
    }
}
