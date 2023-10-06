from enum import IntEnum
from typing import overload, NewType, Optional, Tuple

from OCC.Core.Standard import *
from OCC.Core.NCollection import *
from OCC.Core.TopoDS import *
from OCC.Core.gp import *
from OCC.Core.Geom import *
from OCC.Core.TColgp import *
from OCC.Core.TopAbs import *
from OCC.Core.BOPAlgo import *
from OCC.Core.TopTools import *
from OCC.Core.Message import *
from OCC.Core.BRepBuilderAPI import *
from OCC.Core.TColGeom import *
from OCC.Core.LocOpe import *


class BRepFeat_PerfSelection(IntEnum):
    BRepFeat_NoSelection: int = ...
    BRepFeat_SelectionFU: int = ...
    BRepFeat_SelectionU: int = ...
    BRepFeat_SelectionSh: int = ...
    BRepFeat_SelectionShU: int = ...

BRepFeat_NoSelection = BRepFeat_PerfSelection.BRepFeat_NoSelection
BRepFeat_SelectionFU = BRepFeat_PerfSelection.BRepFeat_SelectionFU
BRepFeat_SelectionU = BRepFeat_PerfSelection.BRepFeat_SelectionU
BRepFeat_SelectionSh = BRepFeat_PerfSelection.BRepFeat_SelectionSh
BRepFeat_SelectionShU = BRepFeat_PerfSelection.BRepFeat_SelectionShU

class BRepFeat_Status(IntEnum):
    BRepFeat_NoError: int = ...
    BRepFeat_InvalidPlacement: int = ...
    BRepFeat_HoleTooLong: int = ...

BRepFeat_NoError = BRepFeat_Status.BRepFeat_NoError
BRepFeat_InvalidPlacement = BRepFeat_Status.BRepFeat_InvalidPlacement
BRepFeat_HoleTooLong = BRepFeat_Status.BRepFeat_HoleTooLong

class BRepFeat_StatusError(IntEnum):
    BRepFeat_OK: int = ...
    BRepFeat_BadDirect: int = ...
    BRepFeat_BadIntersect: int = ...
    BRepFeat_EmptyBaryCurve: int = ...
    BRepFeat_EmptyCutResult: int = ...
    BRepFeat_FalseSide: int = ...
    BRepFeat_IncDirection: int = ...
    BRepFeat_IncSlidFace: int = ...
    BRepFeat_IncParameter: int = ...
    BRepFeat_IncTypes: int = ...
    BRepFeat_IntervalOverlap: int = ...
    BRepFeat_InvFirstShape: int = ...
    BRepFeat_InvOption: int = ...
    BRepFeat_InvShape: int = ...
    BRepFeat_LocOpeNotDone: int = ...
    BRepFeat_LocOpeInvNotDone: int = ...
    BRepFeat_NoExtFace: int = ...
    BRepFeat_NoFaceProf: int = ...
    BRepFeat_NoGluer: int = ...
    BRepFeat_NoIntersectF: int = ...
    BRepFeat_NoIntersectU: int = ...
    BRepFeat_NoParts: int = ...
    BRepFeat_NoProjPt: int = ...
    BRepFeat_NotInitialized: int = ...
    BRepFeat_NotYetImplemented: int = ...
    BRepFeat_NullRealTool: int = ...
    BRepFeat_NullToolF: int = ...
    BRepFeat_NullToolU: int = ...

