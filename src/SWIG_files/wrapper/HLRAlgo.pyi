from enum import IntEnum
from typing import overload, NewType, Optional, Tuple

from OCC.Core.Standard import *
from OCC.Core.NCollection import *
from OCC.Core.TopAbs import *
from OCC.Core.TColgp import *
from OCC.Core.gp import *


class HLRAlgo_Array1OfPINod:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, theLower: int, theUpper: int) -> None: ...
    def __getitem__(self, index: int) -> False: ...
    def __setitem__(self, index: int, value: False) -> None: ...
    def __len__(self) -> int: ...
    def __iter__(self) -> Iterator[False]: ...
    def next(self) -> False: ...
    __next__ = next
    def Init(self, theValue: False) -> None: ...
    def Size(self) -> int: ...
    def Length(self) -> int: ...
    def IsEmpty(self) -> bool: ...
    def Lower(self) -> int: ...
    def Upper(self) -> int: ...
    def IsDetectable(self) -> bool: ...
    def IsAllocated(self) -> bool: ...
    def First(self) -> False: ...
    def Last(self) -> False: ...
    def Value(self, theIndex: int) -> False: ...
    def SetValue(self, theIndex: int, theValue: False) -> None: ...

class HLRAlgo_Array1OfPISeg:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, theLower: int, theUpper: int) -> None: ...
    def __getitem__(self, index: int) -> HLRAlgo_PolyInternalSegment: ...
    def __setitem__(self, index: int, value: HLRAlgo_PolyInternalSegment) -> None: ...
    def __len__(self) -> int: ...
    def __iter__(self) -> Iterator[HLRAlgo_PolyInternalSegment]: ...
    def next(self) -> HLRAlgo_PolyInternalSegment: ...
    __next__ = next
    def Init(self, theValue: HLRAlgo_PolyInternalSegment) -> None: ...
    def Size(self) -> int: ...
    def Length(self) -> int: ...
    def IsEmpty(self) -> bool: ...
    def Lower(self) -> int: ...
    def Upper(self) -> int: ...
    def IsDetectable(self) -> bool: ...
    def IsAllocated(self) -> bool: ...
    def First(self) -> HLRAlgo_PolyInternalSegment: ...
    def Last(self) -> HLRAlgo_PolyInternalSegment: ...
    def Value(self, theIndex: int) -> HLRAlgo_PolyInternalSegment: ...
    def SetValue(self, theIndex: int, theValue: HLRAlgo_PolyInternalSegment) -> None: ...

class HLRAlgo_Array1OfTData:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, theLower: int, theUpper: int) -> None: ...
    def __getitem__(self, index: int) -> HLRAlgo_TriangleData: ...
    def __setitem__(self, index: int, value: HLRAlgo_TriangleData) -> None: ...
    def __len__(self) -> int: ...
    def __iter__(self) -> Iterator[HLRAlgo_TriangleData]: ...
    def next(self) -> HLRAlgo_TriangleData: ...
    __next__ = next
    def Init(self, theValue: HLRAlgo_TriangleData) -> None: ...
    def Size(self) -> int: ...
    def Length(self) -> int: ...
    def IsEmpty(self) -> bool: ...
    def Lower(self) -> int: ...
    def Upper(self) -> int: ...
    def IsDetectable(self) -> bool: ...
    def IsAllocated(self) -> bool: ...
    def First(self) -> HLRAlgo_TriangleData: ...
    def Last(self) -> HLRAlgo_TriangleData: ...
    def Value(self, theIndex: int) -> HLRAlgo_TriangleData: ...
    def SetValue(self, theIndex: int, theValue: HLRAlgo_TriangleData) -> None: ...

