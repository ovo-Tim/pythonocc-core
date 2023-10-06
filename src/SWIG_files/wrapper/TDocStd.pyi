from enum import IntEnum
from typing import overload, NewType, Optional, Tuple

from OCC.Core.Standard import *
from OCC.Core.NCollection import *
from OCC.Core.TDF import *
from OCC.Core.CDF import *
from OCC.Core.TCollection import *
from OCC.Core.PCDM import *
from OCC.Core.CDM import *
from OCC.Core.Message import *
from OCC.Core.TColStd import *
from OCC.Core.Resource import *

TDocStd_XLinkPtr = NewType('TDocStd_XLinkPtr', TDocStd_XLink)

class TDocStd_SequenceOfApplicationDelta:
    def __init__(self) -> None: ...
    def __len__(self) -> int: ...
    def Size(self) -> int: ...
    def Clear(self) -> None: ...
    def First(self) -> False: ...
    def Last(self) -> False: ...
    def Length(self) -> int: ...
    def Append(self, theItem: False) -> False: ...
    def Prepend(self, theItem: False) -> False: ...
    def RemoveFirst(self) -> None: ...
    def Reverse(self) -> None: ...
    def Value(self, theIndex: int) -> False: ...
    def SetValue(self, theIndex: int, theValue: False) -> None: ...

class TDocStd_SequenceOfDocument:
    def __init__(self) -> None: ...
    def __len__(self) -> int: ...
    def Size(self) -> int: ...
    def Clear(self) -> None: ...
    def First(self) -> False: ...
    def Last(self) -> False: ...
    def Length(self) -> int: ...
    def Append(self, theItem: False) -> False: ...
    def Prepend(self, theItem: False) -> False: ...
    def RemoveFirst(self) -> None: ...
    def Reverse(self) -> None: ...
    def Value(self, theIndex: int) -> False: ...
    def SetValue(self, theIndex: int, theValue: False) -> None: ...


class TDocStd_FormatVersion(IntEnum):
    TDocStd_FormatVersion_VERSION_2: int = ...
    TDocStd_FormatVersion_VERSION_3: int = ...
    TDocStd_FormatVersion_VERSION_4: int = ...
    TDocStd_FormatVersion_VERSION_5: int = ...
    TDocStd_FormatVersion_VERSION_6: int = ...
    TDocStd_FormatVersion_VERSION_7: int = ...
    TDocStd_FormatVersion_VERSION_8: int = ...
    TDocStd_FormatVersion_VERSION_9: int = ...
    TDocStd_FormatVersion_VERSION_10: int = ...
    TDocStd_FormatVersion_VERSION_11: int = ...
    TDocStd_FormatVersion_VERSION_12: int = ...
    TDocStd_FormatVersion_CURRENT: int = ...

TDocStd_FormatVersion_VERSION_2 = TDocStd_FormatVersion.TDocStd_FormatVersion_VERSION_2
TDocStd_FormatVersion_VERSION_3 = TDocStd_FormatVersion.TDocStd_FormatVersion_VERSION_3
TDocStd_FormatVersion_VERSION_4 = TDocStd_FormatVersion.TDocStd_FormatVersion_VERSION_4
TDocStd_FormatVersion_VERSION_5 = TDocStd_FormatVersion.TDocStd_FormatVersion_VERSION_5
TDocStd_FormatVersion_VERSION_6 = TDocStd_FormatVersion.TDocStd_FormatVersion_VERSION_6
TDocStd_FormatVersion_VERSION_7 = TDocStd_FormatVersion.TDocStd_FormatVersion_VERSION_7
TDocStd_FormatVersion_VERSION_8 = TDocStd_FormatVersion.TDocStd_FormatVersion_VERSION_8
TDocStd_FormatVersion_VERSION_9 = TDocStd_FormatVersion.TDocStd_FormatVersion_VERSION_9
TDocStd_FormatVersion_VERSION_10 = TDocStd_FormatVersion.TDocStd_FormatVersion_VERSION_10
TDocStd_FormatVersion_VERSION_11 = TDocStd_FormatVersion.TDocStd_FormatVersion_VERSION_11
TDocStd_FormatVersion_VERSION_12 = TDocStd_FormatVersion.TDocStd_FormatVersion_VERSION_12
TDocStd_FormatVersion_CURRENT = TDocStd_FormatVersion.TDocStd_FormatVersion_CURRENT

class tdocstd:
    @staticmethod
    def IDList(anIDList: TDF_IDList) -> None: ...

