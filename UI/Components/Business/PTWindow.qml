import QtQuick
import Style
import Violet

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
        font.pixelSize: 96
        color: "#FF0000"
    }
}
