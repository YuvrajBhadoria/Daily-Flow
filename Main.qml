import QtQuick

Window {
    width: 1080
    height: 720
    visible: true
    title: qsTr("Hello World")
    Item{
        id: item
        height: 700
        width: 600
        anchors.centerIn: parent
        Rectangle{
            height: 100
            width: 100
            gradient: "SunnyMorning"
        }

        Rectangle {
            id: rct
            anchors.centerIn: parent
            border.color: "red"
            width: 300
            height: 200

            gradient: Gradient{
                GradientStop{
                    position: 0.0
                    color: "yellow"
                }
                GradientStop{
                    position: 1.0
                    color: "green"
                }
            }
            Text{
                anchors.centerIn: parent
                text: "Hello"
            }

        }
        Image {

            id: img
            anchors.bottom: rct.bottom
            width: 100
            height: 100
            source: "marks.png"

        }

    }
}
