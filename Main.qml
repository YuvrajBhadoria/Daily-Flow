
import QtQuick.Controls 2.15
import Qt.labs.qmlmodels
import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick 2.12
import QtQuick.Controls 2.5
import Qt.labs.platform 1.1



Window {
    width: Screen.width * 1
    height: Screen.height * 1
    visible: true
    title: qsTr("Hello World")

    Rectangle {
            id: background
            anchors.fill: parent
            color: "black"


        Rectangle{
        height: Screen.height * 1
        width: 400
        anchors.margins: 14
        color: Qt.rgba(0.25, 0.25, 0.25, 1);
        Item {
            id: root
            property int selectedIndex: -1

            Column {
                spacing: 10

                Repeater {
                    model: ["Today", "Progress", "Settings"]

                    Rectangle {
                        width: 300
                        height: 64
                        radius: 15

                        color: root.selectedIndex === index
                               ? "darkgrey"
                               : Qt.rgba(0.25, 0.25, 0.25, 1)

                        Text {
                            text: modelData
                            anchors.centerIn: parent
                            color: root.selectedIndex === index ? "white" : "black"
                            font.weight: Font.Bold
                            font.pixelSize: 25
                        }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: root.selectedIndex = index
                        }
                    }
                }
            }
        }
            }
        }

}
