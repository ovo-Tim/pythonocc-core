/*
Copyright 2008-2019 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.
pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.
*/

/*
This file was automatically generated using the pythonocc_generator, see
https://github.com/tpaviot/pythonocc-generator.

This file is platform independant, but was generated under the following
conditions:

- operating system : debian Linux 4.15.0-66-generic
- occt version targeted : 7.4.0
*/

%define CDFDOCSTRING
"CDF module, see official documentation at
https://www.opencascade.com/doc/occt-7.4.0/refman/html/package_CDF.html"
%enddef
%module (package="OCC.Core", docstring=CDFDOCSTRING) CDF

#pragma SWIG nowarn=504,325,503,520,350,351,383,389,394,395, 404

%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%include ../common/CommonIncludes.i
%include ../common/ExceptionCatcher.i
%include ../common/FunctionTransformers.i
%include ../common/Operators.i
%include ../common/OccHandle.i


%include CDF_headers.i

/* public enums */
enum CDF_TypeOfActivation {
	CDF_TOA_New = 0,
	CDF_TOA_Modified = 1,
	CDF_TOA_Unchanged = 2,
};

enum CDF_TryStoreStatus {
	CDF_TS_OK = 0,
	CDF_TS_NoCurrentDocument = 1,
	CDF_TS_NoDriver = 2,
	CDF_TS_NoSubComponentDriver = 3,
};

enum CDF_SubComponentStatus {
	CDF_SCS_Consistent = 0,
	CDF_SCS_Unconsistent = 1,
	CDF_SCS_Stored = 2,
	CDF_SCS_Modified = 3,
};

enum CDF_StoreSetNameStatus {
	CDF_SSNS_OK = 0,
	CDF_SSNS_ReplacingAnExistentDocument = 1,
	CDF_SSNS_OpenDocument = 2,
};

/* end public enums declaration */

/* handles */
%wrap_handle(CDF_Application)
%wrap_handle(CDF_Directory)
%wrap_handle(CDF_MetaDataDriver)
%wrap_handle(CDF_MetaDataDriverFactory)
%wrap_handle(CDF_Session)
%wrap_handle(CDF_StoreList)
%wrap_handle(CDF_FWOSDriver)
/* end handles declaration */

/* templates */
/* end templates declaration */

/* typedefs */
/* end typedefs declaration */

