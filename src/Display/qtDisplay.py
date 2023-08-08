#!/usr/bin/env python

##Copyright 2009-2019 Thomas Paviot (tpaviot@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU Lesser General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU Lesser General Public License for more details.
##
##You should have received a copy of the GNU Lesser General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

import logging
import os
import sys

# import faulthandler; faulthandler.enable()

from OCC.Core.AIS import AIS_Manipulator, AIS_Shape
from OCC.Core.gp import gp_Trsf
from OCC.Core.TopAbs import TopAbs_SOLID
from OCC.Display import OCCViewer
from OCC.Display.backend import get_qt_modules, get_loaded_backend
from OCC.Core.Prs3d import Prs3d_Drawer, Prs3d_TypeOfHighlight_LocalDynamic, Prs3d_TypeOfHighlight_LocalSelected, Prs3d_TypeOfHighlight_Dynamic, Prs3d_TypeOfHighlight_Selected
from OCC.Core.Quantity import Quantity_NOC_LIGHTSEAGREEN, Quantity_NOC_LIGHTSKYBLUE, Quantity_Color

QtCore, QtGui, QtWidgets, QtOpenGL = get_qt_modules()

logging.basicConfig(stream=sys.stdout, level=logging.DEBUG)
log = logging.getLogger(__name__)


class qtBaseViewer(QtWidgets.QWidget):
    """The base Qt Widget for an OCC viewer"""

    def __init__(self, parent=None):
        super(qtBaseViewer, self).__init__(parent)
        self._display = OCCViewer.Viewer3d()
        self._inited = False

        # enable Mouse Tracking
        self.setMouseTracking(True)

        # Strong focus
        self.setFocusPolicy(QtCore.Qt.WheelFocus)

        self.setAttribute(QtCore.Qt.WA_NativeWindow)
        self.setAttribute(QtCore.Qt.WA_PaintOnScreen)
        self.setAttribute(QtCore.Qt.WA_NoSystemBackground)

        self.setAutoFillBackground(False)

    def resizeEvent(self, event):
        super(qtBaseViewer, self).resizeEvent(event)
        self._display.View.MustBeResized()

    def paintEngine(self):
        return None


