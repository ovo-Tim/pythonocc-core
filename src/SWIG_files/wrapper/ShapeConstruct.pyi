from enum import IntEnum
from typing import overload, NewType, Optional, Tuple

from OCC.Core.Standard import *
from OCC.Core.NCollection import *
from OCC.Core.Geom import *
from OCC.Core.GeomAbs import *
from OCC.Core.Geom2d import *
from OCC.Core.TopAbs import *
from OCC.Core.TopTools import *
from OCC.Core.TopoDS import *
from OCC.Core.gp import *
from OCC.Core.TColStd import *
from OCC.Core.BRepBuilderAPI import *
from OCC.Core.TColgp import *
from OCC.Core.Message import *
from OCC.Core.ShapeAnalysis import *
from OCC.Core.ShapeExtend import *


class shapeconstruct:
    @overload
    @staticmethod
    def ConvertCurveToBSpline(C3D: Geom_Curve, First: float, Last: float, Tol3d: float, Continuity: GeomAbs_Shape, MaxSegments: int, MaxDegree: int) -> Geom_BSplineCurve: ...
    @overload
    @staticmethod
    def ConvertCurveToBSpline(C2D: Geom2d_Curve, First: float, Last: float, Tol2d: float, Continuity: GeomAbs_Shape, MaxSegments: int, MaxDegree: int) -> Geom2d_BSplineCurve: ...
    @staticmethod
    def ConvertSurfaceToBSpline(surf: Geom_Surface, UF: float, UL: float, VF: float, VL: float, Tol3d: float, Continuity: GeomAbs_Shape, MaxSegments: int, MaxDegree: int) -> Geom_BSplineSurface: ...
    @overload
    @staticmethod
    def JoinCurves(c3d1: Geom_Curve, ac3d2: Geom_Curve, Orient1: TopAbs_Orientation, Orient2: TopAbs_Orientation, c3dOut: Geom_Curve) -> Tuple[bool, float, float, float, float, bool, bool]: ...
    @overload
    @staticmethod
    def JoinCurves(c2d1: Geom2d_Curve, ac2d2: Geom2d_Curve, Orient1: TopAbs_Orientation, Orient2: TopAbs_Orientation, c2dOut: Geom2d_Curve, isError: Optional[bool] = False) -> Tuple[bool, float, float, float, float, bool, bool]: ...
    @staticmethod
    def JoinPCurves(theEdges: TopTools_HSequenceOfShape, theFace: TopoDS_Face, theEdge: TopoDS_Edge) -> bool: ...

class ShapeConstruct_Curve:
    def AdjustCurve(self, C3D: Geom_Curve, P1: gp_Pnt, P2: gp_Pnt, take1: Optional[bool] = True, take2: Optional[bool] = True) -> bool: ...
    def AdjustCurve2d(self, C2D: Geom2d_Curve, P1: gp_Pnt2d, P2: gp_Pnt2d, take1: Optional[bool] = True, take2: Optional[bool] = True) -> bool: ...
    def AdjustCurveSegment(self, C3D: Geom_Curve, P1: gp_Pnt, P2: gp_Pnt, U1: float, U2: float) -> bool: ...
    @overload
    def ConvertToBSpline(self, C: Geom_Curve, first: float, last: float, prec: float) -> Geom_BSplineCurve: ...
    @overload
    def ConvertToBSpline(self, C: Geom2d_Curve, first: float, last: float, prec: float) -> Geom2d_BSplineCurve: ...
    @overload
    @staticmethod
    def FixKnots(knots: TColStd_HArray1OfReal) -> bool: ...
    @overload
    @staticmethod
    def FixKnots(knots: TColStd_Array1OfReal) -> bool: ...

class ShapeConstruct_MakeTriangulation(BRepBuilderAPI_MakeShape):
    @overload
    def __init__(self, pnts: TColgp_Array1OfPnt, prec: Optional[float] = 0.0) -> None: ...
    @overload
    def __init__(self, wire: TopoDS_Wire, prec: Optional[float] = 0.0) -> None: ...
    def Build(self, theRange: Optional[Message_ProgressRange] = Message_ProgressRange()) -> None: ...
    def IsDone(self) -> bool: ...

class ShapeConstruct_ProjectCurveOnSurface(Standard_Transient):
    def __init__(self) -> None: ...
    def GetAdjustOverDegenMode(self) -> int: ...
    def SetAdjustOverDegenMode(self, value: int) -> None: ...
    def GetBuildCurveMode(self) -> bool: ...
    def SetBuildCurveMode(self, value: bool) -> None: ...
    @overload
    def Init(self, surf: Geom_Surface, preci: float) -> None: ...
    @overload
    def Init(self, surf: ShapeAnalysis_Surface, preci: float) -> None: ...
    def Perform(self, c3d: Geom_Curve, First: float, Last: float, c2d: Geom2d_Curve, TolFirst: Optional[float] = -1, TolLast: Optional[float] = -1) -> bool: ...
    def PerformByProjLib(self, c3d: Geom_Curve, First: float, Last: float, c2d: Geom2d_Curve, continuity: Optional[GeomAbs_Shape] = GeomAbs_C1, maxdeg: Optional[int] = 12, nbinterval: Optional[int] = -1) -> bool: ...
    def SetPrecision(self, preci: float) -> None: ...
    @overload
    def SetSurface(self, surf: Geom_Surface) -> None: ...
    @overload
    def SetSurface(self, surf: ShapeAnalysis_Surface) -> None: ...
    def Status(self, theStatus: ShapeExtend_Status) -> bool: ...

# harray1 classes
# harray2 classes
# hsequence classes

shapeconstruct_ConvertCurveToBSpline = shapeconstruct.ConvertCurveToBSpline
shapeconstruct_ConvertCurveToBSpline = shapeconstruct.ConvertCurveToBSpline
shapeconstruct_ConvertSurfaceToBSpline = shapeconstruct.ConvertSurfaceToBSpline
shapeconstruct_JoinCurves = shapeconstruct.JoinCurves
shapeconstruct_JoinCurves = shapeconstruct.JoinCurves
shapeconstruct_JoinPCurves = shapeconstruct.JoinPCurves
ShapeConstruct_Curve_FixKnots = ShapeConstruct_Curve.FixKnots
ShapeConstruct_Curve_FixKnots = ShapeConstruct_Curve.FixKnots