class TDocStd_Application(CDF_Application):
    def __init__(self) -> None: ...
    def Close(self, aDoc: TDocStd_Document) -> None: ...
    def DefineFormat(self, theFormat: str, theDescription: str, theExtension: str, theReader: PCDM_RetrievalDriver, theWriter: PCDM_StorageDriver) -> None: ...
    def GetDocument(self, index: int, aDoc: TDocStd_Document) -> None: ...
    def InitDocument(self, aDoc: CDM_Document) -> None: ...
    def IsDriverLoaded(self) -> bool: ...
    def IsInSession(self, path: str) -> int: ...
    def NbDocuments(self) -> int: ...
    @overload
    def NewDocument(self, format: str, aDoc: CDM_Document) -> None: ...
    @overload
    def NewDocument(self, format: str, aDoc: TDocStd_Document) -> None: ...
    def OnAbortTransaction(self, theDoc: TDocStd_Document) -> None: ...
    def OnCommitTransaction(self, theDoc: TDocStd_Document) -> None: ...
    def OnOpenTransaction(self, theDoc: TDocStd_Document) -> None: ...
    @overload
    def Open(self, thePath: str, theDoc: TDocStd_Document, theFilter: PCDM_ReaderFilter, theRange: Optional[Message_ProgressRange] = Message_ProgressRange()) -> PCDM_ReaderStatus: ...
    @overload
    def Open(self, thePath: str, theDoc: TDocStd_Document, theRange: Optional[Message_ProgressRange] = Message_ProgressRange()) -> PCDM_ReaderStatus: ...
    def ReadingFormats(self, theFormats: TColStd_SequenceOfAsciiString) -> None: ...
    def Resources(self) -> Resource_Manager: ...
    def ResourcesName(self) -> str: ...
    @overload
    def Save(self, theDoc: TDocStd_Document, theRange: Optional[Message_ProgressRange] = Message_ProgressRange()) -> PCDM_StoreStatus: ...
    @overload
    def Save(self, theDoc: TDocStd_Document, theStatusMessage: str, theRange: Optional[Message_ProgressRange] = Message_ProgressRange()) -> PCDM_StoreStatus: ...
    @overload
    def SaveAs(self, theDoc: TDocStd_Document, path: str, theRange: Optional[Message_ProgressRange] = Message_ProgressRange()) -> PCDM_StoreStatus: ...
    @overload
    def SaveAs(self, theDoc: TDocStd_Document, path: str, theStatusMessage: str, theRange: Optional[Message_ProgressRange] = Message_ProgressRange()) -> PCDM_StoreStatus: ...
    def WritingFormats(self, theFormats: TColStd_SequenceOfAsciiString) -> None: ...

class TDocStd_ApplicationDelta(Standard_Transient):
    def __init__(self) -> None: ...
    def GetDocuments(self) -> TDocStd_SequenceOfDocument: ...
    def GetName(self) -> str: ...
    def SetName(self, theName: str) -> None: ...

class TDocStd_CompoundDelta(TDF_Delta):
    def __init__(self) -> None: ...

class TDocStd_Context:
    def __init__(self) -> None: ...
    def ModifiedReferences(self) -> bool: ...
    def SetModifiedReferences(self, Mod: bool) -> None: ...