class qtViewer3d(qtBaseViewer):

    # emit signal when selection is changed
    # is a list of TopoDS_*
    HAVE_PYQT_SIGNAL = False
    if hasattr(QtCore, "pyqtSignal"):  # PyQt
        sig_topods_selected = QtCore.pyqtSignal(list)
        HAVE_PYQT_SIGNAL = True
    elif hasattr(QtCore, "Signal"):  # PySide2
        sig_topods_selected = QtCore.Signal(list)
        HAVE_PYQT_SIGNAL = True

    def __init__(self, *kargs):
        qtBaseViewer.__init__(self, *kargs)

        self.setObjectName("qt_viewer_3d")

        self._drawbox = False
        self._zoom_area = False
        self._select_area = False
        self._inited = False
        self._leftisdown = False
        self._middleisdown = False
        self._rightisdown = False
        self._selection = None
        self._drawtext = True
        self._qApp = QtWidgets.QApplication.instance()
        self._key_map = {}
        self._current_cursor = "arrow"
        self._available_cursors = {}

        self.mouse_pos = [0,0]
        self.zoom_at_cursor = True
        self.zoom_speed = 0.1

        self.change_select_timer = QtCore.QTimer()
        self.change_select_timer.timeout.connect(self.change_select)
        self._change_select = True
        self.select_mode = 0
        self._max_select_mode = 3
        self._select_solid = False

        self.set_highlight()

        # self._display.Context.SetAutoActivateSelection(True)

        if get_loaded_backend() == 'PySide6':
            self.mouse_offset = 1.04
        else:
            self.mouse_offset = 1

    def select_solid(self):
        self._select_solid = not self._select_solid
        if self._select_solid:
            self._display.SetSelectionMode(TopAbs_SOLID)
        else:
            self.change_select_timer.start(1)

    @property
    def qApp(self):
        # reference to QApplication instance
        return self._qApp

    @qApp.setter
    def qApp(self, value):
        self._qApp = value

    def InitDriver(self):
        self._display.Create(window_handle=int(self.winId()), parent=self)
        # background gradient
        self._display.SetModeShaded()
        self._inited = True
        # dict mapping keys to functions
        self._key_map = {
            ord("W"): self._display.SetModeWireFrame,
            ord("S"): self._display.SetModeShaded,
            ord("A"): self._display.EnableAntiAliasing,
            ord("B"): self._display.DisableAntiAliasing,
            ord("H"): self._display.SetModeHLR,
            ord("F"): self._display.FitAll,
            ord("G"): self.select_solid,
        }
        self.createCursors()

    def createCursors(self):
        module_pth = os.path.abspath(os.path.dirname(__file__))
        icon_pth = os.path.join(module_pth, "icons")

        _CURSOR_PIX_ROT = QtGui.QPixmap(os.path.join(icon_pth, "cursor-rotate.png"))
        _CURSOR_PIX_PAN = QtGui.QPixmap(os.path.join(icon_pth, "cursor-pan.png"))
        _CURSOR_PIX_ZOOM = QtGui.QPixmap(os.path.join(icon_pth, "cursor-magnify.png"))
        _CURSOR_PIX_ZOOM_AREA = QtGui.QPixmap(
            os.path.join(icon_pth, "cursor-magnify-area.png")
        )

        self._available_cursors = {
            "arrow": QtGui.QCursor(QtCore.Qt.ArrowCursor),  # default
            "pan": QtGui.QCursor(_CURSOR_PIX_PAN),
            "rotate": QtGui.QCursor(_CURSOR_PIX_ROT),
            "zoom": QtGui.QCursor(_CURSOR_PIX_ZOOM),
            "zoom-area": QtGui.QCursor(_CURSOR_PIX_ZOOM_AREA),
        }

        self._current_cursor = "arrow"

    def keyPressEvent(self, event):
        super(qtViewer3d, self).keyPressEvent(event)
        code = event.key()
        if code in self._key_map:
            self._key_map[code]()
        elif code in range(256):
            log.info(
                'key: "%s"(code %i) not mapped to any function' % (chr(code), code)
            )
        else:
            log.info("key: code %i not mapped to any function" % code)

    def focusInEvent(self, event):
        if self._inited:
            self._display.Repaint()

    def focusOutEvent(self, event):
        if self._inited:
            self._display.Repaint()

    def paintEvent(self, event):
        if not self._inited:
            self.InitDriver()

        self._display.Context.UpdateCurrentViewer()

        if self._drawbox:
            painter = QtGui.QPainter(self)
            painter.setPen(QtGui.QPen(QtGui.QColor(0, 0, 0), 2))
            rect = QtCore.QRect(*self._drawbox)
            painter.drawRect(rect)

    def wheelEvent(self, event):
        if self.zoom_at_cursor:
            self._display.View.StartZoomAtPoint(self.mouse_pos[0], self.mouse_pos[1])
            self._display.View.ZoomAtPoint(0, 0, int(event.angleDelta().y() * self.zoom_speed), 0)
        else:
            delta = event.angleDelta().y()
            if delta > 0:
                zoom_factor = 1.5
            else:
                zoom_factor = 0.75
            self._display.ZoomFactor(zoom_factor)

    @property
    def cursor(self):
        return self._current_cursor

    @cursor.setter
    def cursor(self, value):
        if not self._current_cursor == value:

            self._current_cursor = value
            cursor = self._available_cursors.get(value)

            if cursor:
                self.qApp.setOverrideCursor(cursor)
            else:
                self.qApp.restoreOverrideCursor()

    def mousePressEvent(self, event):
        self.setFocus()
        ev = event.pos()
        self.dragStartPosX = ev.x()
        self.dragStartPosY = ev.y()
        self._display.StartRotation(self.dragStartPosX, self.dragStartPosY)

    def mouseReleaseEvent(self, event):
        pt = event.pos()
        modifiers = event.modifiers()

        if event.button() == QtCore.Qt.LeftButton:
            if (self._display.selected_shapes and (self._display.Context.DetectedOwner())) or self._select_solid:
                self.select_solid()
            if self._select_area:
                [Xmin, Ymin, dx, dy] = self._drawbox
                self._display.SelectArea(Xmin, Ymin, Xmin + dx, Ymin + dy)
                self._select_area = False
            else:
                # multiple select if shift is pressed
                if modifiers == QtCore.Qt.ShiftModifier:
                    self._display.ShiftSelect(pt.x(), pt.y())
                else:
                    # single select otherwise
                    self._display.Select(pt.x(), pt.y())

                    if (self._display.selected_shapes is not None) and self.HAVE_PYQT_SIGNAL:

                        self.sig_topods_selected.emit(self._display.selected_shapes)

        elif event.button() == QtCore.Qt.RightButton:
            if self._zoom_area:
                [Xmin, Ymin, dx, dy] = self._drawbox
                self._display.ZoomArea(Xmin, Ymin, Xmin + dx, Ymin + dy)
                self._zoom_area = False

        self.cursor = "arrow"

    def DrawBox(self, event):
        tolerance = 2
        pt = event.pos()
        dx = pt.x() - self.dragStartPosX
        dy = pt.y() - self.dragStartPosY
        if abs(dx) <= tolerance and abs(dy) <= tolerance:
            return
        self._drawbox = [self.dragStartPosX, self.dragStartPosY, dx, dy]

    def mouseMoveEvent(self, evt):
        pt = evt.pos()
        buttons = evt.buttons()
        modifiers = evt.modifiers()

        self.mouse_pos = [pt.x(), pt.y()]

        # ROTATE
        if buttons == QtCore.Qt.LeftButton and not modifiers == QtCore.Qt.ShiftModifier:
            self.cursor = "rotate"
            self._display.Rotation(pt.x(), pt.y())
            self._drawbox = False
        # DYNAMIC ZOOM
        elif (
            buttons == QtCore.Qt.RightButton
            and not modifiers == QtCore.Qt.ShiftModifier
        ):
            self.cursor = "zoom"
            self._display.Repaint()
            self._display.DynamicZoom(
                abs(self.dragStartPosX),
                abs(self.dragStartPosY),
                abs(pt.x()),
                abs(pt.y()),
            )
            self.dragStartPosX = pt.x()
            self.dragStartPosY = pt.y()
            self._drawbox = False
        # PAN
        elif buttons == QtCore.Qt.MiddleButton:
            dx = pt.x() - self.dragStartPosX
            dy = pt.y() - self.dragStartPosY
            self.dragStartPosX = pt.x()
            self.dragStartPosY = pt.y()
            self.cursor = "pan"
            self._display.Pan(dx, -dy)
            self._drawbox = False
        # DRAW BOX
        # ZOOM WINDOW
        elif buttons == QtCore.Qt.RightButton and modifiers == QtCore.Qt.ShiftModifier:
            self._zoom_area = True
            self.cursor = "zoom-area"
            self.DrawBox(evt)
            self.update()
        # SELECT AREA
        elif buttons == QtCore.Qt.LeftButton and modifiers == QtCore.Qt.ShiftModifier:
            self._select_area = True
            self.DrawBox(evt)
            self.update()
        else:
            self._drawbox = False
            
            self._display.MoveTo(int(pt.x()*self.mouse_offset), int(pt.y()*self.mouse_offset)) # Change by potato-pythonocc forum.qt.io/topic/147605/get-incorrect-widget-size-by-window-handle
            self.cursor = "arrow"

        if not self._select_solid:
            self.change_select_timer.start(1)

    def change_select(self):
        if self._change_select and (self._display.Context.DetectedOwner() is None):
            self._display.Context.Activate(AIS_Shape.SelectionMode(self._display.lmodes[self.select_mode]), True)
            self._display.Context.UpdateSelected(True)
            self.select_mode += 1
            self._change_select = False
            return

        if not self._change_select:
            if not (self._display.Context.DetectedOwner() is None): # 找到了    
                self._display.Context.UpdateSelected(True)
                self.change_select_timer.stop()
                self._change_select = False
                return
            
            if (self.select_mode >= self._max_select_mode): 
                #找不到了
                self.select_mode = 0
                self._change_select = True
                self.change_select_timer.stop()
                return
            
            self._change_select = True
            # print(self._display.lmodes[self.select_mode - 1])

    def set_highlight(self, 
                        select_color = Quantity_Color(Quantity_NOC_LIGHTSEAGREEN),
                        select_DisplayMode = 1,
                        select_transparency = 0.5,
                        dynamic_color = Quantity_Color(Quantity_NOC_LIGHTSKYBLUE),
                        dynamic_DisplayMode = 1,
                        dynamic_transparency = 0.35
                      ):
        self.LocalSelect_style = self._display.Context.HighlightStyle(Prs3d_TypeOfHighlight_LocalSelected)
        self.LocalSelect_style.SetColor(select_color)
        self.LocalSelect_style.SetDisplayMode(select_DisplayMode)
        self.LocalSelect_style.SetTransparency(select_transparency)

        self.select_style = self._display.Context.HighlightStyle(Prs3d_TypeOfHighlight_Selected)
        self.select_style.SetColor(select_color)
        self.select_style.SetDisplayMode(select_DisplayMode)
        self.select_style.SetTransparency(select_transparency)

        self.LocalDynamic_style = self._display.Context.HighlightStyle(Prs3d_TypeOfHighlight_LocalDynamic)
        self.LocalDynamic_style.SetColor(dynamic_color)
        self.LocalDynamic_style.SetDisplayMode(dynamic_DisplayMode)
        self.LocalDynamic_style.SetTransparency(dynamic_transparency)

        self.Dynamic_style = self._display.Context.HighlightStyle(Prs3d_TypeOfHighlight_Dynamic)
        self.Dynamic_style.SetColor(dynamic_color)
        self.Dynamic_style.SetDisplayMode(dynamic_DisplayMode)
        self.Dynamic_style.SetTransparency(dynamic_transparency)