class HLRAlgo_InterferenceList:
    def __init__(self) -> None: ...
    def __len__(self) -> int: ...
    def Size(self) -> int: ...
    def Clear(self) -> None: ...
    def First(self) -> HLRAlgo_Interference: ...
    def Last(self) -> HLRAlgo_Interference: ...
    def Append(self, theItem: HLRAlgo_Interference) -> HLRAlgo_Interference: ...
    def Prepend(self, theItem: HLRAlgo_Interference) -> HLRAlgo_Interference: ...
    def RemoveFirst(self) -> None: ...
    def Reverse(self) -> None: ...
    def Value(self, theIndex: int) -> HLRAlgo_Interference: ...
    def SetValue(self, theIndex: int, theValue: HLRAlgo_Interference) -> None: ...

class HLRAlgo_ListOfBPoint:
    def __init__(self) -> None: ...
    def __len__(self) -> int: ...
    def Size(self) -> int: ...
    def Clear(self) -> None: ...
    def First(self) -> HLRAlgo_BiPoint: ...
    def Last(self) -> HLRAlgo_BiPoint: ...
    def Append(self, theItem: HLRAlgo_BiPoint) -> HLRAlgo_BiPoint: ...
    def Prepend(self, theItem: HLRAlgo_BiPoint) -> HLRAlgo_BiPoint: ...
    def RemoveFirst(self) -> None: ...
    def Reverse(self) -> None: ...
    def Value(self, theIndex: int) -> HLRAlgo_BiPoint: ...
    def SetValue(self, theIndex: int, theValue: HLRAlgo_BiPoint) -> None: ...

class HLRAlgo_PolyMask(IntEnum):
    HLRAlgo_PolyMask_EMskOutLin1: int = ...
    HLRAlgo_PolyMask_EMskOutLin2: int = ...
    HLRAlgo_PolyMask_EMskOutLin3: int = ...
    HLRAlgo_PolyMask_EMskGrALin1: int = ...
    HLRAlgo_PolyMask_EMskGrALin2: int = ...
    HLRAlgo_PolyMask_EMskGrALin3: int = ...
    HLRAlgo_PolyMask_FMskBack: int = ...
    HLRAlgo_PolyMask_FMskSide: int = ...
    HLRAlgo_PolyMask_FMskHiding: int = ...
    HLRAlgo_PolyMask_FMskFlat: int = ...
    HLRAlgo_PolyMask_FMskOnOutL: int = ...
    HLRAlgo_PolyMask_FMskOrBack: int = ...
    HLRAlgo_PolyMask_FMskFrBack: int = ...

HLRAlgo_PolyMask_EMskOutLin1 = HLRAlgo_PolyMask.HLRAlgo_PolyMask_EMskOutLin1
HLRAlgo_PolyMask_EMskOutLin2 = HLRAlgo_PolyMask.HLRAlgo_PolyMask_EMskOutLin2
HLRAlgo_PolyMask_EMskOutLin3 = HLRAlgo_PolyMask.HLRAlgo_PolyMask_EMskOutLin3
HLRAlgo_PolyMask_EMskGrALin1 = HLRAlgo_PolyMask.HLRAlgo_PolyMask_EMskGrALin1
HLRAlgo_PolyMask_EMskGrALin2 = HLRAlgo_PolyMask.HLRAlgo_PolyMask_EMskGrALin2
HLRAlgo_PolyMask_EMskGrALin3 = HLRAlgo_PolyMask.HLRAlgo_PolyMask_EMskGrALin3
HLRAlgo_PolyMask_FMskBack = HLRAlgo_PolyMask.HLRAlgo_PolyMask_FMskBack
HLRAlgo_PolyMask_FMskSide = HLRAlgo_PolyMask.HLRAlgo_PolyMask_FMskSide
HLRAlgo_PolyMask_FMskHiding = HLRAlgo_PolyMask.HLRAlgo_PolyMask_FMskHiding
HLRAlgo_PolyMask_FMskFlat = HLRAlgo_PolyMask.HLRAlgo_PolyMask_FMskFlat
HLRAlgo_PolyMask_FMskOnOutL = HLRAlgo_PolyMask.HLRAlgo_PolyMask_FMskOnOutL
HLRAlgo_PolyMask_FMskOrBack = HLRAlgo_PolyMask.HLRAlgo_PolyMask_FMskOrBack
HLRAlgo_PolyMask_FMskFrBack = HLRAlgo_PolyMask.HLRAlgo_PolyMask_FMskFrBack

