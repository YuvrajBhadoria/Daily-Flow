import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Item{
        id: item
        height: 500
        width: 300
        anchors.centerIn: parent

        Rectangle {
            anchors.centerIn: parent
            width: 100
            height: 100

            gradient: Gradient{
                GradientStop{
                    position: 0.0
                    color: "yellow"
                }
                GradientStop{
                    position: 1.0
                    color: "green"
                }
                Text{
                    anchors.centerIn: parent
                    text: "Hello"
                }
            }

            Image {

                id: img
                anchors.bottom: parent.bottom
                width: 100
                height: 100
                source: "marks.png"

            }

        }
    }
}