BRepFeat_OK = BRepFeat_StatusError.BRepFeat_OK
BRepFeat_BadDirect = BRepFeat_StatusError.BRepFeat_BadDirect
BRepFeat_BadIntersect = BRepFeat_StatusError.BRepFeat_BadIntersect
BRepFeat_EmptyBaryCurve = BRepFeat_StatusError.BRepFeat_EmptyBaryCurve
BRepFeat_EmptyCutResult = BRepFeat_StatusError.BRepFeat_EmptyCutResult
BRepFeat_FalseSide = BRepFeat_StatusError.BRepFeat_FalseSide
BRepFeat_IncDirection = BRepFeat_StatusError.BRepFeat_IncDirection
BRepFeat_IncSlidFace = BRepFeat_StatusError.BRepFeat_IncSlidFace
BRepFeat_IncParameter = BRepFeat_StatusError.BRepFeat_IncParameter
BRepFeat_IncTypes = BRepFeat_StatusError.BRepFeat_IncTypes
BRepFeat_IntervalOverlap = BRepFeat_StatusError.BRepFeat_IntervalOverlap
BRepFeat_InvFirstShape = BRepFeat_StatusError.BRepFeat_InvFirstShape
BRepFeat_InvOption = BRepFeat_StatusError.BRepFeat_InvOption
BRepFeat_InvShape = BRepFeat_StatusError.BRepFeat_InvShape
BRepFeat_LocOpeNotDone = BRepFeat_StatusError.BRepFeat_LocOpeNotDone
BRepFeat_LocOpeInvNotDone = BRepFeat_StatusError.BRepFeat_LocOpeInvNotDone
BRepFeat_NoExtFace = BRepFeat_StatusError.BRepFeat_NoExtFace
BRepFeat_NoFaceProf = BRepFeat_StatusError.BRepFeat_NoFaceProf
BRepFeat_NoGluer = BRepFeat_StatusError.BRepFeat_NoGluer
BRepFeat_NoIntersectF = BRepFeat_StatusError.BRepFeat_NoIntersectF
BRepFeat_NoIntersectU = BRepFeat_StatusError.BRepFeat_NoIntersectU
BRepFeat_NoParts = BRepFeat_StatusError.BRepFeat_NoParts
BRepFeat_NoProjPt = BRepFeat_StatusError.BRepFeat_NoProjPt
BRepFeat_NotInitialized = BRepFeat_StatusError.BRepFeat_NotInitialized
BRepFeat_NotYetImplemented = BRepFeat_StatusError.BRepFeat_NotYetImplemented
BRepFeat_NullRealTool = BRepFeat_StatusError.BRepFeat_NullRealTool
BRepFeat_NullToolF = BRepFeat_StatusError.BRepFeat_NullToolF
BRepFeat_NullToolU = BRepFeat_StatusError.BRepFeat_NullToolU

class brepfeat:
    @staticmethod
    def Barycenter(S: TopoDS_Shape, Pt: gp_Pnt) -> None: ...
    @staticmethod
    def FaceUntil(S: TopoDS_Shape, F: TopoDS_Face) -> None: ...
    @staticmethod
    def IsInside(F1: TopoDS_Face, F2: TopoDS_Face) -> bool: ...
    @staticmethod
    def ParametricBarycenter(S: TopoDS_Shape, C: Geom_Curve) -> float: ...
    @staticmethod
    def ParametricMinMax(S: TopoDS_Shape, C: Geom_Curve, Ori: Optional[bool] = False) -> Tuple[float, float, float, float, bool]: ...
    @staticmethod
    def SampleEdges(S: TopoDS_Shape, Pt: TColgp_SequenceOfPnt) -> None: ...
    @staticmethod
    def Tool(SRef: TopoDS_Shape, Fac: TopoDS_Face, Orf: TopAbs_Orientation) -> TopoDS_Solid: ...

class BRepFeat_Builder(BOPAlgo_BOP):
    def __init__(self) -> None: ...
    def CheckSolidImages(self) -> None: ...
    def Clear(self) -> None: ...
    @overload
    def FillRemoved(self) -> None: ...
    @overload
    def FillRemoved(self, theS: TopoDS_Shape, theM: TopTools_MapOfShape) -> None: ...
    @overload
    def Init(self, theShape: TopoDS_Shape) -> None: ...
    @overload
    def Init(self, theShape: TopoDS_Shape, theTool: TopoDS_Shape) -> None: ...
    def KeepPart(self, theS: TopoDS_Shape) -> None: ...
    def KeepParts(self, theIm: TopTools_ListOfShape) -> None: ...
    def PartsOfTool(self, theLT: TopTools_ListOfShape) -> None: ...
    def PerformResult(self, theRange: Optional[Message_ProgressRange] = Message_ProgressRange()) -> None: ...
    def RebuildEdge(self, theE: TopoDS_Shape, theF: TopoDS_Face, theME: TopTools_MapOfShape, aLEIm: TopTools_ListOfShape) -> None: ...
    def RebuildFaces(self) -> None: ...
    @overload
    def SetOperation(self, theFuse: int) -> None: ...
    @overload
    def SetOperation(self, theFuse: int, theFlag: bool) -> None: ...