class hlralgo:
    @staticmethod
    def EnlargeMinMax(tol: float, Min_list: List[float], Max_list: List[float]) -> None: ...
    @staticmethod
    def InitMinMax(Big: float, Min_list: List[float], Max_list: List[float]) -> None: ...
    @staticmethod
    def UpdateMinMax(x: float, y: float, z: float, Min_list: List[float], Max_list: List[float]) -> None: ...

class HLRAlgo_BiPoint:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, X1: float, Y1: float, Z1: float, X2: float, Y2: float, Z2: float, XT1: float, YT1: float, ZT1: float, XT2: float, YT2: float, ZT2: float, Index: int, reg1: bool, regn: bool, outl: bool, intl: bool) -> None: ...
    @overload
    def __init__(self, X1: float, Y1: float, Z1: float, X2: float, Y2: float, Z2: float, XT1: float, YT1: float, ZT1: float, XT2: float, YT2: float, ZT2: float, Index: int, flag: int) -> None: ...
    @overload
    def __init__(self, X1: float, Y1: float, Z1: float, X2: float, Y2: float, Z2: float, XT1: float, YT1: float, ZT1: float, XT2: float, YT2: float, ZT2: float, Index: int, i1: int, i1p1: int, i1p2: int, reg1: bool, regn: bool, outl: bool, intl: bool) -> None: ...
    @overload
    def __init__(self, X1: float, Y1: float, Z1: float, X2: float, Y2: float, Z2: float, XT1: float, YT1: float, ZT1: float, XT2: float, YT2: float, ZT2: float, Index: int, i1: int, i1p1: int, i1p2: int, flag: int) -> None: ...
    @overload
    def __init__(self, X1: float, Y1: float, Z1: float, X2: float, Y2: float, Z2: float, XT1: float, YT1: float, ZT1: float, XT2: float, YT2: float, ZT2: float, Index: int, i1: int, i1p1: int, i1p2: int, i2: int, i2p1: int, i2p2: int, reg1: bool, regn: bool, outl: bool, intl: bool) -> None: ...
    @overload
    def __init__(self, X1: float, Y1: float, Z1: float, X2: float, Y2: float, Z2: float, XT1: float, YT1: float, ZT1: float, XT2: float, YT2: float, ZT2: float, Index: int, i1: int, i1p1: int, i1p2: int, i2: int, i2p1: int, i2p2: int, flag: int) -> None: ...
    @overload
    def Hidden(self) -> bool: ...
    @overload
    def Hidden(self, B: bool) -> None: ...
    @overload
    def IntLine(self) -> bool: ...
    @overload
    def IntLine(self, B: bool) -> None: ...
    @overload
    def OutLine(self) -> bool: ...
    @overload
    def OutLine(self, B: bool) -> None: ...
    @overload
    def Rg1Line(self) -> bool: ...
    @overload
    def Rg1Line(self, B: bool) -> None: ...
    @overload
    def RgNLine(self) -> bool: ...
    @overload
    def RgNLine(self, B: bool) -> None: ...

class HLRAlgo_Coincidence:
    def __init__(self) -> None: ...
    def Set2D(self, FE: int, Param: float) -> None: ...
    def SetState3D(self, stbef: TopAbs_State, staft: TopAbs_State) -> None: ...
    def State3D(self) -> Tuple[TopAbs_State, TopAbs_State]: ...
    def Value2D(self) -> Tuple[int, float]: ...

class HLRAlgo_EdgeIterator:
    def __init__(self) -> None: ...
    def Hidden(self) -> Tuple[float, float, float, float]: ...
    def InitHidden(self, status: HLRAlgo_EdgeStatus) -> None: ...
    def InitVisible(self, status: HLRAlgo_EdgeStatus) -> None: ...
    def MoreHidden(self) -> bool: ...
    def MoreVisible(self) -> bool: ...
    def NextHidden(self) -> None: ...
    def NextVisible(self) -> None: ...
    def Visible(self) -> Tuple[float, float, float, float]: ...

