/*
    MainScene.qml

    This file is part of Kuesa.

    Copyright (C) 2018 Klarälvdalens Datakonsult AB, a KDAB Group company, info@kdab.com
    Author: Nuno Fernandes Pinheiro <nuno@kdab.com>

    Licensees holding valid proprietary KDAB Kuesa licenses may use this file in
    accordance with the Kuesa Enterprise License Agreement provided with the Software in the
    LICENSE.KUESA.ENTERPRISE file.

    Contact info@kdab.com if any conditions of this licensing are not clear to you.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

import QtQuick 2.11

Rectangle {
    id:wind
    color: "black"
    property bool animating: visible

    Image {
        id: bg
        source: "bg.png"
        anchors.fill: parent
        opacity: 0.4
    }

    Image {
        source: "t1.png"
        height: parent.height / 4
        fillMode: Image.PreserveAspectFit
        anchors.right: parent.right
        anchors.rightMargin: -width / 20
        rotation: 180
        opacity: 0.3

        NumberAnimation on y {
            duration: Math.random() * 6000 + 4000
            easing.type: Easing.InOutCubic
            to: Math.random() * wind.height - parent.height / 2
            onStopped: {
                duration = Math.random() * 6000 + 4000
                to = Math.random() * wind.height - parent.height / 2
                running = Qt.binding(function() { return animating })
            }
            running: animating
        }
    }

    Image {
        source: "t2.png"
        height: parent.height / 5
        fillMode: Image.PreserveAspectFit
        y: -height / 15
        opacity: 0.3

        NumberAnimation on x {
            duration: Math.random() * 6000 + 4000
            easing.type: Easing.InOutCubic
            to: Math.random() * wind.width * 1.2 - parent.width
            onStopped: {
                duration = Math.random() * 6000 + 4000
                to = Math.random() * wind.width * 1.2 - parent.width
                running = Qt.binding(function() { return animating })
            }
            running: animating
        }
    }

    Image {
        source: "t3.png"
        width: parent.width / 9
        fillMode: Image.PreserveAspectFit
        anchors.bottom: parent.bottom
        opacity: 0.3

        NumberAnimation on x {
            duration: Math.random() * 6000 + 4000
            easing.type: Easing.InOutCubic
            to: Math.random() * wind.width * 1.2 - parent.width
            onStopped: {
                duration = Math.random() * 6000 + 4000
                to = Math.random() * wind.width * 1.2 - parent.width
                running = Qt.binding(function() { return animating })
            }
            running: animating
        }
    }
}
