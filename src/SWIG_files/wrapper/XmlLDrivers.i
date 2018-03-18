/*
Copyright 2008-2018 Thomas Paviot (tpaviot@gmail.com)


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
%define XMLLDRIVERSDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=XMLLDRIVERSDOCSTRING) XmlLDrivers

#pragma SWIG nowarn=504,325,503

%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%include ../common/CommonIncludes.i
%include ../common/ExceptionCatcher.i
%include ../common/FunctionTransformers.i
%include ../common/Operators.i


%include XmlLDrivers_headers.i


%pythoncode {
def register_handle(handle, base_object):
    """
    Inserts the handle into the base object to
    prevent memory corruption in certain cases
    """
    try:
        if base_object.IsKind("Standard_Transient"):
            base_object.thisHandle = handle
            base_object.thisown = False
    except:
        pass
};

/* templates */
/* templates */
%define Handle(Class) opencascade::handle<Class>
%enddef
%template(XmlLDrivers_SequenceOfNamespaceDef) NCollection_Sequence <XmlLDrivers_NamespaceDef>;
/* end templates declaration */

/* end templates declaration */

/* typedefs */
typedef NCollection_Sequence <XmlLDrivers_NamespaceDef> XmlLDrivers_SequenceOfNamespaceDef;
/* end typedefs declaration */

/* public enums */
/* end public enums declaration */