class HLRAlgo_EdgeStatus:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, Start: float, TolStart: float, End: float, TolEnd: float) -> None: ...
    @overload
    def AllHidden(self) -> bool: ...
    @overload
    def AllHidden(self, B: bool) -> None: ...
    @overload
    def AllVisible(self) -> bool: ...
    @overload
    def AllVisible(self, B: bool) -> None: ...
    def Bounds(self) -> Tuple[float, float, float, float]: ...
    def Hide(self, Start: float, TolStart: float, End: float, TolEnd: float, OnFace: bool, OnBoundary: bool) -> None: ...
    def HideAll(self) -> None: ...
    def Initialize(self, Start: float, TolStart: float, End: float, TolEnd: float) -> None: ...
    def NbVisiblePart(self) -> int: ...
    def ShowAll(self) -> None: ...
    def VisiblePart(self, Index: int) -> Tuple[float, float, float, float]: ...

class HLRAlgo_EdgesBlock(Standard_Transient):
    def __init__(self, NbEdges: int) -> None: ...
    @overload
    def Double(self, I: int) -> bool: ...
    @overload
    def Double(self, I: int, B: bool) -> None: ...
    @overload
    def Edge(self, I: int, EI: int) -> None: ...
    @overload
    def Edge(self, I: int) -> int: ...
    @overload
    def Internal(self, I: int) -> bool: ...
    @overload
    def Internal(self, I: int, B: bool) -> None: ...
    @overload
    def IsoLine(self, I: int) -> bool: ...
    @overload
    def IsoLine(self, I: int, B: bool) -> None: ...
    def MinMax(self) -> False: ...
    def NbEdges(self) -> int: ...
    @overload
    def Orientation(self, I: int, Or: TopAbs_Orientation) -> None: ...
    @overload
    def Orientation(self, I: int) -> TopAbs_Orientation: ...
    @overload
    def OutLine(self, I: int) -> bool: ...
    @overload
    def OutLine(self, I: int, B: bool) -> None: ...

class HLRAlgo_Interference:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, Inters: HLRAlgo_Intersection, Bound: HLRAlgo_Coincidence, Orient: TopAbs_Orientation, Trans: TopAbs_Orientation, BTrans: TopAbs_Orientation) -> None: ...
    @overload
    def Boundary(self, B: HLRAlgo_Coincidence) -> None: ...
    @overload
    def Boundary(self) -> HLRAlgo_Coincidence: ...
    @overload
    def BoundaryTransition(self, BTr: TopAbs_Orientation) -> None: ...
    @overload
    def BoundaryTransition(self) -> TopAbs_Orientation: ...
    def ChangeBoundary(self) -> HLRAlgo_Coincidence: ...
    def ChangeIntersection(self) -> HLRAlgo_Intersection: ...
    @overload
    def Intersection(self, I: HLRAlgo_Intersection) -> None: ...
    @overload
    def Intersection(self) -> HLRAlgo_Intersection: ...
    @overload
    def Orientation(self, O: TopAbs_Orientation) -> None: ...
    @overload
    def Orientation(self) -> TopAbs_Orientation: ...
    @overload
    def Transition(self, Tr: TopAbs_Orientation) -> None: ...
    @overload
    def Transition(self) -> TopAbs_Orientation: ...

class HLRAlgo_Intersection:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, Ori: TopAbs_Orientation, Lev: int, SegInd: int, Ind: int, P: float, Tol: float, S: TopAbs_State) -> None: ...
    @overload
    def Index(self, Ind: int) -> None: ...
    @overload
    def Index(self) -> int: ...
    @overload
    def Level(self, Lev: int) -> None: ...
    @overload
    def Level(self) -> int: ...
    @overload
    def Orientation(self, Ori: TopAbs_Orientation) -> None: ...
    @overload
    def Orientation(self) -> TopAbs_Orientation: ...
    @overload
    def Parameter(self, P: float) -> None: ...
    @overload
    def Parameter(self) -> float: ...
    @overload
    def SegIndex(self, SegInd: int) -> None: ...
    @overload
    def SegIndex(self) -> int: ...
    @overload
    def State(self, S: TopAbs_State) -> None: ...
    @overload
    def State(self) -> TopAbs_State: ...
    @overload
    def Tolerance(self, T: float) -> None: ...
    @overload
    def Tolerance(self) -> float: ...

