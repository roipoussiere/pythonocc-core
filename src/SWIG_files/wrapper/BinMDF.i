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
%define BINMDFDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=BINMDFDOCSTRING) BinMDF

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


%include BinMDF_headers.i


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

/* typedefs */
typedef TColStd_DataMapOfAsciiStringInteger BinMDF_StringIdMap;
/* end typedefs declaration */

/* templates */
%template(BinMDF_TypeADriverMap) NCollection_DataMap <Handle_Standard_Type , Handle_BinMDF_ADriver , TColStd_MapTransientHasher>;
%template(BinMDF_TypeIdMap) NCollection_DoubleMap <Handle_Standard_Type , Standard_Integer , TColStd_MapTransientHasher , TColStd_MapIntegerHasher>;
/* end templates declaration */

/* public enums */
/* end public enums declaration */

%rename(binmdf) BinMDF;
class BinMDF {
	public:
		%feature("compactdefaultargs") AddDrivers;
		%feature("autodoc", "	* Adds the attribute storage drivers to <aDriverTable>.

	:param aDriverTable:
	:type aDriverTable: Handle_BinMDF_ADriverTable &
	:param aMsgDrv:
	:type aMsgDrv: Handle_CDM_MessageDriver &
	:rtype: void
") AddDrivers;
		static void AddDrivers (const Handle_BinMDF_ADriverTable & aDriverTable,const Handle_CDM_MessageDriver & aMsgDrv);
};


%extend BinMDF {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor BinMDF_ADriver;
class BinMDF_ADriver : public Standard_Transient {
	public:
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	* Creates a new attribute from TDF.

	:rtype: Handle_TDF_Attribute
") NewEmpty;
		virtual Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") SourceType;
		%feature("autodoc", "	* Returns the type of source object, inheriting from Attribute from TDF.

	:rtype: Handle_Standard_Type
") SourceType;
		Handle_Standard_Type SourceType ();
		%feature("compactdefaultargs") TypeName;
		%feature("autodoc", "	* Returns the type name of the attribute object

	:rtype: TCollection_AsciiString
") TypeName;
		const TCollection_AsciiString & TypeName ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	* Translate the contents of <aSource> and put it into <aTarget>, using the relocation table <aRelocTable> to keep the sharings.

	:param aSource:
	:type aSource: BinObjMgt_Persistent &
	:param aTarget:
	:type aTarget: Handle_TDF_Attribute &
	:param aRelocTable:
	:type aRelocTable: BinObjMgt_RRelocationTable &
	:rtype: bool
") Paste;
		virtual Standard_Boolean Paste (const BinObjMgt_Persistent & aSource,const Handle_TDF_Attribute & aTarget,BinObjMgt_RRelocationTable & aRelocTable);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	* Translate the contents of <aSource> and put it into <aTarget>, using the relocation table <aRelocTable> to keep the sharings.

	:param aSource:
	:type aSource: Handle_TDF_Attribute &
	:param aTarget:
	:type aTarget: BinObjMgt_Persistent &
	:param aRelocTable:
	:type aRelocTable: BinObjMgt_SRelocationTable &
	:rtype: void
") Paste;
		virtual void Paste (const Handle_TDF_Attribute & aSource,BinObjMgt_Persistent & aTarget,BinObjMgt_SRelocationTable & aRelocTable);
		%feature("compactdefaultargs") WriteMessage;
		%feature("autodoc", "	* Send message to Application --usually when error occurres--

	:param theMessage:
	:type theMessage: TCollection_ExtendedString &
	:rtype: None
") WriteMessage;
		void WriteMessage (const TCollection_ExtendedString & theMessage);
};


%extend BinMDF_ADriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_BinMDF_ADriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_BinMDF_ADriver::Handle_BinMDF_ADriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_BinMDF_ADriver;
class Handle_BinMDF_ADriver : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_BinMDF_ADriver();
        Handle_BinMDF_ADriver(const Handle_BinMDF_ADriver &aHandle);
        Handle_BinMDF_ADriver(const BinMDF_ADriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_BinMDF_ADriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_BinMDF_ADriver {
    BinMDF_ADriver* _get_reference() {
    return (BinMDF_ADriver*)$self->get();
    }
};

%extend Handle_BinMDF_ADriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend BinMDF_ADriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor BinMDF_ADriverTable;
class BinMDF_ADriverTable : public Standard_Transient {
	public:
		%feature("compactdefaultargs") BinMDF_ADriverTable;
		%feature("autodoc", "	* Constructor

	:rtype: None
") BinMDF_ADriverTable;
		 BinMDF_ADriverTable ();
		%feature("compactdefaultargs") AddDriver;
		%feature("autodoc", "	* Adds a translation driver <theDriver>.

	:param theDriver:
	:type theDriver: Handle_BinMDF_ADriver &
	:rtype: None
") AddDriver;
		void AddDriver (const Handle_BinMDF_ADriver & theDriver);
		%feature("compactdefaultargs") AssignIds;
		%feature("autodoc", "	* Assigns the IDs to the drivers of the given Types. It uses indices in the map as IDs. Useful in storage procedure.

	:param theTypes:
	:type theTypes: TColStd_IndexedMapOfTransient &
	:rtype: None
") AssignIds;
		void AssignIds (const TColStd_IndexedMapOfTransient & theTypes);
		%feature("compactdefaultargs") AssignIds;
		%feature("autodoc", "	* Assigns the IDs to the drivers of the given Type Names; It uses indices in the sequence as IDs. Useful in retrieval procedure.

	:param theTypeNames:
	:type theTypeNames: TColStd_SequenceOfAsciiString &
	:rtype: None
") AssignIds;
		void AssignIds (const TColStd_SequenceOfAsciiString & theTypeNames);
		%feature("compactdefaultargs") GetDriver;
		%feature("autodoc", "	* Gets a driver <theDriver> according to <theType>. Returns Type ID if the driver was assigned an ID; 0 otherwise.

	:param theType:
	:type theType: Handle_Standard_Type &
	:param theDriver:
	:type theDriver: Handle_BinMDF_ADriver &
	:rtype: int
") GetDriver;
		Standard_Integer GetDriver (const Handle_Standard_Type & theType,Handle_BinMDF_ADriver & theDriver);
		%feature("compactdefaultargs") GetDriver;
		%feature("autodoc", "	* Returns a driver according to <theTypeId>. Returns null handle if a driver is not found

	:param theTypeId:
	:type theTypeId: int
	:rtype: Handle_BinMDF_ADriver
") GetDriver;
		Handle_BinMDF_ADriver GetDriver (const Standard_Integer theTypeId);
};


%extend BinMDF_ADriverTable {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_BinMDF_ADriverTable(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_BinMDF_ADriverTable::Handle_BinMDF_ADriverTable %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_BinMDF_ADriverTable;
class Handle_BinMDF_ADriverTable : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_BinMDF_ADriverTable();
        Handle_BinMDF_ADriverTable(const Handle_BinMDF_ADriverTable &aHandle);
        Handle_BinMDF_ADriverTable(const BinMDF_ADriverTable *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_BinMDF_ADriverTable DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_BinMDF_ADriverTable {
    BinMDF_ADriverTable* _get_reference() {
    return (BinMDF_ADriverTable*)$self->get();
    }
};

%extend Handle_BinMDF_ADriverTable {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend BinMDF_ADriverTable {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor BinMDF_ReferenceDriver;
class BinMDF_ReferenceDriver : public BinMDF_ADriver {
	public:
		%feature("compactdefaultargs") BinMDF_ReferenceDriver;
		%feature("autodoc", "	:param theMessageDriver:
	:type theMessageDriver: Handle_CDM_MessageDriver &
	:rtype: None
") BinMDF_ReferenceDriver;
		 BinMDF_ReferenceDriver (const Handle_CDM_MessageDriver & theMessageDriver);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		virtual Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Source:
	:type Source: BinObjMgt_Persistent &
	:param Target:
	:type Target: Handle_TDF_Attribute &
	:param RelocTable:
	:type RelocTable: BinObjMgt_RRelocationTable &
	:rtype: bool
") Paste;
		virtual Standard_Boolean Paste (const BinObjMgt_Persistent & Source,const Handle_TDF_Attribute & Target,BinObjMgt_RRelocationTable & RelocTable);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Source:
	:type Source: Handle_TDF_Attribute &
	:param Target:
	:type Target: BinObjMgt_Persistent &
	:param RelocTable:
	:type RelocTable: BinObjMgt_SRelocationTable &
	:rtype: void
") Paste;
		virtual void Paste (const Handle_TDF_Attribute & Source,BinObjMgt_Persistent & Target,BinObjMgt_SRelocationTable & RelocTable);
};


%extend BinMDF_ReferenceDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_BinMDF_ReferenceDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_BinMDF_ReferenceDriver::Handle_BinMDF_ReferenceDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_BinMDF_ReferenceDriver;
class Handle_BinMDF_ReferenceDriver : public Handle_BinMDF_ADriver {

    public:
        // constructors
        Handle_BinMDF_ReferenceDriver();
        Handle_BinMDF_ReferenceDriver(const Handle_BinMDF_ReferenceDriver &aHandle);
        Handle_BinMDF_ReferenceDriver(const BinMDF_ReferenceDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_BinMDF_ReferenceDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_BinMDF_ReferenceDriver {
    BinMDF_ReferenceDriver* _get_reference() {
    return (BinMDF_ReferenceDriver*)$self->get();
    }
};

%extend Handle_BinMDF_ReferenceDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend BinMDF_ReferenceDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor BinMDF_TagSourceDriver;
class BinMDF_TagSourceDriver : public BinMDF_ADriver {
	public:
		%feature("compactdefaultargs") BinMDF_TagSourceDriver;
		%feature("autodoc", "	:param theMessageDriver:
	:type theMessageDriver: Handle_CDM_MessageDriver &
	:rtype: None
") BinMDF_TagSourceDriver;
		 BinMDF_TagSourceDriver (const Handle_CDM_MessageDriver & theMessageDriver);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Source:
	:type Source: BinObjMgt_Persistent &
	:param Target:
	:type Target: Handle_TDF_Attribute &
	:param RelocTable:
	:type RelocTable: BinObjMgt_RRelocationTable &
	:rtype: bool
") Paste;
		Standard_Boolean Paste (const BinObjMgt_Persistent & Source,const Handle_TDF_Attribute & Target,BinObjMgt_RRelocationTable & RelocTable);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Source:
	:type Source: Handle_TDF_Attribute &
	:param Target:
	:type Target: BinObjMgt_Persistent &
	:param RelocTable:
	:type RelocTable: BinObjMgt_SRelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & Source,BinObjMgt_Persistent & Target,BinObjMgt_SRelocationTable & RelocTable);
};


%extend BinMDF_TagSourceDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_BinMDF_TagSourceDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_BinMDF_TagSourceDriver::Handle_BinMDF_TagSourceDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_BinMDF_TagSourceDriver;
class Handle_BinMDF_TagSourceDriver : public Handle_BinMDF_ADriver {

    public:
        // constructors
        Handle_BinMDF_TagSourceDriver();
        Handle_BinMDF_TagSourceDriver(const Handle_BinMDF_TagSourceDriver &aHandle);
        Handle_BinMDF_TagSourceDriver(const BinMDF_TagSourceDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_BinMDF_TagSourceDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_BinMDF_TagSourceDriver {
    BinMDF_TagSourceDriver* _get_reference() {
    return (BinMDF_TagSourceDriver*)$self->get();
    }
};

%extend Handle_BinMDF_TagSourceDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend BinMDF_TagSourceDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