class BRepFeat_Form(BRepBuilderAPI_MakeShape):
    def BarycCurve(self) -> Geom_Curve: ...
    def BasisShapeValid(self) -> None: ...
    def CurrentStatusError(self) -> BRepFeat_StatusError: ...
    def Curves(self, S: TColGeom_SequenceOfCurve) -> None: ...
    def FirstShape(self) -> TopTools_ListOfShape: ...
    def Generated(self, S: TopoDS_Shape) -> TopTools_ListOfShape: ...
    def GeneratedShapeValid(self) -> None: ...
    def GluedFacesValid(self) -> None: ...
    def IsDeleted(self, S: TopoDS_Shape) -> bool: ...
    def LastShape(self) -> TopTools_ListOfShape: ...
    def Modified(self, F: TopoDS_Shape) -> TopTools_ListOfShape: ...
    def NewEdges(self) -> TopTools_ListOfShape: ...
    def PerfSelectionValid(self) -> None: ...
    def ShapeFromValid(self) -> None: ...
    def ShapeUntilValid(self) -> None: ...
    def SketchFaceValid(self) -> None: ...
    def TgtEdges(self) -> TopTools_ListOfShape: ...

class BRepFeat_Gluer(BRepBuilderAPI_MakeShape):
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, Snew: TopoDS_Shape, Sbase: TopoDS_Shape) -> None: ...
    def BasisShape(self) -> TopoDS_Shape: ...
    @overload
    def Bind(self, Fnew: TopoDS_Face, Fbase: TopoDS_Face) -> None: ...
    @overload
    def Bind(self, Enew: TopoDS_Edge, Ebase: TopoDS_Edge) -> None: ...
    def Build(self, theRange: Optional[Message_ProgressRange] = Message_ProgressRange()) -> None: ...
    def GluedShape(self) -> TopoDS_Shape: ...
    def Init(self, Snew: TopoDS_Shape, Sbase: TopoDS_Shape) -> None: ...
    def IsDeleted(self, F: TopoDS_Shape) -> bool: ...
    def Modified(self, F: TopoDS_Shape) -> TopTools_ListOfShape: ...
    def OpeType(self) -> LocOpe_Operation: ...

class BRepFeat_RibSlot(BRepBuilderAPI_MakeShape):
    @staticmethod
    def ChoiceOfFaces(faces: TopTools_ListOfShape, cc: Geom_Curve, par: float, bnd: float, Pln: Geom_Plane) -> TopoDS_Face: ...
    def CurrentStatusError(self) -> BRepFeat_StatusError: ...
    def FacesForDraft(self) -> TopTools_ListOfShape: ...
    def FirstShape(self) -> TopTools_ListOfShape: ...
    def Generated(self, S: TopoDS_Shape) -> TopTools_ListOfShape: ...
    @staticmethod
    def IntPar(C: Geom_Curve, P: gp_Pnt) -> float: ...
    def IsDeleted(self, F: TopoDS_Shape) -> bool: ...
    def LastShape(self) -> TopTools_ListOfShape: ...
    def Modified(self, F: TopoDS_Shape) -> TopTools_ListOfShape: ...
    def NewEdges(self) -> TopTools_ListOfShape: ...
    def TgtEdges(self) -> TopTools_ListOfShape: ...