%rename(xmlldrivers) XmlLDrivers;
%nodefaultctor XmlLDrivers;
class XmlLDrivers {
	public:
		%feature("compactdefaultargs") Factory;
		%feature("autodoc", "	:param theGUID:
	:type theGUID: Standard_GUID &
	:rtype: Handle_Standard_Transient
") Factory;
		Handle_Standard_Transient Factory (const Standard_GUID & theGUID);
		%feature("compactdefaultargs") CreationDate;
		%feature("autodoc", "	:rtype: TCollection_AsciiString
") CreationDate;
		static TCollection_AsciiString CreationDate ();
		%feature("compactdefaultargs") DefineFormat;
		%feature("autodoc", "	* Defines format 'XmlLOcaf' and registers its read and write drivers in the specified application

	:param theApp:
	:type theApp: Handle_TDocStd_Application &
	:rtype: void
") DefineFormat;
		static void DefineFormat (const Handle_TDocStd_Application & theApp);
		%feature("compactdefaultargs") AttributeDrivers;
		%feature("autodoc", "	:param theMsgDriver:
	:type theMsgDriver: Handle_CDM_MessageDriver &
	:rtype: Handle_XmlMDF_ADriverTable
") AttributeDrivers;
		static Handle_XmlMDF_ADriverTable AttributeDrivers (const Handle_CDM_MessageDriver & theMsgDriver);
		%feature("compactdefaultargs") StorageVersion;
		%feature("autodoc", "	:rtype: int
") StorageVersion;
		static int StorageVersion ();
		%feature("compactdefaultargs") SetStorageVersion;
		%feature("autodoc", "	:param version:
	:type version: int
	:rtype: void
") SetStorageVersion;
		static void SetStorageVersion (const int version);
};


%extend XmlLDrivers {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlLDrivers_DocumentRetrievalDriver;
class XmlLDrivers_DocumentRetrievalDriver : public PCDM_RetrievalDriver {
	public:
		%feature("compactdefaultargs") XmlLDrivers_DocumentRetrievalDriver;
		%feature("autodoc", "	:rtype: None
") XmlLDrivers_DocumentRetrievalDriver;
		 XmlLDrivers_DocumentRetrievalDriver ();
		%feature("compactdefaultargs") CreateDocument;
		%feature("autodoc", "	:rtype: Handle_CDM_Document
") CreateDocument;
		virtual Handle_CDM_Document CreateDocument ();
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "	:param theFileName:
	:type theFileName: TCollection_ExtendedString &
	:param theNewDocument:
	:type theNewDocument: Handle_CDM_Document &
	:param theApplication:
	:type theApplication: Handle_CDM_Application &
	:rtype: void
") Read;
		virtual void Read (const TCollection_ExtendedString & theFileName,const Handle_CDM_Document & theNewDocument,const Handle_CDM_Application & theApplication);
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "	:param theIStream:
	:type theIStream: Standard_IStream &
	:param theStorageData:
	:type theStorageData: Handle_Storage_Data &
	:param theDoc:
	:type theDoc: Handle_CDM_Document &
	:param theApplication:
	:type theApplication: Handle_CDM_Application &
	:rtype: void
") Read;
		virtual void Read (Standard_IStream & theIStream,const Handle_Storage_Data & theStorageData,const Handle_CDM_Document & theDoc,const Handle_CDM_Application & theApplication);
		%feature("compactdefaultargs") AttributeDrivers;
		%feature("autodoc", "	:param theMsgDriver:
	:type theMsgDriver: Handle_CDM_MessageDriver &
	:rtype: Handle_XmlMDF_ADriverTable
") AttributeDrivers;
		virtual Handle_XmlMDF_ADriverTable AttributeDrivers (const Handle_CDM_MessageDriver & theMsgDriver);
};


%extend XmlLDrivers_DocumentRetrievalDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XmlLDrivers_DocumentRetrievalDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XmlLDrivers_DocumentRetrievalDriver::Handle_XmlLDrivers_DocumentRetrievalDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XmlLDrivers_DocumentRetrievalDriver;
class Handle_XmlLDrivers_DocumentRetrievalDriver : public Handle_PCDM_RetrievalDriver {

    public:
        // constructors
        Handle_XmlLDrivers_DocumentRetrievalDriver();
        Handle_XmlLDrivers_DocumentRetrievalDriver(const Handle_XmlLDrivers_DocumentRetrievalDriver &aHandle);
        Handle_XmlLDrivers_DocumentRetrievalDriver(const XmlLDrivers_DocumentRetrievalDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XmlLDrivers_DocumentRetrievalDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XmlLDrivers_DocumentRetrievalDriver {
    XmlLDrivers_DocumentRetrievalDriver* _get_reference() {
    return (XmlLDrivers_DocumentRetrievalDriver*)$self->get();
    }
};

%extend Handle_XmlLDrivers_DocumentRetrievalDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XmlLDrivers_DocumentRetrievalDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlLDrivers_DocumentStorageDriver;
class XmlLDrivers_DocumentStorageDriver : public PCDM_StorageDriver {
	public:
		%feature("compactdefaultargs") XmlLDrivers_DocumentStorageDriver;
		%feature("autodoc", "	:param theCopyright:
	:type theCopyright: TCollection_ExtendedString &
	:rtype: None
") XmlLDrivers_DocumentStorageDriver;
		 XmlLDrivers_DocumentStorageDriver (const TCollection_ExtendedString & theCopyright);
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "	:param theDocument:
	:type theDocument: Handle_CDM_Document &
	:param theFileName:
	:type theFileName: TCollection_ExtendedString &
	:rtype: void
") Write;
		virtual void Write (const Handle_CDM_Document & theDocument,const TCollection_ExtendedString & theFileName);
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "	:param theDocument:
	:type theDocument: Handle_CDM_Document &
	:param theOStream:
	:type theOStream: Standard_OStream &
	:rtype: void
") Write;
		virtual void Write (const Handle_CDM_Document & theDocument,Standard_OStream & theOStream);
		%feature("compactdefaultargs") AttributeDrivers;
		%feature("autodoc", "	:param theMsgDriver:
	:type theMsgDriver: Handle_CDM_MessageDriver &
	:rtype: Handle_XmlMDF_ADriverTable
") AttributeDrivers;
		virtual Handle_XmlMDF_ADriverTable AttributeDrivers (const Handle_CDM_MessageDriver & theMsgDriver);
};


%extend XmlLDrivers_DocumentStorageDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XmlLDrivers_DocumentStorageDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XmlLDrivers_DocumentStorageDriver::Handle_XmlLDrivers_DocumentStorageDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XmlLDrivers_DocumentStorageDriver;
class Handle_XmlLDrivers_DocumentStorageDriver : public Handle_PCDM_StorageDriver {

    public:
        // constructors
        Handle_XmlLDrivers_DocumentStorageDriver();
        Handle_XmlLDrivers_DocumentStorageDriver(const Handle_XmlLDrivers_DocumentStorageDriver &aHandle);
        Handle_XmlLDrivers_DocumentStorageDriver(const XmlLDrivers_DocumentStorageDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XmlLDrivers_DocumentStorageDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XmlLDrivers_DocumentStorageDriver {
    XmlLDrivers_DocumentStorageDriver* _get_reference() {
    return (XmlLDrivers_DocumentStorageDriver*)$self->get();
    }
};

%extend Handle_XmlLDrivers_DocumentStorageDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XmlLDrivers_DocumentStorageDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlLDrivers_NamespaceDef;
class XmlLDrivers_NamespaceDef {
	public:
		%feature("compactdefaultargs") XmlLDrivers_NamespaceDef;
		%feature("autodoc", "	:rtype: None
") XmlLDrivers_NamespaceDef;
		 XmlLDrivers_NamespaceDef ();
		%feature("compactdefaultargs") XmlLDrivers_NamespaceDef;
		%feature("autodoc", "	:param thePrefix:
	:type thePrefix: TCollection_AsciiString &
	:param theURI:
	:type theURI: TCollection_AsciiString &
	:rtype: None
") XmlLDrivers_NamespaceDef;
		 XmlLDrivers_NamespaceDef (const TCollection_AsciiString & thePrefix,const TCollection_AsciiString & theURI);
		%feature("compactdefaultargs") Prefix;
		%feature("autodoc", "	:rtype: TCollection_AsciiString
") Prefix;
		const TCollection_AsciiString & Prefix ();
		%feature("compactdefaultargs") URI;
		%feature("autodoc", "	:rtype: TCollection_AsciiString
") URI;
		const TCollection_AsciiString & URI ();
};


%extend XmlLDrivers_NamespaceDef {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