class HLRAlgo_PolyAlgo(Standard_Transient):
    def __init__(self) -> None: ...
    def ChangePolyShell(self) -> False: ...
    def Clear(self) -> None: ...
    def Hide(self, status: HLRAlgo_EdgeStatus) -> Tuple[False, int, bool, bool, bool, bool]: ...
    def Init(self, theNbShells: int) -> None: ...
    def InitHide(self) -> None: ...
    def InitShow(self) -> None: ...
    def MoreHide(self) -> bool: ...
    def MoreShow(self) -> bool: ...
    def NextHide(self) -> None: ...
    def NextShow(self) -> None: ...
    def PolyShell(self) -> False: ...
    def Show(self) -> Tuple[False, int, bool, bool, bool, bool]: ...
    def Update(self) -> None: ...

class HLRAlgo_PolyData(Standard_Transient):
    def __init__(self) -> None: ...
    @overload
    def FaceIndex(self, I: int) -> None: ...
    @overload
    def FaceIndex(self) -> int: ...
    def HNodes(self, HNodes: TColgp_HArray1OfXYZ) -> None: ...
    def HPHDat(self, HPHDat: HLRAlgo_HArray1OfPHDat) -> None: ...
    def HTData(self, HTData: HLRAlgo_HArray1OfTData) -> None: ...
    def Hiding(self) -> bool: ...
    def Nodes(self) -> TColgp_Array1OfXYZ: ...
    def PHDat(self) -> HLRAlgo_Array1OfPHDat: ...
    def TData(self) -> HLRAlgo_Array1OfTData: ...

class HLRAlgo_PolyInternalData(Standard_Transient):
    def __init__(self, nbNod: int, nbTri: int) -> None: ...
    def DecPINod(self) -> None: ...
    def DecPISeg(self) -> None: ...
    def DecTData(self) -> None: ...
    def Dump(self) -> None: ...
    def IncPINod(self, thePINod1: HLRAlgo_Array1OfPINod, thePINod2: HLRAlgo_Array1OfPINod) -> None: ...
    def IncPISeg(self, PISeg1: HLRAlgo_Array1OfPISeg, PISeg2: HLRAlgo_Array1OfPISeg) -> None: ...
    def IncTData(self, TData1: HLRAlgo_Array1OfTData, TData2: HLRAlgo_Array1OfTData) -> None: ...
    @overload
    def IntOutL(self) -> bool: ...
    @overload
    def IntOutL(self, B: bool) -> None: ...
    def NbPINod(self) -> int: ...
    def NbPISeg(self) -> int: ...
    def NbTData(self) -> int: ...
    def PINod(self) -> HLRAlgo_Array1OfPINod: ...
    def PISeg(self) -> HLRAlgo_Array1OfPISeg: ...
    @overload
    def Planar(self) -> bool: ...
    @overload
    def Planar(self, B: bool) -> None: ...
    def TData(self) -> HLRAlgo_Array1OfTData: ...
    @overload
    def UpdateLinks(self, theTData: HLRAlgo_Array1OfTData, thePISeg: HLRAlgo_Array1OfPISeg, thePINod: HLRAlgo_Array1OfPINod) -> None: ...
    @overload
    def UpdateLinks(self, theIp1: int, theIp2: int, theIp3: int, theTData1: HLRAlgo_Array1OfTData, theTData2: HLRAlgo_Array1OfTData, thePISeg1: HLRAlgo_Array1OfPISeg, thePISeg2: HLRAlgo_Array1OfPISeg, thePINod1: HLRAlgo_Array1OfPINod, thePINod2: HLRAlgo_Array1OfPINod) -> None: ...