class TDocStd_Document(CDM_Document):
    def __init__(self, astorageformat: str) -> None: ...
    def AbortCommand(self) -> None: ...
    def BeforeClose(self) -> None: ...
    def ChangeStorageFormat(self, newStorageFormat: str) -> None: ...
    def ChangeStorageFormatVersion(self, theVersion: TDocStd_FormatVersion) -> None: ...
    def ClearRedos(self) -> None: ...
    def ClearUndos(self) -> None: ...
    def CommitCommand(self) -> bool: ...
    @staticmethod
    def CurrentStorageFormatVersion() -> TDocStd_FormatVersion: ...
    def EmptyLabelsSavingMode(self) -> bool: ...
    @staticmethod
    def Get(L: TDF_Label) -> TDocStd_Document: ...
    def GetAvailableRedos(self) -> int: ...
    def GetAvailableUndos(self) -> int: ...
    def GetData(self) -> TDF_Data: ...
    def GetModified(self) -> TDF_LabelMap: ...
    def GetName(self) -> str: ...
    def GetPath(self) -> str: ...
    def GetRedos(self) -> TDF_DeltaList: ...
    def GetSavedTime(self) -> int: ...
    def GetUndoLimit(self) -> int: ...
    def GetUndos(self) -> TDF_DeltaList: ...
    def HasOpenCommand(self) -> bool: ...
    def InitDeltaCompaction(self) -> bool: ...
    def IsChanged(self) -> bool: ...
    def IsEmpty(self) -> bool: ...
    def IsNestedTransactionMode(self) -> bool: ...
    def IsSaved(self) -> bool: ...
    def IsValid(self) -> bool: ...
    def Main(self) -> TDF_Label: ...
    def ModificationMode(self) -> bool: ...
    def NewCommand(self) -> None: ...
    def OpenCommand(self) -> None: ...
    def PerformDeltaCompaction(self) -> bool: ...
    def PurgeModified(self) -> None: ...
    def Recompute(self) -> None: ...
    def Redo(self) -> bool: ...
    def RemoveFirstUndo(self) -> None: ...
    def SetData(self, data: TDF_Data) -> None: ...
    def SetEmptyLabelsSavingMode(self, isAllowed: bool) -> None: ...
    def SetModificationMode(self, theTransactionOnly: bool) -> None: ...
    def SetModified(self, L: TDF_Label) -> None: ...
    def SetNestedTransactionMode(self, isAllowed: Optional[bool] = True) -> None: ...
    def SetSaved(self) -> None: ...
    def SetSavedTime(self, theTime: int) -> None: ...
    def SetUndoLimit(self, L: int) -> None: ...
    def StorageFormat(self) -> str: ...
    def StorageFormatVersion(self) -> TDocStd_FormatVersion: ...
    def Undo(self) -> bool: ...
    def Update(self, aToDocument: CDM_Document, aReferenceIdentifier: int, aModifContext: None) -> None: ...
    def UpdateReferences(self, aDocEntry: str) -> None: ...

class TDocStd_Modified(TDF_Attribute):
    def __init__(self) -> None: ...
    @staticmethod
    def Add(alabel: TDF_Label) -> bool: ...
    def AddLabel(self, L: TDF_Label) -> bool: ...
    @overload
    @staticmethod
    def Clear(access: TDF_Label) -> None: ...
    @overload
    def Clear(self) -> None: ...
    @staticmethod
    def Contains(alabel: TDF_Label) -> bool: ...
    @overload
    @staticmethod
    def Get(access: TDF_Label) -> TDF_LabelMap: ...
    @overload
    def Get(self) -> TDF_LabelMap: ...
    @staticmethod
    def GetID() -> Standard_GUID: ...
    def ID(self) -> Standard_GUID: ...
    @overload
    @staticmethod
    def IsEmpty(access: TDF_Label) -> bool: ...
    @overload
    def IsEmpty(self) -> bool: ...
    def NewEmpty(self) -> TDF_Attribute: ...
    def Paste(self, Into: TDF_Attribute, RT: TDF_RelocationTable) -> None: ...
    @staticmethod
    def Remove(alabel: TDF_Label) -> bool: ...
    def RemoveLabel(self, L: TDF_Label) -> bool: ...
    def Restore(self, With: TDF_Attribute) -> None: ...

class TDocStd_MultiTransactionManager(Standard_Transient):
    def __init__(self) -> None: ...
    def AbortCommand(self) -> None: ...
    def AddDocument(self, theDoc: TDocStd_Document) -> None: ...
    def ClearRedos(self) -> None: ...
    def ClearUndos(self) -> None: ...
    @overload
    def CommitCommand(self) -> bool: ...
    @overload
    def CommitCommand(self, theName: str) -> bool: ...
    def Documents(self) -> TDocStd_SequenceOfDocument: ...
    def GetAvailableRedos(self) -> TDocStd_SequenceOfApplicationDelta: ...
    def GetAvailableUndos(self) -> TDocStd_SequenceOfApplicationDelta: ...
    def GetUndoLimit(self) -> int: ...
    def HasOpenCommand(self) -> bool: ...
    def IsNestedTransactionMode(self) -> bool: ...
    def ModificationMode(self) -> bool: ...
    def OpenCommand(self) -> None: ...
    def Redo(self) -> None: ...
    def RemoveDocument(self, theDoc: TDocStd_Document) -> None: ...
    def RemoveLastUndo(self) -> None: ...
    def SetModificationMode(self, theTransactionOnly: bool) -> None: ...
    def SetNestedTransactionMode(self, isAllowed: Optional[bool] = True) -> None: ...
    def SetUndoLimit(self, theLimit: int) -> None: ...
    def Undo(self) -> None: ...

