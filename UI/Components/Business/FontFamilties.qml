pragma Singleton

import QtQuick

Item {
    property alias mainFontName: mainFont.name

    FontLoader{
        id:mainFont
        source: "qrc:/Fonts/GEETYPE-XiYuanGBT-Flash.ttf"
    }
}