class BRepFeat_SplitShape(BRepBuilderAPI_MakeShape):
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, S: TopoDS_Shape) -> None: ...
    @overload
    def Add(self, theEdges: TopTools_SequenceOfShape) -> bool: ...
    @overload
    def Add(self, W: TopoDS_Wire, F: TopoDS_Face) -> None: ...
    @overload
    def Add(self, E: TopoDS_Edge, F: TopoDS_Face) -> None: ...
    @overload
    def Add(self, Comp: TopoDS_Compound, F: TopoDS_Face) -> None: ...
    @overload
    def Add(self, E: TopoDS_Edge, EOn: TopoDS_Edge) -> None: ...
    def Build(self, theRange: Optional[Message_ProgressRange] = Message_ProgressRange()) -> None: ...
    def DirectLeft(self) -> TopTools_ListOfShape: ...
    def Init(self, S: TopoDS_Shape) -> None: ...
    def IsDeleted(self, S: TopoDS_Shape) -> bool: ...
    def Left(self) -> TopTools_ListOfShape: ...
    def Modified(self, F: TopoDS_Shape) -> TopTools_ListOfShape: ...
    def Right(self) -> TopTools_ListOfShape: ...
    def SetCheckInterior(self, ToCheckInterior: bool) -> None: ...

class BRepFeat_MakeCylindricalHole(BRepFeat_Builder):
    def __init__(self) -> None: ...
    def Build(self) -> None: ...
    @overload
    def Init(self, Axis: gp_Ax1) -> None: ...
    @overload
    def Init(self, S: TopoDS_Shape, Axis: gp_Ax1) -> None: ...
    @overload
    def Perform(self, Radius: float) -> None: ...
    @overload
    def Perform(self, Radius: float, PFrom: float, PTo: float, WithControl: Optional[bool] = True) -> None: ...
    def PerformBlind(self, Radius: float, Length: float, WithControl: Optional[bool] = True) -> None: ...
    def PerformThruNext(self, Radius: float, WithControl: Optional[bool] = True) -> None: ...
    def PerformUntilEnd(self, Radius: float, WithControl: Optional[bool] = True) -> None: ...
    def Status(self) -> BRepFeat_Status: ...

class BRepFeat_MakeDPrism(BRepFeat_Form):
    @overload
    def __init__(self, Sbase: TopoDS_Shape, Pbase: TopoDS_Face, Skface: TopoDS_Face, Angle: float, Fuse: int, Modify: bool) -> None: ...
    @overload
    def __init__(self) -> None: ...
    def Add(self, E: TopoDS_Edge, OnFace: TopoDS_Face) -> None: ...
    def BarycCurve(self) -> Geom_Curve: ...
    def BossEdges(self, sig: int) -> None: ...
    def Curves(self, S: TColGeom_SequenceOfCurve) -> None: ...
    def Init(self, Sbase: TopoDS_Shape, Pbase: TopoDS_Face, Skface: TopoDS_Face, Angle: float, Fuse: int, Modify: bool) -> None: ...
    def LatEdges(self) -> TopTools_ListOfShape: ...
    @overload
    def Perform(self, Height: float) -> None: ...
    @overload
    def Perform(self, Until: TopoDS_Shape) -> None: ...
    @overload
    def Perform(self, From: TopoDS_Shape, Until: TopoDS_Shape) -> None: ...
    def PerformFromEnd(self, FUntil: TopoDS_Shape) -> None: ...
    def PerformThruAll(self) -> None: ...
    def PerformUntilEnd(self) -> None: ...
    def PerformUntilHeight(self, Until: TopoDS_Shape, Height: float) -> None: ...
    def TopEdges(self) -> TopTools_ListOfShape: ...

class BRepFeat_MakeLinearForm(BRepFeat_RibSlot):
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, Sbase: TopoDS_Shape, W: TopoDS_Wire, P: Geom_Plane, Direction: gp_Vec, Direction1: gp_Vec, Fuse: int, Modify: bool) -> None: ...
    def Add(self, E: TopoDS_Edge, OnFace: TopoDS_Face) -> None: ...
    def Init(self, Sbase: TopoDS_Shape, W: TopoDS_Wire, P: Geom_Plane, Direction: gp_Vec, Direction1: gp_Vec, Fuse: int, Modify: bool) -> None: ...
    def Perform(self) -> None: ...
    def Propagate(self, L: TopTools_ListOfShape, F: TopoDS_Face, FPoint: gp_Pnt, LPoint: gp_Pnt) -> Tuple[bool, bool]: ...

