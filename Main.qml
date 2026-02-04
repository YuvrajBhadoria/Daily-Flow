
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

    // Source - https://stackoverflow.com/q/66214412
    // Posted by bkh6722, modified by community. See post 'Timeline' for change history
    // Retrieved 2026-02-05, License - CC BY-SA 4.0

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


            // Rectangle {
            //     id: button
            //     width: 300
            //     height: 64
            //     y: 20
            //     radius: 15
            //     border.width: 4
            //      border.color: Qt.rgba(0.25, 0.25, 0.25, 1);

            //     Text{
            //         id: text
            //         property bool colr: false
            //         text: "Today"
            //         color: colr ? "white" : "black"
            //         anchors.centerIn: parent
            //         font.weight: Font.Bold
            //         font.pixelSize: 25
            //     }

            //     property bool selected: false

            //         color: selected ? "darkgrey" : Qt.rgba(0.25, 0.25, 0.25, 1);

            //         MouseArea {
            //             anchors.fill: parent
            //             onClicked: {

            //                 button.selected = !button.selected
            //                 text.colr = !text.colr
            //             }
            //         }
            // }

            // Rectangle {
            //     id: button1
            //     width: 300
            //     height: 64
            //     y:104
            //     radius: 15
            //     border.width: 4
            //      border.color: Qt.rgba(0.25, 0.25, 0.25, 1);

            //     Text{
            //         id: text1
            //         property bool colr: false
            //         text: "Progress"
            //         color: colr ? "white" : "black"
            //         anchors.centerIn: parent
            //         font.weight: Font.Bold
            //         font.pixelSize: 25
            //     }

            //     property bool selected: false

            //         color: selected ? "darkgrey" : Qt.rgba(0.25, 0.25, 0.25, 1);

            //         MouseArea {
            //             anchors.fill: parent
            //             onClicked: {

            //                 button1.selected = !button1.selected
            //                 text1.colr = !text1.colr
            //             }
            //         }
            // }

            // Rectangle {
            //     id: button2
            //     width: 300
            //     height: 64
            //     y: 188
            //     radius: 15
            //     border.width: 4
            //      border.color: Qt.rgba(0.25, 0.25, 0.25, 1);


            //     Text{
            //         id: text2
            //         property bool colr: false
            //         text: "Settings"
            //         color: colr ? "white" : "black"
            //         anchors.centerIn: parent
            //         font.weight: Font.Bold
            //         font.pixelSize: 25
            //     }

            //     property bool selected: false

            //         color: selected ? "darkgrey" : Qt.rgba(0.25, 0.25, 0.25, 1);

            //         MouseArea {
            //             anchors.fill: parent
            //             onClicked: {

            //                 button2.selected = !button2.selected
            //                 text2.colr = !text2.colr
            //             }
            //         }
            // }

            }
        }

}
