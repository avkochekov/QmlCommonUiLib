import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls.Material
import QmlComponents

Window {
    width: 640
    height: 400
    visible: true
    title: qsTr("Example Project")

    TkItemControls {
        id: controls
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.margins: 20
        width: 100
        height: 100
    }
    TkItem {
        id: rect
        anchors.left: controls.right
        anchors.top: parent.top
        anchors.margins: 20
        width: 100
        height: 100
    }
}