class qtViewer3dWithManipulator(qtViewer3d):
    # emit signal when selection is changed
    # is a list of TopoDS_*
    HAVE_PYQT_SIGNAL = False
    if hasattr(QtCore, "pyqtSignal"):  # PyQt
        sig_topods_selected = QtCore.pyqtSignal(list)
        HAVE_PYQT_SIGNAL = True
    elif hasattr(QtCore, "Signal"):  # PySide2
        sig_topods_selected = QtCore.Signal(list)
        HAVE_PYQT_SIGNAL = True

    def __init__(self, *kargs):
        qtBaseViewer.__init__(self, *kargs)

        self.setObjectName("qt_viewer_3d")

        self._drawbox = False
        self._zoom_area = False
        self._select_area = False
        self._inited = False
        self._leftisdown = False
        self._middleisdown = False
        self._rightisdown = False
        self._selection = None
        self._drawtext = True
        self._qApp = QtWidgets.QApplication.instance()
        self._key_map = {}
        self._current_cursor = "arrow"
        self._available_cursors = {}

        # create empty manipulator
        self.manipulator = AIS_Manipulator()
        self.trsf_manip = []
        self.manip_moved = False

    def set_manipulator(self, manipulator):
        r"""
        Define the manipulator to reference

        Returns:
        ----
        none
        """
        self.trsf_manip = []
        self.manipulator = manipulator
        self.manip_moved = False

    def mousePressEvent(self, event):
        self.setFocus()
        ev = event.pos()
        self.dragStartPosX = ev.x()
        self.dragStartPosY = ev.y()
        if self.manipulator.HasActiveMode():
            self.manipulator.StartTransform(
                self.dragStartPosX, self.dragStartPosY, self._display.GetView()
            )
        else:
            self._display.StartRotation(self.dragStartPosX, self.dragStartPosY)

    def mouseMoveEvent(self, evt):
        pt = evt.pos()
        buttons = int(evt.buttons())
        modifiers = evt.modifiers()
        # TRANSFORM via MANIPULATOR or ROTATE
        if buttons == QtCore.Qt.LeftButton and not modifiers == QtCore.Qt.ShiftModifier:
            if self.manipulator.HasActiveMode():
                self.trsf = self.manipulator.Transform(
                    pt.x(), pt.y(), self._display.GetView()
                )
                self.manip_moved = True
                self._display.View.Redraw()
            else:
                self.cursor = "rotate"
                self._display.Rotation(pt.x(), pt.y())
                self._drawbox = False
        # DYNAMIC ZOOM
        elif (
            buttons == QtCore.Qt.RightButton
            and not modifiers == QtCore.Qt.ShiftModifier
        ):
            self.cursor = "zoom"
            self._display.Repaint()
            self._display.DynamicZoom(
                abs(self.dragStartPosX),
                abs(self.dragStartPosY),
                abs(pt.x()),
                abs(pt.y()),
            )
            self.dragStartPosX = pt.x()
            self.dragStartPosY = pt.y()
            self._drawbox = False
        # PAN
        elif buttons == QtCore.Qt.MidButton:
            dx = pt.x() - self.dragStartPosX
            dy = pt.y() - self.dragStartPosY
            self.dragStartPosX = pt.x()
            self.dragStartPosY = pt.y()
            self.cursor = "pan"
            self._display.Pan(dx, -dy)
            self._drawbox = False
        # DRAW BOX
        # ZOOM WINDOW
        elif buttons == QtCore.Qt.RightButton and modifiers == QtCore.Qt.ShiftModifier:
            self._zoom_area = True
            self.cursor = "zoom-area"
            self.DrawBox(evt)
            self.update()
        # SELECT AREA
        elif buttons == QtCore.Qt.LeftButton and modifiers == QtCore.Qt.ShiftModifier:
            self._select_area = True
            self.DrawBox(evt)
            self.update()
        else:
            self._drawbox = False
            self._display.MoveTo(pt.x(), pt.y())
            self.cursor = "arrow"

    def get_trsf_from_manip(self):
        r"""
        Get the transformations done with the manipulator

        Returns:
        ----
        gp_Trsf
        """
        trsf = gp_Trsf()
        for t in self.trsf_manip:
            trsf.Multiply(t)
        return trsf

    def mouseReleaseEvent(self, event):
        pt = event.pos()
        modifiers = event.modifiers()
        if event.button() == QtCore.Qt.LeftButton:
            if self.manip_moved:
                self.trsf_manip.append(self.trsf)
                self.manip_moved = False
            if self._select_area:
                [Xmin, Ymin, dx, dy] = self._drawbox
                self._display.SelectArea(Xmin, Ymin, Xmin + dx, Ymin + dy)
                self._select_area = False
            else:
                # multiple select if shift is pressed
                if modifiers == QtCore.Qt.ShiftModifier:
                    self._display.ShiftSelect(pt.x(), pt.y())
                else:
                    # single select otherwise
                    self._display.Select(pt.x(), pt.y())

                    if (self._display.selected_shapes is not None) and self.HAVE_PYQT_SIGNAL:

                        self.sig_topods_selected.emit(self._display.selected_shapes)

        elif event.button() == QtCore.Qt.RightButton:
            if self._zoom_area:
                [Xmin, Ymin, dx, dy] = self._drawbox
                self._display.ZoomArea(Xmin, Ymin, Xmin + dx, Ymin + dy)
                self._zoom_area = False

        self.cursor = "arrow"