%rename(cdf) CDF;
%nodefaultctor CDF;
class CDF {
	public:
		%feature("compactdefaultargs") GetLicense;
		%feature("autodoc", "	:param anApplicationIdentifier:
	:type anApplicationIdentifier: int
	:rtype: void
") GetLicense;
		static void GetLicense (const Standard_Integer anApplicationIdentifier);
		%feature("compactdefaultargs") IsAvailable;
		%feature("autodoc", "	:param anApplicationIdentifier:
	:type anApplicationIdentifier: int
	:rtype: bool
") IsAvailable;
		static Standard_Boolean IsAvailable (const Standard_Integer anApplicationIdentifier);
};


%extend CDF {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor CDF_Application;
class CDF_Application : public CDM_Application {
	public:
		%feature("compactdefaultargs") CanClose;
		%feature("autodoc", "	:param aDocument:
	:type aDocument: opencascade::handle<CDM_Document> &
	:rtype: CDM_CanCloseStatus
") CanClose;
		CDM_CanCloseStatus CanClose (const opencascade::handle<CDM_Document> & aDocument);
		%feature("compactdefaultargs") CanRetrieve;
		%feature("autodoc", "	:param aFolder:
	:type aFolder: TCollection_ExtendedString &
	:param aName:
	:type aName: TCollection_ExtendedString &
	:rtype: PCDM_ReaderStatus
") CanRetrieve;
		PCDM_ReaderStatus CanRetrieve (const TCollection_ExtendedString & aFolder,const TCollection_ExtendedString & aName);
		%feature("compactdefaultargs") CanRetrieve;
		%feature("autodoc", "	:param aFolder:
	:type aFolder: TCollection_ExtendedString &
	:param aName:
	:type aName: TCollection_ExtendedString &
	:param aVersion:
	:type aVersion: TCollection_ExtendedString &
	:rtype: PCDM_ReaderStatus
") CanRetrieve;
		PCDM_ReaderStatus CanRetrieve (const TCollection_ExtendedString & aFolder,const TCollection_ExtendedString & aName,const TCollection_ExtendedString & aVersion);
		%feature("compactdefaultargs") Close;
		%feature("autodoc", "	* removes the document of the current session directory and closes the document;

	:param aDocument:
	:type aDocument: opencascade::handle<CDM_Document> &
	:rtype: None
") Close;
		void Close (const opencascade::handle<CDM_Document> & aDocument);
		%feature("compactdefaultargs") DefaultFolder;
		%feature("autodoc", "	:rtype: Standard_ExtString
") DefaultFolder;
		Standard_ExtString DefaultFolder ();
		%feature("compactdefaultargs") Format;
		%feature("autodoc", "	* try to retrieve a Format directly in the file or in application resource by using extension. returns True if found;

	:param aFileName:
	:type aFileName: TCollection_ExtendedString &
	:param theFormat:
	:type theFormat: TCollection_ExtendedString &
	:rtype: bool
") Format;
		Standard_Boolean Format (const TCollection_ExtendedString & aFileName,TCollection_ExtendedString & theFormat);
		%feature("compactdefaultargs") GetRetrieveStatus;
		%feature("autodoc", "	* Checks status after Retrieve

	:rtype: PCDM_ReaderStatus
") GetRetrieveStatus;
		PCDM_ReaderStatus GetRetrieveStatus ();
		%feature("compactdefaultargs") Load;
		%feature("autodoc", "	* plugs an application. //! Open is used - for opening a Document that has been created in an application - for opening a Document from the database - for opening a Document from a file. The Open methods always add the document in the session directory and calls the virtual Activate method. The document is considered to be opened until Close is used. To be storable, a document must be opened by an application since the application resources are needed to store it.

	:param aGUID:
	:type aGUID: Standard_GUID &
	:rtype: opencascade::handle<CDF_Application>
") Load;
		static opencascade::handle<CDF_Application> Load (const Standard_GUID & aGUID);
		%feature("compactdefaultargs") Open;
		%feature("autodoc", "	* puts the document in the current session directory and calls the virtual method Activate on it.

	:param aDocument:
	:type aDocument: opencascade::handle<CDM_Document> &
	:rtype: None
") Open;
		void Open (const opencascade::handle<CDM_Document> & aDocument);

        %feature("autodoc", "1");
        %extend{
            void ReadFromString(std::string src) {
            std::stringstream s(src);
            self->Read(s);}
        };
        		%feature("compactdefaultargs") ReaderFromFormat;
		%feature("autodoc", "	* Returns instance of read driver for specified format. //! Default implementation uses plugin mechanism to load reader dynamically. For this to work, application resources should define GUID of the plugin as value of [Format].RetrievalPlugin, and 'Plugin' resource should define name of plugin library to be loaded as value of [GUID].Location. Plugin library should provide method PLUGINFACTORY returning instance of the reader for the same GUID (see Plugin_Macro.hxx). //! In case if reader is not available, will raise Standard_NoSuchObject or other exception if raised by plugin loader.

	:param aFormat:
	:type aFormat: TCollection_ExtendedString &
	:rtype: opencascade::handle<PCDM_Reader>
") ReaderFromFormat;
		virtual opencascade::handle<PCDM_Reader> ReaderFromFormat (const TCollection_ExtendedString & aFormat);
		%feature("compactdefaultargs") Retrieve;
		%feature("autodoc", "	* This method retrieves a document from the database. If the Document references other documents which have been updated, the latest version of these documents will be used if {UseStorageConfiguration} is Standard_True. The content of {aFolder}, {aName} and {aVersion} depends on the Database Manager system. If the DBMS is only based on the OS, {aFolder} is a directory and {aName} is the name of a file. In this case the use of the syntax with {aVersion} has no sense. For example: //! opencascade::handle<CDM_Document> theDocument=myApplication->Retrieve('/home/cascade','box.dsg'); If the DBMS is EUCLID/Design Manager, {aFolder}, {aName} have the form they have in EUCLID/Design Manager. For example: //! opencascade::handle<CDM_Document> theDocument=myApplication->Retrieve('|user|cascade','box'); //! Since the version is not specified in this syntax, the latest wil be used. A link is kept with the database through an instance of CDM_MetaData

	:param aFolder:
	:type aFolder: TCollection_ExtendedString &
	:param aName:
	:type aName: TCollection_ExtendedString &
	:param UseStorageConfiguration: default value is Standard_True
	:type UseStorageConfiguration: bool
	:rtype: opencascade::handle<CDM_Document>
") Retrieve;
		opencascade::handle<CDM_Document> Retrieve (const TCollection_ExtendedString & aFolder,const TCollection_ExtendedString & aName,const Standard_Boolean UseStorageConfiguration = Standard_True);
		%feature("compactdefaultargs") Retrieve;
		%feature("autodoc", "	* This method retrieves a document from the database. If the Document references other documents which have been updated, the latest version of these documents will be used if {UseStorageConfiguration} is Standard_True. -- If the DBMS is only based on the OS, this syntax should not be used. //! If the DBMS is EUCLID/Design Manager, {aFolder}, {aName} and {aVersion} have the form they have in EUCLID/Design Manager. For example: //! opencascade::handle<CDM_Document> theDocument=myApplication->Retrieve('|user|cascade','box','2'); A link is kept with the database through an instance of CDM_MetaData

	:param aFolder:
	:type aFolder: TCollection_ExtendedString &
	:param aName:
	:type aName: TCollection_ExtendedString &
	:param aVersion:
	:type aVersion: TCollection_ExtendedString &
	:param UseStorageConfiguration: default value is Standard_True
	:type UseStorageConfiguration: bool
	:rtype: opencascade::handle<CDM_Document>
") Retrieve;
		opencascade::handle<CDM_Document> Retrieve (const TCollection_ExtendedString & aFolder,const TCollection_ExtendedString & aName,const TCollection_ExtendedString & aVersion,const Standard_Boolean UseStorageConfiguration = Standard_True);
		%feature("compactdefaultargs") SetDefaultFolder;
		%feature("autodoc", "	:param aFolder:
	:type aFolder: Standard_ExtString
	:rtype: bool
") SetDefaultFolder;
		Standard_Boolean SetDefaultFolder (const Standard_ExtString aFolder);
		%feature("compactdefaultargs") WriterFromFormat;
		%feature("autodoc", "	* Returns instance of storage driver for specified format. //! Default implementation uses plugin mechanism to load driver dynamically. For this to work, application resources should define GUID of the plugin as value of [Format].StoragePlugin, and 'Plugin' resource should define name of plugin library to be loaded as value of [GUID].Location. Plugin library should provide method PLUGINFACTORY returning instance of the reader for the same GUID (see Plugin_Macro.hxx). //! In case if driver is not available, will raise Standard_NoSuchObject or other exception if raised by plugin loader.

	:param aFormat:
	:type aFormat: TCollection_ExtendedString &
	:rtype: opencascade::handle<PCDM_StorageDriver>
") WriterFromFormat;
		virtual opencascade::handle<PCDM_StorageDriver> WriterFromFormat (const TCollection_ExtendedString & aFormat);
};


%make_alias(CDF_Application)

%extend CDF_Application {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor CDF_Directory;
class CDF_Directory : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Add;
		%feature("autodoc", "	* adds a document into the directory.

	:param aDocument:
	:type aDocument: opencascade::handle<CDM_Document> &
	:rtype: None
") Add;
		void Add (const opencascade::handle<CDM_Document> & aDocument);
		%feature("compactdefaultargs") CDF_Directory;
		%feature("autodoc", "	* Creates an empty directory.

	:rtype: None
") CDF_Directory;
		 CDF_Directory ();
		%feature("compactdefaultargs") Contains;
		%feature("autodoc", "	* Returns true if the document aDocument is in the directory

	:param aDocument:
	:type aDocument: opencascade::handle<CDM_Document> &
	:rtype: bool
") Contains;
		Standard_Boolean Contains (const opencascade::handle<CDM_Document> & aDocument);
		%feature("compactdefaultargs") IsEmpty;
		%feature("autodoc", "	* returns true if the directory is empty.

	:rtype: bool
") IsEmpty;
		Standard_Boolean IsEmpty ();
		%feature("compactdefaultargs") Last;
		%feature("autodoc", "	* returns the last document (if any) which has been added in the directory.

	:rtype: opencascade::handle<CDM_Document>
") Last;
		opencascade::handle<CDM_Document> Last ();
		%feature("compactdefaultargs") Length;
		%feature("autodoc", "	* returns the number of documents of the directory.

	:rtype: int
") Length;
		Standard_Integer Length ();
		%feature("compactdefaultargs") Remove;
		%feature("autodoc", "	* removes the document.

	:param aDocument:
	:type aDocument: opencascade::handle<CDM_Document> &
	:rtype: None
") Remove;
		void Remove (const opencascade::handle<CDM_Document> & aDocument);
};


%make_alias(CDF_Directory)

%extend CDF_Directory {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor CDF_DirectoryIterator;
class CDF_DirectoryIterator {
	public:
		%feature("compactdefaultargs") CDF_DirectoryIterator;
		%feature("autodoc", "	* creates an Iterator with the directory of the current CDF.

	:rtype: None
") CDF_DirectoryIterator;
		 CDF_DirectoryIterator ();
		%feature("compactdefaultargs") CDF_DirectoryIterator;
		%feature("autodoc", "	:param aDirectory:
	:type aDirectory: opencascade::handle<CDF_Directory> &
	:rtype: None
") CDF_DirectoryIterator;
		 CDF_DirectoryIterator (const opencascade::handle<CDF_Directory> & aDirectory);
		%feature("compactdefaultargs") Document;
		%feature("autodoc", "	* Returns item value of current entry

	:rtype: opencascade::handle<CDM_Document>
") Document;
		opencascade::handle<CDM_Document> Document ();
		%feature("compactdefaultargs") MoreDocument;
		%feature("autodoc", "	* Returns True if there are more entries to return

	:rtype: bool
") MoreDocument;
		Standard_Boolean MoreDocument ();
		%feature("compactdefaultargs") NextDocument;
		%feature("autodoc", "	* Go to the next entry (if there is not, Value will raise an exception)

	:rtype: None
") NextDocument;
		void NextDocument ();
};


%extend CDF_DirectoryIterator {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor CDF_MetaDataDriver;
class CDF_MetaDataDriver : public Standard_Transient {
	public:
		%feature("compactdefaultargs") BuildFileName;
		%feature("autodoc", "	:param aDocument:
	:type aDocument: opencascade::handle<CDM_Document> &
	:rtype: TCollection_ExtendedString
") BuildFileName;
		virtual TCollection_ExtendedString BuildFileName (const opencascade::handle<CDM_Document> & aDocument);
		%feature("compactdefaultargs") CreateDependsOn;
		%feature("autodoc", "	* Creates a 'Depends On' relation between two Datas. By default does nothing

	:param aFirstData:
	:type aFirstData: opencascade::handle<CDM_MetaData> &
	:param aSecondData:
	:type aSecondData: opencascade::handle<CDM_MetaData> &
	:rtype: void
") CreateDependsOn;
		virtual void CreateDependsOn (const opencascade::handle<CDM_MetaData> & aFirstData,const opencascade::handle<CDM_MetaData> & aSecondData);
		%feature("compactdefaultargs") CreateMetaData;
		%feature("autodoc", "	* should create meta-data corresponding to aData and maintaining a meta-link between these meta-data and aFileName CreateMetaData is called by CreateData If the metadata-driver has version capabilities, version must be set in the returned Data.

	:param aDocument:
	:type aDocument: opencascade::handle<CDM_Document> &
	:param aFileName:
	:type aFileName: TCollection_ExtendedString &
	:rtype: opencascade::handle<CDM_MetaData>
") CreateMetaData;
		virtual opencascade::handle<CDM_MetaData> CreateMetaData (const opencascade::handle<CDM_Document> & aDocument,const TCollection_ExtendedString & aFileName);
		%feature("compactdefaultargs") CreateReference;
		%feature("autodoc", "	:param aFrom:
	:type aFrom: opencascade::handle<CDM_MetaData> &
	:param aTo:
	:type aTo: opencascade::handle<CDM_MetaData> &
	:param aReferenceIdentifier:
	:type aReferenceIdentifier: int
	:param aToDocumentVersion:
	:type aToDocumentVersion: int
	:rtype: void
") CreateReference;
		virtual void CreateReference (const opencascade::handle<CDM_MetaData> & aFrom,const opencascade::handle<CDM_MetaData> & aTo,const Standard_Integer aReferenceIdentifier,const Standard_Integer aToDocumentVersion);
		%feature("compactdefaultargs") DefaultFolder;
		%feature("autodoc", "	:rtype: TCollection_ExtendedString
") DefaultFolder;
		virtual TCollection_ExtendedString DefaultFolder ();
		%feature("compactdefaultargs") Find;
		%feature("autodoc", "	* should indicate whether meta-data exist in the DBMS corresponding to the Data. aVersion may be NULL;

	:param aFolder:
	:type aFolder: TCollection_ExtendedString &
	:param aName:
	:type aName: TCollection_ExtendedString &
	:param aVersion:
	:type aVersion: TCollection_ExtendedString &
	:rtype: bool
") Find;
		virtual Standard_Boolean Find (const TCollection_ExtendedString & aFolder,const TCollection_ExtendedString & aName,const TCollection_ExtendedString & aVersion);
		%feature("compactdefaultargs") Find;
		%feature("autodoc", "	* calls Find with an empty version

	:param aFolder:
	:type aFolder: TCollection_ExtendedString &
	:param aName:
	:type aName: TCollection_ExtendedString &
	:rtype: bool
") Find;
		Standard_Boolean Find (const TCollection_ExtendedString & aFolder,const TCollection_ExtendedString & aName);
		%feature("compactdefaultargs") FindFolder;
		%feature("autodoc", "	:param aFolder:
	:type aFolder: TCollection_ExtendedString &
	:rtype: bool
") FindFolder;
		virtual Standard_Boolean FindFolder (const TCollection_ExtendedString & aFolder);
		%feature("compactdefaultargs") HasReadPermission;
		%feature("autodoc", "	:param aFolder:
	:type aFolder: TCollection_ExtendedString &
	:param aName:
	:type aName: TCollection_ExtendedString &
	:param aVersion:
	:type aVersion: TCollection_ExtendedString &
	:rtype: bool
") HasReadPermission;
		virtual Standard_Boolean HasReadPermission (const TCollection_ExtendedString & aFolder,const TCollection_ExtendedString & aName,const TCollection_ExtendedString & aVersion);
		%feature("compactdefaultargs") HasVersion;
		%feature("autodoc", "	* by default return Standard_True.

	:param aFolder:
	:type aFolder: TCollection_ExtendedString &
	:param aName:
	:type aName: TCollection_ExtendedString &
	:rtype: bool
") HasVersion;
		virtual Standard_Boolean HasVersion (const TCollection_ExtendedString & aFolder,const TCollection_ExtendedString & aName);
		%feature("compactdefaultargs") HasVersionCapability;
		%feature("autodoc", "	* returns true if the MetaDataDriver can manage different versions of a Data. By default, returns Standard_False.

	:rtype: bool
") HasVersionCapability;
		virtual Standard_Boolean HasVersionCapability ();
		%feature("compactdefaultargs") LastVersion;
		%feature("autodoc", "	* by default returns aMetaDATA should return the MetaData stored in the DBMS with the meta-data corresponding to the path. If the MetaDataDriver has version management capabilities the version has to be set in the returned MetaData. MetaData is called by GetMetaData If the version is not included in the path , MetaData should return the last version of the metadata is deferred;

	:param aMetaData:
	:type aMetaData: opencascade::handle<CDM_MetaData> &
	:rtype: opencascade::handle<CDM_MetaData>
") LastVersion;
		virtual opencascade::handle<CDM_MetaData> LastVersion (const opencascade::handle<CDM_MetaData> & aMetaData);
		%feature("compactdefaultargs") MetaData;
		%feature("autodoc", "	* should return the MetaData stored in the DBMS with the meta-data corresponding to the Data. If the MetaDataDriver has version management capabilities the version has to be set in the returned MetaData. aVersion may be NULL MetaData is called by GetMetaData If the version is set to NULL, MetaData should return the last version of the metadata

	:param aFolder:
	:type aFolder: TCollection_ExtendedString &
	:param aName:
	:type aName: TCollection_ExtendedString &
	:param aVersion:
	:type aVersion: TCollection_ExtendedString &
	:rtype: opencascade::handle<CDM_MetaData>
") MetaData;
		virtual opencascade::handle<CDM_MetaData> MetaData (const TCollection_ExtendedString & aFolder,const TCollection_ExtendedString & aName,const TCollection_ExtendedString & aVersion);
		%feature("compactdefaultargs") MetaData;
		%feature("autodoc", "	* calls MetaData with an empty version

	:param aFolder:
	:type aFolder: TCollection_ExtendedString &
	:param aName:
	:type aName: TCollection_ExtendedString &
	:rtype: opencascade::handle<CDM_MetaData>
") MetaData;
		opencascade::handle<CDM_MetaData> MetaData (const TCollection_ExtendedString & aFolder,const TCollection_ExtendedString & aName);
		%feature("compactdefaultargs") ReferenceIterator;
		%feature("autodoc", "	:rtype: opencascade::handle<PCDM_ReferenceIterator>
") ReferenceIterator;
		virtual opencascade::handle<PCDM_ReferenceIterator> ReferenceIterator ();
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	* this methods is usefull if the name of an object -- depends on the metadatadriver. For example a Driver -- based on the operating system can choose to add the extension of file to create to the object.

	:param aDocument:
	:type aDocument: opencascade::handle<CDM_Document> &
	:param aName:
	:type aName: TCollection_ExtendedString &
	:rtype: TCollection_ExtendedString
") SetName;
		virtual TCollection_ExtendedString SetName (const opencascade::handle<CDM_Document> & aDocument,const TCollection_ExtendedString & aName);
};


%make_alias(CDF_MetaDataDriver)

%extend CDF_MetaDataDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor CDF_MetaDataDriverFactory;
class CDF_MetaDataDriverFactory : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Build;
		%feature("autodoc", "	:rtype: opencascade::handle<CDF_MetaDataDriver>
") Build;
		virtual opencascade::handle<CDF_MetaDataDriver> Build ();
};


%make_alias(CDF_MetaDataDriverFactory)

%extend CDF_MetaDataDriverFactory {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor CDF_Session;
class CDF_Session : public Standard_Transient {
	public:
		%feature("compactdefaultargs") CDF_Session;
		%feature("autodoc", "	:rtype: None
") CDF_Session;
		 CDF_Session ();
		%feature("compactdefaultargs") CurrentApplication;
		%feature("autodoc", "	:rtype: opencascade::handle<CDF_Application>
") CurrentApplication;
		opencascade::handle<CDF_Application> CurrentApplication ();
		%feature("compactdefaultargs") CurrentSession;
		%feature("autodoc", "	* returns the only one instance of Session that has been created.

	:rtype: opencascade::handle<CDF_Session>
") CurrentSession;
		static opencascade::handle<CDF_Session> CurrentSession ();
		%feature("compactdefaultargs") Directory;
		%feature("autodoc", "	* returns the directory of the session;

	:rtype: opencascade::handle<CDF_Directory>
") Directory;
		opencascade::handle<CDF_Directory> Directory ();
		%feature("compactdefaultargs") Exists;
		%feature("autodoc", "	* returns true if a session has been created.

	:rtype: bool
") Exists;
		static Standard_Boolean Exists ();
		%feature("compactdefaultargs") HasCurrentApplication;
		%feature("autodoc", "	:rtype: bool
") HasCurrentApplication;
		Standard_Boolean HasCurrentApplication ();
		%feature("compactdefaultargs") LoadDriver;
		%feature("autodoc", "	:rtype: None
") LoadDriver;
		void LoadDriver ();
		%feature("compactdefaultargs") MetaDataDriver;
		%feature("autodoc", "	:rtype: opencascade::handle<CDF_MetaDataDriver>
") MetaDataDriver;
		opencascade::handle<CDF_MetaDataDriver> MetaDataDriver ();
		%feature("compactdefaultargs") SetCurrentApplication;
		%feature("autodoc", "	:param anApplication:
	:type anApplication: opencascade::handle<CDF_Application> &
	:rtype: None
") SetCurrentApplication;
		void SetCurrentApplication (const opencascade::handle<CDF_Application> & anApplication);
		%feature("compactdefaultargs") UnsetCurrentApplication;
		%feature("autodoc", "	:rtype: None
") UnsetCurrentApplication;
		void UnsetCurrentApplication ();
};


%make_alias(CDF_Session)

%extend CDF_Session {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor CDF_Store;
class CDF_Store {
	public:
		%feature("compactdefaultargs") AssociatedStatusText;
		%feature("autodoc", "	:rtype: Standard_ExtString
") AssociatedStatusText;
		Standard_ExtString AssociatedStatusText ();
		%feature("compactdefaultargs") CDF_Store;
		%feature("autodoc", "	* creates a store list from the document of the current selection.

	:param aDocument:
	:type aDocument: opencascade::handle<CDM_Document> &
	:rtype: None
") CDF_Store;
		 CDF_Store (const opencascade::handle<CDM_Document> & aDocument);
		%feature("compactdefaultargs") Comment;
		%feature("autodoc", "	:rtype: Standard_ExtString
") Comment;
		Standard_ExtString Comment ();
		%feature("compactdefaultargs") Component;
		%feature("autodoc", "	* Returns item value of current entry

	:rtype: Standard_ExtString
") Component;
		Standard_ExtString Component ();
		%feature("compactdefaultargs") CurrentIsConsistent;
		%feature("autodoc", "	:rtype: bool
") CurrentIsConsistent;
		Standard_Boolean CurrentIsConsistent ();
		%feature("compactdefaultargs") Description;
		%feature("autodoc", "	* returns the description of the format of the main object.

	:rtype: Standard_ExtString
") Description;
		Standard_ExtString Description ();
		%feature("compactdefaultargs") Folder;
		%feature("autodoc", "	* returns the folder in which the current document will be stored.

	:rtype: Standard_ExtString
") Folder;
		Standard_ExtString Folder ();
		%feature("compactdefaultargs") HasAPreviousVersion;
		%feature("autodoc", "	:rtype: bool
") HasAPreviousVersion;
		Standard_Boolean HasAPreviousVersion ();
		%feature("compactdefaultargs") HasSubComponents;
		%feature("autodoc", "	:rtype: bool
") HasSubComponents;
		Standard_Boolean HasSubComponents ();
		%feature("compactdefaultargs") InitComponent;
		%feature("autodoc", "	* Allows to Start a new Iteration from beginning

	:rtype: None
") InitComponent;
		void InitComponent ();
		%feature("compactdefaultargs") IsConsistent;
		%feature("autodoc", "	:rtype: bool
") IsConsistent;
		Standard_Boolean IsConsistent ();
		%feature("compactdefaultargs") IsMainDocument;
		%feature("autodoc", "	* returns true if the currentdocument is the main one, ie the document of the current selection.

	:rtype: bool
") IsMainDocument;
		Standard_Boolean IsMainDocument ();
		%feature("compactdefaultargs") IsModified;
		%feature("autodoc", "	:rtype: bool
") IsModified;
		Standard_Boolean IsModified ();
		%feature("compactdefaultargs") IsStored;
		%feature("autodoc", "	* returns true if the current document is already stored

	:rtype: bool
") IsStored;
		Standard_Boolean IsStored ();
		%feature("compactdefaultargs") MetaDataPath;
		%feature("autodoc", "	* returns the path of the previous store is the object is already stored, otherwise an empty string;

	:rtype: Standard_ExtString
") MetaDataPath;
		Standard_ExtString MetaDataPath ();
		%feature("compactdefaultargs") MoreComponent;
		%feature("autodoc", "	* Returns True if there are more entries to return

	:rtype: bool
") MoreComponent;
		Standard_Boolean MoreComponent ();
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	* returns the name under which the current document will be stored

	:rtype: Standard_ExtString
") Name;
		Standard_ExtString Name ();
		%feature("compactdefaultargs") NextComponent;
		%feature("autodoc", "	* Go to the next entry (if there is not, Value will raise an exception)

	:rtype: None
") NextComponent;
		void NextComponent ();
		%feature("compactdefaultargs") Path;
		%feature("autodoc", "	* returns the complete path of the created meta-data.

	:rtype: Standard_ExtString
") Path;
		Standard_ExtString Path ();
		%feature("compactdefaultargs") PreviousVersion;
		%feature("autodoc", "	:rtype: Standard_ExtString
") PreviousVersion;
		Standard_ExtString PreviousVersion ();
		%feature("compactdefaultargs") Realize;
		%feature("autodoc", "	:rtype: None
") Realize;
		void Realize ();
		%feature("compactdefaultargs") RecheckName;
		%feature("autodoc", "	* defines the name under which the document should be stored. uses for example after modification of the folder.

	:rtype: CDF_StoreSetNameStatus
") RecheckName;
		CDF_StoreSetNameStatus RecheckName ();
		%feature("compactdefaultargs") SetComment;
		%feature("autodoc", "	:param aComment:
	:type aComment: Standard_ExtString
	:rtype: None
") SetComment;
		void SetComment (const Standard_ExtString aComment);
		%feature("compactdefaultargs") SetCurrent;
		%feature("autodoc", "	:rtype: None
") SetCurrent;
		void SetCurrent ();
		%feature("compactdefaultargs") SetCurrent;
		%feature("autodoc", "	:param aPresentation:
	:type aPresentation: Standard_ExtString
	:rtype: None
") SetCurrent;
		void SetCurrent (const Standard_ExtString aPresentation);
		%feature("compactdefaultargs") SetFolder;
		%feature("autodoc", "	* defines the folder in which the document should be stored. returns Standard_True if the Folder exists, Standard_False otherwise.

	:param aFolder:
	:type aFolder: TCollection_ExtendedString &
	:rtype: bool
") SetFolder;
		Standard_Boolean SetFolder (const TCollection_ExtendedString & aFolder);
		%feature("compactdefaultargs") SetFolder;
		%feature("autodoc", "	* defines the folder in which the document should be stored. returns Standard_True if the Folder exists, Standard_False otherwise.

	:param aFolder:
	:type aFolder: Standard_ExtString
	:rtype: bool
") SetFolder;
		Standard_Boolean SetFolder (const Standard_ExtString aFolder);
		%feature("compactdefaultargs") SetMain;
		%feature("autodoc", "	* the two following methods can be used just after Realize or Import -- method to know if thes methods worked correctly, and if not why.

	:rtype: None
") SetMain;
		void SetMain ();
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	* defines the name under which the document should be stored.

	:param aName:
	:type aName: Standard_ExtString
	:rtype: CDF_StoreSetNameStatus
") SetName;
		CDF_StoreSetNameStatus SetName (const Standard_ExtString aName);
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	* defines the name under which the document should be stored.

	:param aName:
	:type aName: TCollection_ExtendedString &
	:rtype: CDF_StoreSetNameStatus
") SetName;
		CDF_StoreSetNameStatus SetName (const TCollection_ExtendedString & aName);
		%feature("compactdefaultargs") SetPreviousVersion;
		%feature("autodoc", "	:param aPreviousVersion:
	:type aPreviousVersion: Standard_ExtString
	:rtype: bool
") SetPreviousVersion;
		Standard_Boolean SetPreviousVersion (const Standard_ExtString aPreviousVersion);
		%feature("compactdefaultargs") StoreStatus;
		%feature("autodoc", "	:rtype: PCDM_StoreStatus
") StoreStatus;
		PCDM_StoreStatus StoreStatus ();
		%feature("compactdefaultargs") SubComponentStatus;
		%feature("autodoc", "	:param aPresentation:
	:type aPresentation: Standard_ExtString
	:rtype: CDF_SubComponentStatus
") SubComponentStatus;
		CDF_SubComponentStatus SubComponentStatus (const Standard_ExtString aPresentation);
};


%extend CDF_Store {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor CDF_StoreList;
class CDF_StoreList : public Standard_Transient {
	public:
		%feature("compactdefaultargs") CDF_StoreList;
		%feature("autodoc", "	:param aDocument:
	:type aDocument: opencascade::handle<CDM_Document> &
	:rtype: None
") CDF_StoreList;
		 CDF_StoreList (const opencascade::handle<CDM_Document> & aDocument);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:rtype: None
") Init;
		void Init ();
		%feature("compactdefaultargs") IsConsistent;
		%feature("autodoc", "	:rtype: bool
") IsConsistent;
		Standard_Boolean IsConsistent ();
		%feature("compactdefaultargs") More;
		%feature("autodoc", "	:rtype: bool
") More;
		Standard_Boolean More ();
		%feature("compactdefaultargs") Next;
		%feature("autodoc", "	:rtype: None
") Next;
		void Next ();
		%feature("compactdefaultargs") Store;
		%feature("autodoc", "	* stores each object of the storelist in the reverse order of which they had been added.

	:param aMetaData:
	:type aMetaData: opencascade::handle<CDM_MetaData> &
	:param aStatusAssociatedText:
	:type aStatusAssociatedText: TCollection_ExtendedString &
	:rtype: PCDM_StoreStatus
") Store;
		PCDM_StoreStatus Store (opencascade::handle<CDM_MetaData> & aMetaData,TCollection_ExtendedString & aStatusAssociatedText);
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "	:rtype: opencascade::handle<CDM_Document>
") Value;
		opencascade::handle<CDM_Document> Value ();
};


%make_alias(CDF_StoreList)

%extend CDF_StoreList {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor CDF_FWOSDriver;
class CDF_FWOSDriver : public CDF_MetaDataDriver {
	public:
		%feature("compactdefaultargs") BuildFileName;
		%feature("autodoc", "	:param aDocument:
	:type aDocument: opencascade::handle<CDM_Document> &
	:rtype: TCollection_ExtendedString
") BuildFileName;
		TCollection_ExtendedString BuildFileName (const opencascade::handle<CDM_Document> & aDocument);
		%feature("compactdefaultargs") CDF_FWOSDriver;
		%feature("autodoc", "	* initializes the MetaDatadriver with its specific name.

	:rtype: None
") CDF_FWOSDriver;
		 CDF_FWOSDriver ();
		%feature("compactdefaultargs") DefaultFolder;
		%feature("autodoc", "	:rtype: TCollection_ExtendedString
") DefaultFolder;
		TCollection_ExtendedString DefaultFolder ();
		%feature("compactdefaultargs") Find;
		%feature("autodoc", "	* indicate whether a file exists corresponding to the folder and the name

	:param aFolder:
	:type aFolder: TCollection_ExtendedString &
	:param aName:
	:type aName: TCollection_ExtendedString &
	:param aVersion:
	:type aVersion: TCollection_ExtendedString &
	:rtype: bool
") Find;
		Standard_Boolean Find (const TCollection_ExtendedString & aFolder,const TCollection_ExtendedString & aName,const TCollection_ExtendedString & aVersion);
		%feature("compactdefaultargs") FindFolder;
		%feature("autodoc", "	:param aFolder:
	:type aFolder: TCollection_ExtendedString &
	:rtype: bool
") FindFolder;
		Standard_Boolean FindFolder (const TCollection_ExtendedString & aFolder);
		%feature("compactdefaultargs") HasReadPermission;
		%feature("autodoc", "	:param aFolder:
	:type aFolder: TCollection_ExtendedString &
	:param aName:
	:type aName: TCollection_ExtendedString &
	:param aVersion:
	:type aVersion: TCollection_ExtendedString &
	:rtype: bool
") HasReadPermission;
		Standard_Boolean HasReadPermission (const TCollection_ExtendedString & aFolder,const TCollection_ExtendedString & aName,const TCollection_ExtendedString & aVersion);
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	:param aDocument:
	:type aDocument: opencascade::handle<CDM_Document> &
	:param aName:
	:type aName: TCollection_ExtendedString &
	:rtype: TCollection_ExtendedString
") SetName;
		virtual TCollection_ExtendedString SetName (const opencascade::handle<CDM_Document> & aDocument,const TCollection_ExtendedString & aName);
};


%make_alias(CDF_FWOSDriver)

%extend CDF_FWOSDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
/* harray1 class */
/* harray2 class */
/* harray2 class */
