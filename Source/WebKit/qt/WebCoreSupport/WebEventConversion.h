/*
    Copyright (C) 2012 Nokia Corporation and/or its subsidiary(-ies)
    Copyright (C) 2006 Zack Rusin <zack@kde.org>
    Copyright (C) 2011 Research In Motion Limited.

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Library General Public
    License as published by the Free Software Foundation; either
    version 2 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Library General Public License for more details.

    You should have received a copy of the GNU Library General Public License
    along with this library; see the file COPYING.LIB.  If not, write to
    the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
    Boston, MA 02110-1301, USA.
*/

#ifndef WebEventConversion_h
#define WebEventConversion_h

#include <QPoint>

QT_BEGIN_NAMESPACE
class QInputEvent;
#ifndef QT_NO_WHEELEVENT
class QWheelEvent;
#endif
class QTouchEvent;
QT_END_NAMESPACE

#ifndef QT_NO_GESTURES
struct QGestureEventFacade {
    Qt::GestureType type;
    QPoint globalPos;
    QPoint pos;
};
#endif

namespace WebCore {

class PlatformMouseEvent;
class PlatformWheelEvent;

PlatformMouseEvent convertMouseEvent(QInputEvent*, int clickCount);
#ifndef QT_NO_WHEELEVENT
PlatformWheelEvent convertWheelEvent(QWheelEvent*, int wheelScrollLines);
#endif

#if ENABLE(TOUCH_EVENTS)
class PlatformTouchEvent;
PlatformTouchEvent convertTouchEvent(QTouchEvent*);
#endif

#ifndef QT_NO_GESTURES
#if ENABLE(GESTURE_EVENTS)
class PlatformGestureEvent;
PlatformGestureEvent convertGesture(QGestureEventFacade*);
#endif // ENABLE(GESTURE_EVENTS)
#endif // ifndef QT_NO_GESTURES
}

#endif