class HLRAlgo_PolyInternalNode(Standard_Transient):
    def __init__(self) -> None: ...

class HLRAlgo_PolyShellData(Standard_Transient):
    def __init__(self, nbFace: int) -> None: ...
    def Edges(self) -> HLRAlgo_ListOfBPoint: ...
    def Hiding(self) -> bool: ...
    def HidingPolyData(self) -> False: ...
    def PolyData(self) -> False: ...
    def UpdateHiding(self, nbHiding: int) -> None: ...

class HLRAlgo_Projector:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, CS: gp_Ax2) -> None: ...
    @overload
    def __init__(self, CS: gp_Ax2, Focus: float) -> None: ...
    @overload
    def __init__(self, T: gp_Trsf, Persp: bool, Focus: float) -> None: ...
    @overload
    def __init__(self, T: gp_Trsf, Persp: bool, Focus: float, v1: gp_Vec2d, v2: gp_Vec2d, v3: gp_Vec2d) -> None: ...
    def Directions(self, D1: gp_Vec2d, D2: gp_Vec2d, D3: gp_Vec2d) -> None: ...
    def Focus(self) -> float: ...
    def FullTransformation(self) -> gp_Trsf: ...
    def InvertedTransformation(self) -> gp_Trsf: ...
    def Perspective(self) -> bool: ...
    @overload
    def Project(self, P: gp_Pnt, Pout: gp_Pnt2d) -> None: ...
    @overload
    def Project(self, P: gp_Pnt) -> Tuple[float, float, float]: ...
    @overload
    def Project(self, P: gp_Pnt, D1: gp_Vec, Pout: gp_Pnt2d, D1out: gp_Vec2d) -> None: ...
    def Scaled(self, On: Optional[bool] = False) -> None: ...
    def Set(self, T: gp_Trsf, Persp: bool, Focus: float) -> None: ...
    def Shoot(self, X: float, Y: float) -> gp_Lin: ...
    @overload
    def Transform(self, D: gp_Vec) -> None: ...
    @overload
    def Transform(self, Pnt: gp_Pnt) -> None: ...
    def Transformation(self) -> gp_Trsf: ...

class HLRAlgo_WiresBlock(Standard_Transient):
    def __init__(self, NbWires: int) -> None: ...
    def MinMax(self) -> False: ...
    def NbWires(self) -> int: ...
    def Set(self, I: int, W: HLRAlgo_EdgesBlock) -> None: ...
    def Wire(self, I: int) -> HLRAlgo_EdgesBlock: ...

#classnotwrapped
class HLRAlgo_TriangleData: ...

#classnotwrapped
class HLRAlgo_PolyInternalSegment: ...

#classnotwrapped
class HLRAlgo_PolyHidingData: ...

# harray1 classes

class HLRAlgo_HArray1OfPISeg(HLRAlgo_Array1OfPISeg, Standard_Transient):
    def __init__(self, theLower: int, theUpper: int) -> None: ...
    def Array1(self) -> HLRAlgo_Array1OfPISeg: ...


class HLRAlgo_HArray1OfPINod(HLRAlgo_Array1OfPINod, Standard_Transient):
    def __init__(self, theLower: int, theUpper: int) -> None: ...
    def Array1(self) -> HLRAlgo_Array1OfPINod: ...


class HLRAlgo_HArray1OfPHDat(HLRAlgo_Array1OfPHDat, Standard_Transient):
    def __init__(self, theLower: int, theUpper: int) -> None: ...
    def Array1(self) -> HLRAlgo_Array1OfPHDat: ...


class HLRAlgo_HArray1OfTData(HLRAlgo_Array1OfTData, Standard_Transient):
    def __init__(self, theLower: int, theUpper: int) -> None: ...
    def Array1(self) -> HLRAlgo_Array1OfTData: ...

# harray2 classes
# hsequence classes