class TDocStd_Owner(TDF_Attribute):
    def __init__(self) -> None: ...
    @overload
    @staticmethod
    def GetDocument(ofdata: TDF_Data) -> TDocStd_Document: ...
    @overload
    def GetDocument(self) -> TDocStd_Document: ...
    @staticmethod
    def GetID() -> Standard_GUID: ...
    def ID(self) -> Standard_GUID: ...
    def NewEmpty(self) -> TDF_Attribute: ...
    def Paste(self, Into: TDF_Attribute, RT: TDF_RelocationTable) -> None: ...
    def Restore(self, With: TDF_Attribute) -> None: ...
    @overload
    @staticmethod
    def SetDocument(indata: TDF_Data, doc: TDocStd_Document) -> None: ...
    @overload
    @staticmethod
    def SetDocument(indata: TDF_Data, doc: TDocStd_Document) -> None: ...
    @overload
    def SetDocument(self, document: TDocStd_Document) -> None: ...
    @overload
    def SetDocument(self, document: TDocStd_Document) -> None: ...

class TDocStd_PathParser:
    def __init__(self, path: str) -> None: ...
    def Extension(self) -> str: ...
    def Length(self) -> int: ...
    def Name(self) -> str: ...
    def Parse(self) -> None: ...
    def Path(self) -> str: ...
    def Trek(self) -> str: ...

class TDocStd_XLink(TDF_Attribute):
    def __init__(self) -> None: ...
    def AfterAddition(self) -> None: ...
    def AfterUndo(self, anAttDelta: TDF_AttributeDelta, forceIt: Optional[bool] = False) -> bool: ...
    def BackupCopy(self) -> TDF_Attribute: ...
    def BeforeRemoval(self) -> None: ...
    def BeforeUndo(self, anAttDelta: TDF_AttributeDelta, forceIt: Optional[bool] = False) -> bool: ...
    @overload
    def DocumentEntry(self, aDocEntry: str) -> None: ...
    @overload
    def DocumentEntry(self) -> str: ...
    @staticmethod
    def GetID() -> Standard_GUID: ...
    def ID(self) -> Standard_GUID: ...
    @overload
    def LabelEntry(self, aLabel: TDF_Label) -> None: ...
    @overload
    def LabelEntry(self, aLabEntry: str) -> None: ...
    @overload
    def LabelEntry(self) -> str: ...
    def NewEmpty(self) -> TDF_Attribute: ...
    def Paste(self, intoAttribute: TDF_Attribute, aRelocationTable: TDF_RelocationTable) -> None: ...
    def Restore(self, anAttribute: TDF_Attribute) -> None: ...
    @staticmethod
    def Set(atLabel: TDF_Label) -> TDocStd_XLink: ...
    def Update(self) -> TDF_Reference: ...

class TDocStd_XLinkIterator:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, D: TDocStd_Document) -> None: ...
    def Initialize(self, D: TDocStd_Document) -> None: ...
    def More(self) -> bool: ...
    def Next(self) -> None: ...
    def Value(self) -> TDocStd_XLinkPtr: ...

class TDocStd_XLinkRoot(TDF_Attribute):
    def BackupCopy(self) -> TDF_Attribute: ...
    @staticmethod
    def GetID() -> Standard_GUID: ...
    def ID(self) -> Standard_GUID: ...
    @staticmethod
    def Insert(anXLinkPtr: TDocStd_XLinkPtr) -> None: ...
    def NewEmpty(self) -> TDF_Attribute: ...
    def Paste(self, intoAttribute: TDF_Attribute, aRelocationTable: TDF_RelocationTable) -> None: ...
    @staticmethod
    def Remove(anXLinkPtr: TDocStd_XLinkPtr) -> None: ...
    def Restore(self, anAttribute: TDF_Attribute) -> None: ...
    @staticmethod
    def Set(aDF: TDF_Data) -> TDocStd_XLinkRoot: ...

class TDocStd_XLinkTool:
    def __init__(self) -> None: ...
    def Copy(self, intarget: TDF_Label, fromsource: TDF_Label) -> None: ...
    def CopyWithLink(self, intarget: TDF_Label, fromsource: TDF_Label) -> None: ...
    def DataSet(self) -> TDF_DataSet: ...
    def IsDone(self) -> bool: ...
    def RelocationTable(self) -> TDF_RelocationTable: ...
    def UpdateLink(self, L: TDF_Label) -> None: ...

# harray1 classes
# harray2 classes
# hsequence classes

