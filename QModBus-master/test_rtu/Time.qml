import QtQuick 2.0

import QtQuick 2.0
import QtQuick.Controls 2.3

Rectangle{
    width: 767
    height: 422

    Text {
        id: text1
        x: 233
        y: 151
        width: 301
        height: 31
        text: qsTr("Text")
        horizontalAlignment: Text.AlignHCenter
        font{
            family: "Time New Roman"
        }
    }

    Text {
        id: text2
        x: 247
        y: 198
        width: 274
        height: 27
        text: qsTr("Date")
        horizontalAlignment: Text.AlignHCenter
        font{
            family: "Time New Roman"
        }
    }
    Timer{
        interval: 500
        running: true
        repeat: true

        onTriggered: {
            var date = new Date()
            text1.text = date.toLocaleTimeString(Qt.locale("en_US"), "hh:mm")
            text2.text = date.toLocaleDateString(Qt.locale("en_US"))

        }
    }



}