class BRepFeat_MakePipe(BRepFeat_Form):
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, Sbase: TopoDS_Shape, Pbase: TopoDS_Shape, Skface: TopoDS_Face, Spine: TopoDS_Wire, Fuse: int, Modify: bool) -> None: ...
    def Add(self, E: TopoDS_Edge, OnFace: TopoDS_Face) -> None: ...
    def BarycCurve(self) -> Geom_Curve: ...
    def Curves(self, S: TColGeom_SequenceOfCurve) -> None: ...
    def Init(self, Sbase: TopoDS_Shape, Pbase: TopoDS_Shape, Skface: TopoDS_Face, Spine: TopoDS_Wire, Fuse: int, Modify: bool) -> None: ...
    @overload
    def Perform(self) -> None: ...
    @overload
    def Perform(self, Until: TopoDS_Shape) -> None: ...
    @overload
    def Perform(self, From: TopoDS_Shape, Until: TopoDS_Shape) -> None: ...

class BRepFeat_MakePrism(BRepFeat_Form):
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, Sbase: TopoDS_Shape, Pbase: TopoDS_Shape, Skface: TopoDS_Face, Direction: gp_Dir, Fuse: int, Modify: bool) -> None: ...
    def Add(self, E: TopoDS_Edge, OnFace: TopoDS_Face) -> None: ...
    def BarycCurve(self) -> Geom_Curve: ...
    def Curves(self, S: TColGeom_SequenceOfCurve) -> None: ...
    def Init(self, Sbase: TopoDS_Shape, Pbase: TopoDS_Shape, Skface: TopoDS_Face, Direction: gp_Dir, Fuse: int, Modify: bool) -> None: ...
    @overload
    def Perform(self, Length: float) -> None: ...
    @overload
    def Perform(self, Until: TopoDS_Shape) -> None: ...
    @overload
    def Perform(self, From: TopoDS_Shape, Until: TopoDS_Shape) -> None: ...
    def PerformFromEnd(self, FUntil: TopoDS_Shape) -> None: ...
    def PerformThruAll(self) -> None: ...
    def PerformUntilEnd(self) -> None: ...
    def PerformUntilHeight(self, Until: TopoDS_Shape, Length: float) -> None: ...

class BRepFeat_MakeRevol(BRepFeat_Form):
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, Sbase: TopoDS_Shape, Pbase: TopoDS_Shape, Skface: TopoDS_Face, Axis: gp_Ax1, Fuse: int, Modify: bool) -> None: ...
    def Add(self, E: TopoDS_Edge, OnFace: TopoDS_Face) -> None: ...
    def BarycCurve(self) -> Geom_Curve: ...
    def Curves(self, S: TColGeom_SequenceOfCurve) -> None: ...
    def Init(self, Sbase: TopoDS_Shape, Pbase: TopoDS_Shape, Skface: TopoDS_Face, Axis: gp_Ax1, Fuse: int, Modify: bool) -> None: ...
    @overload
    def Perform(self, Angle: float) -> None: ...
    @overload
    def Perform(self, Until: TopoDS_Shape) -> None: ...
    @overload
    def Perform(self, From: TopoDS_Shape, Until: TopoDS_Shape) -> None: ...
    def PerformThruAll(self) -> None: ...
    def PerformUntilAngle(self, Until: TopoDS_Shape, Angle: float) -> None: ...

class BRepFeat_MakeRevolutionForm(BRepFeat_RibSlot):
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, Sbase: TopoDS_Shape, W: TopoDS_Wire, Plane: Geom_Plane, Axis: gp_Ax1, Height1: float, Height2: float, Fuse: int) -> bool: ...
    def Add(self, E: TopoDS_Edge, OnFace: TopoDS_Face) -> None: ...
    def Init(self, Sbase: TopoDS_Shape, W: TopoDS_Wire, Plane: Geom_Plane, Axis: gp_Ax1, Height1: float, Height2: float, Fuse: int) -> bool: ...
    def Perform(self) -> None: ...
    def Propagate(self, L: TopTools_ListOfShape, F: TopoDS_Face, FPoint: gp_Pnt, LPoint: gp_Pnt) -> Tuple[bool, bool]: ...

# harray1 classes
# harray2 classes
# hsequence classes

