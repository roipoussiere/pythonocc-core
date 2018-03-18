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
%define XMLMXCAFDOCDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=XMLMXCAFDOCDOCSTRING) XmlMXCAFDoc

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


%include XmlMXCAFDoc_headers.i


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
/* end templates declaration */

/* end templates declaration */

/* typedefs */
/* end typedefs declaration */

/* public enums */
/* end public enums declaration */

%rename(xmlmxcafdoc) XmlMXCAFDoc;
class XmlMXCAFDoc {
	public:
		%feature("compactdefaultargs") AddDrivers;
		%feature("autodoc", "	* Adds the attribute drivers to <aDriverTable>.

	:param aDriverTable:
	:type aDriverTable: Handle_XmlMDF_ADriverTable &
	:param anMsgDrv:
	:type anMsgDrv: Handle_CDM_MessageDriver &
	:rtype: void
") AddDrivers;
		static void AddDrivers (const Handle_XmlMDF_ADriverTable & aDriverTable,const Handle_CDM_MessageDriver & anMsgDrv);
};


%extend XmlMXCAFDoc {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlMXCAFDoc_AreaDriver;
class XmlMXCAFDoc_AreaDriver : public XmlMDF_ADriver {
	public:
		%feature("compactdefaultargs") XmlMXCAFDoc_AreaDriver;
		%feature("autodoc", "	:param theMessageDriver:
	:type theMessageDriver: Handle_CDM_MessageDriver &
	:rtype: None
") XmlMXCAFDoc_AreaDriver;
		 XmlMXCAFDoc_AreaDriver (const Handle_CDM_MessageDriver & theMessageDriver);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Source:
	:type Source: XmlObjMgt_Persistent &
	:param Target:
	:type Target: Handle_TDF_Attribute &
	:param RelocTable:
	:type RelocTable: XmlObjMgt_RRelocationTable &
	:rtype: bool
") Paste;
		Standard_Boolean Paste (const XmlObjMgt_Persistent & Source,const Handle_TDF_Attribute & Target,XmlObjMgt_RRelocationTable & RelocTable);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Source:
	:type Source: Handle_TDF_Attribute &
	:param Target:
	:type Target: XmlObjMgt_Persistent &
	:param RelocTable:
	:type RelocTable: XmlObjMgt_SRelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & Source,XmlObjMgt_Persistent & Target,XmlObjMgt_SRelocationTable & RelocTable);
};


%extend XmlMXCAFDoc_AreaDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XmlMXCAFDoc_AreaDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XmlMXCAFDoc_AreaDriver::Handle_XmlMXCAFDoc_AreaDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XmlMXCAFDoc_AreaDriver;
class Handle_XmlMXCAFDoc_AreaDriver : public Handle_XmlMDF_ADriver {

    public:
        // constructors
        Handle_XmlMXCAFDoc_AreaDriver();
        Handle_XmlMXCAFDoc_AreaDriver(const Handle_XmlMXCAFDoc_AreaDriver &aHandle);
        Handle_XmlMXCAFDoc_AreaDriver(const XmlMXCAFDoc_AreaDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XmlMXCAFDoc_AreaDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XmlMXCAFDoc_AreaDriver {
    XmlMXCAFDoc_AreaDriver* _get_reference() {
    return (XmlMXCAFDoc_AreaDriver*)$self->get();
    }
};

%extend Handle_XmlMXCAFDoc_AreaDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XmlMXCAFDoc_AreaDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlMXCAFDoc_AssemblyItemRefDriver;
class XmlMXCAFDoc_AssemblyItemRefDriver : public XmlMDF_ADriver {
	public:
		%feature("compactdefaultargs") XmlMXCAFDoc_AssemblyItemRefDriver;
		%feature("autodoc", "	:param theMessageDriver:
	:type theMessageDriver: Handle_CDM_MessageDriver &
	:rtype: None
") XmlMXCAFDoc_AssemblyItemRefDriver;
		 XmlMXCAFDoc_AssemblyItemRefDriver (const Handle_CDM_MessageDriver & theMessageDriver);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: XmlObjMgt_Persistent &
	:param theTarget:
	:type theTarget: Handle_TDF_Attribute &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_RRelocationTable &
	:rtype: bool
") Paste;
		Standard_Boolean Paste (const XmlObjMgt_Persistent & theSource,const Handle_TDF_Attribute & theTarget,XmlObjMgt_RRelocationTable & theRelocTable);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: Handle_TDF_Attribute &
	:param theTarget:
	:type theTarget: XmlObjMgt_Persistent &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_SRelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & theSource,XmlObjMgt_Persistent & theTarget,XmlObjMgt_SRelocationTable & theRelocTable);
};


%extend XmlMXCAFDoc_AssemblyItemRefDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XmlMXCAFDoc_AssemblyItemRefDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XmlMXCAFDoc_AssemblyItemRefDriver::Handle_XmlMXCAFDoc_AssemblyItemRefDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XmlMXCAFDoc_AssemblyItemRefDriver;
class Handle_XmlMXCAFDoc_AssemblyItemRefDriver : public Handle_XmlMDF_ADriver {

    public:
        // constructors
        Handle_XmlMXCAFDoc_AssemblyItemRefDriver();
        Handle_XmlMXCAFDoc_AssemblyItemRefDriver(const Handle_XmlMXCAFDoc_AssemblyItemRefDriver &aHandle);
        Handle_XmlMXCAFDoc_AssemblyItemRefDriver(const XmlMXCAFDoc_AssemblyItemRefDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XmlMXCAFDoc_AssemblyItemRefDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XmlMXCAFDoc_AssemblyItemRefDriver {
    XmlMXCAFDoc_AssemblyItemRefDriver* _get_reference() {
    return (XmlMXCAFDoc_AssemblyItemRefDriver*)$self->get();
    }
};

%extend Handle_XmlMXCAFDoc_AssemblyItemRefDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XmlMXCAFDoc_AssemblyItemRefDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlMXCAFDoc_CentroidDriver;
class XmlMXCAFDoc_CentroidDriver : public XmlMDF_ADriver {
	public:
		%feature("compactdefaultargs") XmlMXCAFDoc_CentroidDriver;
		%feature("autodoc", "	:param theMessageDriver:
	:type theMessageDriver: Handle_CDM_MessageDriver &
	:rtype: None
") XmlMXCAFDoc_CentroidDriver;
		 XmlMXCAFDoc_CentroidDriver (const Handle_CDM_MessageDriver & theMessageDriver);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Source:
	:type Source: XmlObjMgt_Persistent &
	:param Target:
	:type Target: Handle_TDF_Attribute &
	:param RelocTable:
	:type RelocTable: XmlObjMgt_RRelocationTable &
	:rtype: bool
") Paste;
		Standard_Boolean Paste (const XmlObjMgt_Persistent & Source,const Handle_TDF_Attribute & Target,XmlObjMgt_RRelocationTable & RelocTable);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Source:
	:type Source: Handle_TDF_Attribute &
	:param Target:
	:type Target: XmlObjMgt_Persistent &
	:param RelocTable:
	:type RelocTable: XmlObjMgt_SRelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & Source,XmlObjMgt_Persistent & Target,XmlObjMgt_SRelocationTable & RelocTable);
};


%extend XmlMXCAFDoc_CentroidDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XmlMXCAFDoc_CentroidDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XmlMXCAFDoc_CentroidDriver::Handle_XmlMXCAFDoc_CentroidDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XmlMXCAFDoc_CentroidDriver;
class Handle_XmlMXCAFDoc_CentroidDriver : public Handle_XmlMDF_ADriver {

    public:
        // constructors
        Handle_XmlMXCAFDoc_CentroidDriver();
        Handle_XmlMXCAFDoc_CentroidDriver(const Handle_XmlMXCAFDoc_CentroidDriver &aHandle);
        Handle_XmlMXCAFDoc_CentroidDriver(const XmlMXCAFDoc_CentroidDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XmlMXCAFDoc_CentroidDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XmlMXCAFDoc_CentroidDriver {
    XmlMXCAFDoc_CentroidDriver* _get_reference() {
    return (XmlMXCAFDoc_CentroidDriver*)$self->get();
    }
};

%extend Handle_XmlMXCAFDoc_CentroidDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XmlMXCAFDoc_CentroidDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlMXCAFDoc_ClippingPlaneToolDriver;
class XmlMXCAFDoc_ClippingPlaneToolDriver : public XmlMDF_ADriver {
	public:
		%feature("compactdefaultargs") XmlMXCAFDoc_ClippingPlaneToolDriver;
		%feature("autodoc", "	:param theMsgDriver:
	:type theMsgDriver: Handle_CDM_MessageDriver &
	:rtype: None
") XmlMXCAFDoc_ClippingPlaneToolDriver;
		 XmlMXCAFDoc_ClippingPlaneToolDriver (const Handle_CDM_MessageDriver & theMsgDriver);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		virtual Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: XmlObjMgt_Persistent &
	:param theTarget:
	:type theTarget: Handle_TDF_Attribute &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_RRelocationTable &
	:rtype: bool
") Paste;
		virtual Standard_Boolean Paste (const XmlObjMgt_Persistent & theSource,const Handle_TDF_Attribute & theTarget,XmlObjMgt_RRelocationTable & theRelocTable);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: Handle_TDF_Attribute &
	:param theTarget:
	:type theTarget: XmlObjMgt_Persistent &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_SRelocationTable &
	:rtype: void
") Paste;
		virtual void Paste (const Handle_TDF_Attribute & theSource,XmlObjMgt_Persistent & theTarget,XmlObjMgt_SRelocationTable & theRelocTable);
};


%extend XmlMXCAFDoc_ClippingPlaneToolDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XmlMXCAFDoc_ClippingPlaneToolDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XmlMXCAFDoc_ClippingPlaneToolDriver::Handle_XmlMXCAFDoc_ClippingPlaneToolDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XmlMXCAFDoc_ClippingPlaneToolDriver;
class Handle_XmlMXCAFDoc_ClippingPlaneToolDriver : public Handle_XmlMDF_ADriver {

    public:
        // constructors
        Handle_XmlMXCAFDoc_ClippingPlaneToolDriver();
        Handle_XmlMXCAFDoc_ClippingPlaneToolDriver(const Handle_XmlMXCAFDoc_ClippingPlaneToolDriver &aHandle);
        Handle_XmlMXCAFDoc_ClippingPlaneToolDriver(const XmlMXCAFDoc_ClippingPlaneToolDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XmlMXCAFDoc_ClippingPlaneToolDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XmlMXCAFDoc_ClippingPlaneToolDriver {
    XmlMXCAFDoc_ClippingPlaneToolDriver* _get_reference() {
    return (XmlMXCAFDoc_ClippingPlaneToolDriver*)$self->get();
    }
};

%extend Handle_XmlMXCAFDoc_ClippingPlaneToolDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XmlMXCAFDoc_ClippingPlaneToolDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlMXCAFDoc_ColorDriver;
class XmlMXCAFDoc_ColorDriver : public XmlMDF_ADriver {
	public:
		%feature("compactdefaultargs") XmlMXCAFDoc_ColorDriver;
		%feature("autodoc", "	:param theMessageDriver:
	:type theMessageDriver: Handle_CDM_MessageDriver &
	:rtype: None
") XmlMXCAFDoc_ColorDriver;
		 XmlMXCAFDoc_ColorDriver (const Handle_CDM_MessageDriver & theMessageDriver);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Source:
	:type Source: XmlObjMgt_Persistent &
	:param Target:
	:type Target: Handle_TDF_Attribute &
	:param RelocTable:
	:type RelocTable: XmlObjMgt_RRelocationTable &
	:rtype: bool
") Paste;
		Standard_Boolean Paste (const XmlObjMgt_Persistent & Source,const Handle_TDF_Attribute & Target,XmlObjMgt_RRelocationTable & RelocTable);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Source:
	:type Source: Handle_TDF_Attribute &
	:param Target:
	:type Target: XmlObjMgt_Persistent &
	:param RelocTable:
	:type RelocTable: XmlObjMgt_SRelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & Source,XmlObjMgt_Persistent & Target,XmlObjMgt_SRelocationTable & RelocTable);
};


%extend XmlMXCAFDoc_ColorDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XmlMXCAFDoc_ColorDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XmlMXCAFDoc_ColorDriver::Handle_XmlMXCAFDoc_ColorDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XmlMXCAFDoc_ColorDriver;
class Handle_XmlMXCAFDoc_ColorDriver : public Handle_XmlMDF_ADriver {

    public:
        // constructors
        Handle_XmlMXCAFDoc_ColorDriver();
        Handle_XmlMXCAFDoc_ColorDriver(const Handle_XmlMXCAFDoc_ColorDriver &aHandle);
        Handle_XmlMXCAFDoc_ColorDriver(const XmlMXCAFDoc_ColorDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XmlMXCAFDoc_ColorDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XmlMXCAFDoc_ColorDriver {
    XmlMXCAFDoc_ColorDriver* _get_reference() {
    return (XmlMXCAFDoc_ColorDriver*)$self->get();
    }
};

%extend Handle_XmlMXCAFDoc_ColorDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XmlMXCAFDoc_ColorDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlMXCAFDoc_ColorToolDriver;
class XmlMXCAFDoc_ColorToolDriver : public XmlMDF_ADriver {
	public:
		%feature("compactdefaultargs") XmlMXCAFDoc_ColorToolDriver;
		%feature("autodoc", "	:param theMsgDriver:
	:type theMsgDriver: Handle_CDM_MessageDriver &
	:rtype: None
") XmlMXCAFDoc_ColorToolDriver;
		 XmlMXCAFDoc_ColorToolDriver (const Handle_CDM_MessageDriver & theMsgDriver);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		virtual Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: XmlObjMgt_Persistent &
	:param theTarget:
	:type theTarget: Handle_TDF_Attribute &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_RRelocationTable &
	:rtype: bool
") Paste;
		virtual Standard_Boolean Paste (const XmlObjMgt_Persistent & theSource,const Handle_TDF_Attribute & theTarget,XmlObjMgt_RRelocationTable & theRelocTable);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: Handle_TDF_Attribute &
	:param theTarget:
	:type theTarget: XmlObjMgt_Persistent &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_SRelocationTable &
	:rtype: void
") Paste;
		virtual void Paste (const Handle_TDF_Attribute & theSource,XmlObjMgt_Persistent & theTarget,XmlObjMgt_SRelocationTable & theRelocTable);
};


%extend XmlMXCAFDoc_ColorToolDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XmlMXCAFDoc_ColorToolDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XmlMXCAFDoc_ColorToolDriver::Handle_XmlMXCAFDoc_ColorToolDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XmlMXCAFDoc_ColorToolDriver;
class Handle_XmlMXCAFDoc_ColorToolDriver : public Handle_XmlMDF_ADriver {

    public:
        // constructors
        Handle_XmlMXCAFDoc_ColorToolDriver();
        Handle_XmlMXCAFDoc_ColorToolDriver(const Handle_XmlMXCAFDoc_ColorToolDriver &aHandle);
        Handle_XmlMXCAFDoc_ColorToolDriver(const XmlMXCAFDoc_ColorToolDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XmlMXCAFDoc_ColorToolDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XmlMXCAFDoc_ColorToolDriver {
    XmlMXCAFDoc_ColorToolDriver* _get_reference() {
    return (XmlMXCAFDoc_ColorToolDriver*)$self->get();
    }
};

%extend Handle_XmlMXCAFDoc_ColorToolDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XmlMXCAFDoc_ColorToolDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlMXCAFDoc_DatumDriver;
class XmlMXCAFDoc_DatumDriver : public XmlMDF_ADriver {
	public:
		%feature("compactdefaultargs") XmlMXCAFDoc_DatumDriver;
		%feature("autodoc", "	:param theMessageDriver:
	:type theMessageDriver: Handle_CDM_MessageDriver &
	:rtype: None
") XmlMXCAFDoc_DatumDriver;
		 XmlMXCAFDoc_DatumDriver (const Handle_CDM_MessageDriver & theMessageDriver);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Source:
	:type Source: XmlObjMgt_Persistent &
	:param Target:
	:type Target: Handle_TDF_Attribute &
	:param RelocTable:
	:type RelocTable: XmlObjMgt_RRelocationTable &
	:rtype: bool
") Paste;
		Standard_Boolean Paste (const XmlObjMgt_Persistent & Source,const Handle_TDF_Attribute & Target,XmlObjMgt_RRelocationTable & RelocTable);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Source:
	:type Source: Handle_TDF_Attribute &
	:param Target:
	:type Target: XmlObjMgt_Persistent &
	:param RelocTable:
	:type RelocTable: XmlObjMgt_SRelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & Source,XmlObjMgt_Persistent & Target,XmlObjMgt_SRelocationTable & RelocTable);
};


%extend XmlMXCAFDoc_DatumDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XmlMXCAFDoc_DatumDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XmlMXCAFDoc_DatumDriver::Handle_XmlMXCAFDoc_DatumDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XmlMXCAFDoc_DatumDriver;
class Handle_XmlMXCAFDoc_DatumDriver : public Handle_XmlMDF_ADriver {

    public:
        // constructors
        Handle_XmlMXCAFDoc_DatumDriver();
        Handle_XmlMXCAFDoc_DatumDriver(const Handle_XmlMXCAFDoc_DatumDriver &aHandle);
        Handle_XmlMXCAFDoc_DatumDriver(const XmlMXCAFDoc_DatumDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XmlMXCAFDoc_DatumDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XmlMXCAFDoc_DatumDriver {
    XmlMXCAFDoc_DatumDriver* _get_reference() {
    return (XmlMXCAFDoc_DatumDriver*)$self->get();
    }
};

%extend Handle_XmlMXCAFDoc_DatumDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XmlMXCAFDoc_DatumDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlMXCAFDoc_DimTolDriver;
class XmlMXCAFDoc_DimTolDriver : public XmlMDF_ADriver {
	public:
		%feature("compactdefaultargs") XmlMXCAFDoc_DimTolDriver;
		%feature("autodoc", "	:param theMessageDriver:
	:type theMessageDriver: Handle_CDM_MessageDriver &
	:rtype: None
") XmlMXCAFDoc_DimTolDriver;
		 XmlMXCAFDoc_DimTolDriver (const Handle_CDM_MessageDriver & theMessageDriver);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Source:
	:type Source: XmlObjMgt_Persistent &
	:param Target:
	:type Target: Handle_TDF_Attribute &
	:param RelocTable:
	:type RelocTable: XmlObjMgt_RRelocationTable &
	:rtype: bool
") Paste;
		Standard_Boolean Paste (const XmlObjMgt_Persistent & Source,const Handle_TDF_Attribute & Target,XmlObjMgt_RRelocationTable & RelocTable);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Source:
	:type Source: Handle_TDF_Attribute &
	:param Target:
	:type Target: XmlObjMgt_Persistent &
	:param RelocTable:
	:type RelocTable: XmlObjMgt_SRelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & Source,XmlObjMgt_Persistent & Target,XmlObjMgt_SRelocationTable & RelocTable);
};


%extend XmlMXCAFDoc_DimTolDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XmlMXCAFDoc_DimTolDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XmlMXCAFDoc_DimTolDriver::Handle_XmlMXCAFDoc_DimTolDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XmlMXCAFDoc_DimTolDriver;
class Handle_XmlMXCAFDoc_DimTolDriver : public Handle_XmlMDF_ADriver {

    public:
        // constructors
        Handle_XmlMXCAFDoc_DimTolDriver();
        Handle_XmlMXCAFDoc_DimTolDriver(const Handle_XmlMXCAFDoc_DimTolDriver &aHandle);
        Handle_XmlMXCAFDoc_DimTolDriver(const XmlMXCAFDoc_DimTolDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XmlMXCAFDoc_DimTolDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XmlMXCAFDoc_DimTolDriver {
    XmlMXCAFDoc_DimTolDriver* _get_reference() {
    return (XmlMXCAFDoc_DimTolDriver*)$self->get();
    }
};

%extend Handle_XmlMXCAFDoc_DimTolDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XmlMXCAFDoc_DimTolDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlMXCAFDoc_DimTolToolDriver;
class XmlMXCAFDoc_DimTolToolDriver : public XmlMDF_ADriver {
	public:
		%feature("compactdefaultargs") XmlMXCAFDoc_DimTolToolDriver;
		%feature("autodoc", "	:param theMsgDriver:
	:type theMsgDriver: Handle_CDM_MessageDriver &
	:rtype: None
") XmlMXCAFDoc_DimTolToolDriver;
		 XmlMXCAFDoc_DimTolToolDriver (const Handle_CDM_MessageDriver & theMsgDriver);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		virtual Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: XmlObjMgt_Persistent &
	:param theTarget:
	:type theTarget: Handle_TDF_Attribute &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_RRelocationTable &
	:rtype: bool
") Paste;
		virtual Standard_Boolean Paste (const XmlObjMgt_Persistent & theSource,const Handle_TDF_Attribute & theTarget,XmlObjMgt_RRelocationTable & theRelocTable);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: Handle_TDF_Attribute &
	:param theTarget:
	:type theTarget: XmlObjMgt_Persistent &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_SRelocationTable &
	:rtype: void
") Paste;
		virtual void Paste (const Handle_TDF_Attribute & theSource,XmlObjMgt_Persistent & theTarget,XmlObjMgt_SRelocationTable & theRelocTable);
};


%extend XmlMXCAFDoc_DimTolToolDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XmlMXCAFDoc_DimTolToolDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XmlMXCAFDoc_DimTolToolDriver::Handle_XmlMXCAFDoc_DimTolToolDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XmlMXCAFDoc_DimTolToolDriver;
class Handle_XmlMXCAFDoc_DimTolToolDriver : public Handle_XmlMDF_ADriver {

    public:
        // constructors
        Handle_XmlMXCAFDoc_DimTolToolDriver();
        Handle_XmlMXCAFDoc_DimTolToolDriver(const Handle_XmlMXCAFDoc_DimTolToolDriver &aHandle);
        Handle_XmlMXCAFDoc_DimTolToolDriver(const XmlMXCAFDoc_DimTolToolDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XmlMXCAFDoc_DimTolToolDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XmlMXCAFDoc_DimTolToolDriver {
    XmlMXCAFDoc_DimTolToolDriver* _get_reference() {
    return (XmlMXCAFDoc_DimTolToolDriver*)$self->get();
    }
};

%extend Handle_XmlMXCAFDoc_DimTolToolDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XmlMXCAFDoc_DimTolToolDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlMXCAFDoc_DocumentToolDriver;
class XmlMXCAFDoc_DocumentToolDriver : public XmlMDF_ADriver {
	public:
		%feature("compactdefaultargs") XmlMXCAFDoc_DocumentToolDriver;
		%feature("autodoc", "	:param theMsgDriver:
	:type theMsgDriver: Handle_CDM_MessageDriver &
	:rtype: None
") XmlMXCAFDoc_DocumentToolDriver;
		 XmlMXCAFDoc_DocumentToolDriver (const Handle_CDM_MessageDriver & theMsgDriver);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		virtual Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: XmlObjMgt_Persistent &
	:param theTarget:
	:type theTarget: Handle_TDF_Attribute &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_RRelocationTable &
	:rtype: bool
") Paste;
		virtual Standard_Boolean Paste (const XmlObjMgt_Persistent & theSource,const Handle_TDF_Attribute & theTarget,XmlObjMgt_RRelocationTable & theRelocTable);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: Handle_TDF_Attribute &
	:param theTarget:
	:type theTarget: XmlObjMgt_Persistent &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_SRelocationTable &
	:rtype: void
") Paste;
		virtual void Paste (const Handle_TDF_Attribute & theSource,XmlObjMgt_Persistent & theTarget,XmlObjMgt_SRelocationTable & theRelocTable);
};


%extend XmlMXCAFDoc_DocumentToolDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XmlMXCAFDoc_DocumentToolDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XmlMXCAFDoc_DocumentToolDriver::Handle_XmlMXCAFDoc_DocumentToolDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XmlMXCAFDoc_DocumentToolDriver;
class Handle_XmlMXCAFDoc_DocumentToolDriver : public Handle_XmlMDF_ADriver {

    public:
        // constructors
        Handle_XmlMXCAFDoc_DocumentToolDriver();
        Handle_XmlMXCAFDoc_DocumentToolDriver(const Handle_XmlMXCAFDoc_DocumentToolDriver &aHandle);
        Handle_XmlMXCAFDoc_DocumentToolDriver(const XmlMXCAFDoc_DocumentToolDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XmlMXCAFDoc_DocumentToolDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XmlMXCAFDoc_DocumentToolDriver {
    XmlMXCAFDoc_DocumentToolDriver* _get_reference() {
    return (XmlMXCAFDoc_DocumentToolDriver*)$self->get();
    }
};

%extend Handle_XmlMXCAFDoc_DocumentToolDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XmlMXCAFDoc_DocumentToolDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlMXCAFDoc_GraphNodeDriver;
class XmlMXCAFDoc_GraphNodeDriver : public XmlMDF_ADriver {
	public:
		%feature("compactdefaultargs") XmlMXCAFDoc_GraphNodeDriver;
		%feature("autodoc", "	:param theMessageDriver:
	:type theMessageDriver: Handle_CDM_MessageDriver &
	:rtype: None
") XmlMXCAFDoc_GraphNodeDriver;
		 XmlMXCAFDoc_GraphNodeDriver (const Handle_CDM_MessageDriver & theMessageDriver);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Source:
	:type Source: XmlObjMgt_Persistent &
	:param Target:
	:type Target: Handle_TDF_Attribute &
	:param RelocTable:
	:type RelocTable: XmlObjMgt_RRelocationTable &
	:rtype: bool
") Paste;
		Standard_Boolean Paste (const XmlObjMgt_Persistent & Source,const Handle_TDF_Attribute & Target,XmlObjMgt_RRelocationTable & RelocTable);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Source:
	:type Source: Handle_TDF_Attribute &
	:param Target:
	:type Target: XmlObjMgt_Persistent &
	:param RelocTable:
	:type RelocTable: XmlObjMgt_SRelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & Source,XmlObjMgt_Persistent & Target,XmlObjMgt_SRelocationTable & RelocTable);
};


%extend XmlMXCAFDoc_GraphNodeDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XmlMXCAFDoc_GraphNodeDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XmlMXCAFDoc_GraphNodeDriver::Handle_XmlMXCAFDoc_GraphNodeDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XmlMXCAFDoc_GraphNodeDriver;
class Handle_XmlMXCAFDoc_GraphNodeDriver : public Handle_XmlMDF_ADriver {

    public:
        // constructors
        Handle_XmlMXCAFDoc_GraphNodeDriver();
        Handle_XmlMXCAFDoc_GraphNodeDriver(const Handle_XmlMXCAFDoc_GraphNodeDriver &aHandle);
        Handle_XmlMXCAFDoc_GraphNodeDriver(const XmlMXCAFDoc_GraphNodeDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XmlMXCAFDoc_GraphNodeDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XmlMXCAFDoc_GraphNodeDriver {
    XmlMXCAFDoc_GraphNodeDriver* _get_reference() {
    return (XmlMXCAFDoc_GraphNodeDriver*)$self->get();
    }
};

%extend Handle_XmlMXCAFDoc_GraphNodeDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XmlMXCAFDoc_GraphNodeDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlMXCAFDoc_LayerToolDriver;
class XmlMXCAFDoc_LayerToolDriver : public XmlMDF_ADriver {
	public:
		%feature("compactdefaultargs") XmlMXCAFDoc_LayerToolDriver;
		%feature("autodoc", "	:param theMsgDriver:
	:type theMsgDriver: Handle_CDM_MessageDriver &
	:rtype: None
") XmlMXCAFDoc_LayerToolDriver;
		 XmlMXCAFDoc_LayerToolDriver (const Handle_CDM_MessageDriver & theMsgDriver);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		virtual Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: XmlObjMgt_Persistent &
	:param theTarget:
	:type theTarget: Handle_TDF_Attribute &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_RRelocationTable &
	:rtype: bool
") Paste;
		virtual Standard_Boolean Paste (const XmlObjMgt_Persistent & theSource,const Handle_TDF_Attribute & theTarget,XmlObjMgt_RRelocationTable & theRelocTable);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: Handle_TDF_Attribute &
	:param theTarget:
	:type theTarget: XmlObjMgt_Persistent &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_SRelocationTable &
	:rtype: void
") Paste;
		virtual void Paste (const Handle_TDF_Attribute & theSource,XmlObjMgt_Persistent & theTarget,XmlObjMgt_SRelocationTable & theRelocTable);
};


%extend XmlMXCAFDoc_LayerToolDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XmlMXCAFDoc_LayerToolDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XmlMXCAFDoc_LayerToolDriver::Handle_XmlMXCAFDoc_LayerToolDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XmlMXCAFDoc_LayerToolDriver;
class Handle_XmlMXCAFDoc_LayerToolDriver : public Handle_XmlMDF_ADriver {

    public:
        // constructors
        Handle_XmlMXCAFDoc_LayerToolDriver();
        Handle_XmlMXCAFDoc_LayerToolDriver(const Handle_XmlMXCAFDoc_LayerToolDriver &aHandle);
        Handle_XmlMXCAFDoc_LayerToolDriver(const XmlMXCAFDoc_LayerToolDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XmlMXCAFDoc_LayerToolDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XmlMXCAFDoc_LayerToolDriver {
    XmlMXCAFDoc_LayerToolDriver* _get_reference() {
    return (XmlMXCAFDoc_LayerToolDriver*)$self->get();
    }
};

%extend Handle_XmlMXCAFDoc_LayerToolDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XmlMXCAFDoc_LayerToolDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlMXCAFDoc_LocationDriver;
class XmlMXCAFDoc_LocationDriver : public XmlMDF_ADriver {
	public:
		%feature("compactdefaultargs") XmlMXCAFDoc_LocationDriver;
		%feature("autodoc", "	:param theMessageDriver:
	:type theMessageDriver: Handle_CDM_MessageDriver &
	:rtype: None
") XmlMXCAFDoc_LocationDriver;
		 XmlMXCAFDoc_LocationDriver (const Handle_CDM_MessageDriver & theMessageDriver);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Source:
	:type Source: XmlObjMgt_Persistent &
	:param Target:
	:type Target: Handle_TDF_Attribute &
	:param RelocTable:
	:type RelocTable: XmlObjMgt_RRelocationTable &
	:rtype: bool
") Paste;
		Standard_Boolean Paste (const XmlObjMgt_Persistent & Source,const Handle_TDF_Attribute & Target,XmlObjMgt_RRelocationTable & RelocTable);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Source:
	:type Source: Handle_TDF_Attribute &
	:param Target:
	:type Target: XmlObjMgt_Persistent &
	:param RelocTable:
	:type RelocTable: XmlObjMgt_SRelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & Source,XmlObjMgt_Persistent & Target,XmlObjMgt_SRelocationTable & RelocTable);
		%feature("compactdefaultargs") Translate;
		%feature("autodoc", "	* Translate a non storable Location to a storable Location.

	:param theLoc:
	:type theLoc: TopLoc_Location &
	:param theParent:
	:type theParent: XmlObjMgt_Element &
	:param theMap:
	:type theMap: XmlObjMgt_SRelocationTable &
	:rtype: None
") Translate;
		void Translate (const TopLoc_Location & theLoc,XmlObjMgt_Element & theParent,XmlObjMgt_SRelocationTable & theMap);
		%feature("compactdefaultargs") Translate;
		%feature("autodoc", "	* Translate a storable Location to a non storable Location.

	:param theParent:
	:type theParent: XmlObjMgt_Element &
	:param theLoc:
	:type theLoc: TopLoc_Location &
	:param theMap:
	:type theMap: XmlObjMgt_RRelocationTable &
	:rtype: bool
") Translate;
		Standard_Boolean Translate (const XmlObjMgt_Element & theParent,TopLoc_Location & theLoc,XmlObjMgt_RRelocationTable & theMap);
		%feature("compactdefaultargs") SetSharedLocations;
		%feature("autodoc", "	:param theLocations:
	:type theLocations: TopTools_LocationSetPtr &
	:rtype: None
") SetSharedLocations;
		void SetSharedLocations (const TopTools_LocationSetPtr & theLocations);
};


%extend XmlMXCAFDoc_LocationDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XmlMXCAFDoc_LocationDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XmlMXCAFDoc_LocationDriver::Handle_XmlMXCAFDoc_LocationDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XmlMXCAFDoc_LocationDriver;
class Handle_XmlMXCAFDoc_LocationDriver : public Handle_XmlMDF_ADriver {

    public:
        // constructors
        Handle_XmlMXCAFDoc_LocationDriver();
        Handle_XmlMXCAFDoc_LocationDriver(const Handle_XmlMXCAFDoc_LocationDriver &aHandle);
        Handle_XmlMXCAFDoc_LocationDriver(const XmlMXCAFDoc_LocationDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XmlMXCAFDoc_LocationDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XmlMXCAFDoc_LocationDriver {
    XmlMXCAFDoc_LocationDriver* _get_reference() {
    return (XmlMXCAFDoc_LocationDriver*)$self->get();
    }
};

%extend Handle_XmlMXCAFDoc_LocationDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XmlMXCAFDoc_LocationDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlMXCAFDoc_MaterialDriver;
class XmlMXCAFDoc_MaterialDriver : public XmlMDF_ADriver {
	public:
		%feature("compactdefaultargs") XmlMXCAFDoc_MaterialDriver;
		%feature("autodoc", "	:param theMessageDriver:
	:type theMessageDriver: Handle_CDM_MessageDriver &
	:rtype: None
") XmlMXCAFDoc_MaterialDriver;
		 XmlMXCAFDoc_MaterialDriver (const Handle_CDM_MessageDriver & theMessageDriver);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Source:
	:type Source: XmlObjMgt_Persistent &
	:param Target:
	:type Target: Handle_TDF_Attribute &
	:param RelocTable:
	:type RelocTable: XmlObjMgt_RRelocationTable &
	:rtype: bool
") Paste;
		Standard_Boolean Paste (const XmlObjMgt_Persistent & Source,const Handle_TDF_Attribute & Target,XmlObjMgt_RRelocationTable & RelocTable);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Source:
	:type Source: Handle_TDF_Attribute &
	:param Target:
	:type Target: XmlObjMgt_Persistent &
	:param RelocTable:
	:type RelocTable: XmlObjMgt_SRelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & Source,XmlObjMgt_Persistent & Target,XmlObjMgt_SRelocationTable & RelocTable);
};


%extend XmlMXCAFDoc_MaterialDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XmlMXCAFDoc_MaterialDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XmlMXCAFDoc_MaterialDriver::Handle_XmlMXCAFDoc_MaterialDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XmlMXCAFDoc_MaterialDriver;
class Handle_XmlMXCAFDoc_MaterialDriver : public Handle_XmlMDF_ADriver {

    public:
        // constructors
        Handle_XmlMXCAFDoc_MaterialDriver();
        Handle_XmlMXCAFDoc_MaterialDriver(const Handle_XmlMXCAFDoc_MaterialDriver &aHandle);
        Handle_XmlMXCAFDoc_MaterialDriver(const XmlMXCAFDoc_MaterialDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XmlMXCAFDoc_MaterialDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XmlMXCAFDoc_MaterialDriver {
    XmlMXCAFDoc_MaterialDriver* _get_reference() {
    return (XmlMXCAFDoc_MaterialDriver*)$self->get();
    }
};

%extend Handle_XmlMXCAFDoc_MaterialDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XmlMXCAFDoc_MaterialDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlMXCAFDoc_MaterialToolDriver;
class XmlMXCAFDoc_MaterialToolDriver : public XmlMDF_ADriver {
	public:
		%feature("compactdefaultargs") XmlMXCAFDoc_MaterialToolDriver;
		%feature("autodoc", "	:param theMsgDriver:
	:type theMsgDriver: Handle_CDM_MessageDriver &
	:rtype: None
") XmlMXCAFDoc_MaterialToolDriver;
		 XmlMXCAFDoc_MaterialToolDriver (const Handle_CDM_MessageDriver & theMsgDriver);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		virtual Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: XmlObjMgt_Persistent &
	:param theTarget:
	:type theTarget: Handle_TDF_Attribute &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_RRelocationTable &
	:rtype: bool
") Paste;
		virtual Standard_Boolean Paste (const XmlObjMgt_Persistent & theSource,const Handle_TDF_Attribute & theTarget,XmlObjMgt_RRelocationTable & theRelocTable);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: Handle_TDF_Attribute &
	:param theTarget:
	:type theTarget: XmlObjMgt_Persistent &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_SRelocationTable &
	:rtype: void
") Paste;
		virtual void Paste (const Handle_TDF_Attribute & theSource,XmlObjMgt_Persistent & theTarget,XmlObjMgt_SRelocationTable & theRelocTable);
};


%extend XmlMXCAFDoc_MaterialToolDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XmlMXCAFDoc_MaterialToolDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XmlMXCAFDoc_MaterialToolDriver::Handle_XmlMXCAFDoc_MaterialToolDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XmlMXCAFDoc_MaterialToolDriver;
class Handle_XmlMXCAFDoc_MaterialToolDriver : public Handle_XmlMDF_ADriver {

    public:
        // constructors
        Handle_XmlMXCAFDoc_MaterialToolDriver();
        Handle_XmlMXCAFDoc_MaterialToolDriver(const Handle_XmlMXCAFDoc_MaterialToolDriver &aHandle);
        Handle_XmlMXCAFDoc_MaterialToolDriver(const XmlMXCAFDoc_MaterialToolDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XmlMXCAFDoc_MaterialToolDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XmlMXCAFDoc_MaterialToolDriver {
    XmlMXCAFDoc_MaterialToolDriver* _get_reference() {
    return (XmlMXCAFDoc_MaterialToolDriver*)$self->get();
    }
};

%extend Handle_XmlMXCAFDoc_MaterialToolDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XmlMXCAFDoc_MaterialToolDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlMXCAFDoc_NoteDriver;
class XmlMXCAFDoc_NoteDriver : public XmlMDF_ADriver {
	public:
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: XmlObjMgt_Persistent &
	:param theTarget:
	:type theTarget: Handle_TDF_Attribute &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_RRelocationTable &
	:rtype: bool
") Paste;
		Standard_Boolean Paste (const XmlObjMgt_Persistent & theSource,const Handle_TDF_Attribute & theTarget,XmlObjMgt_RRelocationTable & theRelocTable);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: Handle_TDF_Attribute &
	:param theTarget:
	:type theTarget: XmlObjMgt_Persistent &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_SRelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & theSource,XmlObjMgt_Persistent & theTarget,XmlObjMgt_SRelocationTable & theRelocTable);
};


%extend XmlMXCAFDoc_NoteDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XmlMXCAFDoc_NoteDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XmlMXCAFDoc_NoteDriver::Handle_XmlMXCAFDoc_NoteDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XmlMXCAFDoc_NoteDriver;
class Handle_XmlMXCAFDoc_NoteDriver : public Handle_XmlMDF_ADriver {

    public:
        // constructors
        Handle_XmlMXCAFDoc_NoteDriver();
        Handle_XmlMXCAFDoc_NoteDriver(const Handle_XmlMXCAFDoc_NoteDriver &aHandle);
        Handle_XmlMXCAFDoc_NoteDriver(const XmlMXCAFDoc_NoteDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XmlMXCAFDoc_NoteDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XmlMXCAFDoc_NoteDriver {
    XmlMXCAFDoc_NoteDriver* _get_reference() {
    return (XmlMXCAFDoc_NoteDriver*)$self->get();
    }
};

%extend Handle_XmlMXCAFDoc_NoteDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XmlMXCAFDoc_NoteDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlMXCAFDoc_NotesToolDriver;
class XmlMXCAFDoc_NotesToolDriver : public XmlMDF_ADriver {
	public:
		%feature("compactdefaultargs") XmlMXCAFDoc_NotesToolDriver;
		%feature("autodoc", "	:param theMsgDriver:
	:type theMsgDriver: Handle_CDM_MessageDriver &
	:rtype: None
") XmlMXCAFDoc_NotesToolDriver;
		 XmlMXCAFDoc_NotesToolDriver (const Handle_CDM_MessageDriver & theMsgDriver);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: XmlObjMgt_Persistent &
	:param theTarget:
	:type theTarget: Handle_TDF_Attribute &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_RRelocationTable &
	:rtype: bool
") Paste;
		Standard_Boolean Paste (const XmlObjMgt_Persistent & theSource,const Handle_TDF_Attribute & theTarget,XmlObjMgt_RRelocationTable & theRelocTable);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: Handle_TDF_Attribute &
	:param theTarget:
	:type theTarget: XmlObjMgt_Persistent &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_SRelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & theSource,XmlObjMgt_Persistent & theTarget,XmlObjMgt_SRelocationTable & theRelocTable);
};


%extend XmlMXCAFDoc_NotesToolDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XmlMXCAFDoc_NotesToolDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XmlMXCAFDoc_NotesToolDriver::Handle_XmlMXCAFDoc_NotesToolDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XmlMXCAFDoc_NotesToolDriver;
class Handle_XmlMXCAFDoc_NotesToolDriver : public Handle_XmlMDF_ADriver {

    public:
        // constructors
        Handle_XmlMXCAFDoc_NotesToolDriver();
        Handle_XmlMXCAFDoc_NotesToolDriver(const Handle_XmlMXCAFDoc_NotesToolDriver &aHandle);
        Handle_XmlMXCAFDoc_NotesToolDriver(const XmlMXCAFDoc_NotesToolDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XmlMXCAFDoc_NotesToolDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XmlMXCAFDoc_NotesToolDriver {
    XmlMXCAFDoc_NotesToolDriver* _get_reference() {
    return (XmlMXCAFDoc_NotesToolDriver*)$self->get();
    }
};

%extend Handle_XmlMXCAFDoc_NotesToolDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XmlMXCAFDoc_NotesToolDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlMXCAFDoc_ShapeToolDriver;
class XmlMXCAFDoc_ShapeToolDriver : public XmlMDF_ADriver {
	public:
		%feature("compactdefaultargs") XmlMXCAFDoc_ShapeToolDriver;
		%feature("autodoc", "	:param theMsgDriver:
	:type theMsgDriver: Handle_CDM_MessageDriver &
	:rtype: None
") XmlMXCAFDoc_ShapeToolDriver;
		 XmlMXCAFDoc_ShapeToolDriver (const Handle_CDM_MessageDriver & theMsgDriver);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		virtual Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: XmlObjMgt_Persistent &
	:param theTarget:
	:type theTarget: Handle_TDF_Attribute &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_RRelocationTable &
	:rtype: bool
") Paste;
		virtual Standard_Boolean Paste (const XmlObjMgt_Persistent & theSource,const Handle_TDF_Attribute & theTarget,XmlObjMgt_RRelocationTable & theRelocTable);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: Handle_TDF_Attribute &
	:param theTarget:
	:type theTarget: XmlObjMgt_Persistent &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_SRelocationTable &
	:rtype: void
") Paste;
		virtual void Paste (const Handle_TDF_Attribute & theSource,XmlObjMgt_Persistent & theTarget,XmlObjMgt_SRelocationTable & theRelocTable);
};


%extend XmlMXCAFDoc_ShapeToolDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XmlMXCAFDoc_ShapeToolDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XmlMXCAFDoc_ShapeToolDriver::Handle_XmlMXCAFDoc_ShapeToolDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XmlMXCAFDoc_ShapeToolDriver;
class Handle_XmlMXCAFDoc_ShapeToolDriver : public Handle_XmlMDF_ADriver {

    public:
        // constructors
        Handle_XmlMXCAFDoc_ShapeToolDriver();
        Handle_XmlMXCAFDoc_ShapeToolDriver(const Handle_XmlMXCAFDoc_ShapeToolDriver &aHandle);
        Handle_XmlMXCAFDoc_ShapeToolDriver(const XmlMXCAFDoc_ShapeToolDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XmlMXCAFDoc_ShapeToolDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XmlMXCAFDoc_ShapeToolDriver {
    XmlMXCAFDoc_ShapeToolDriver* _get_reference() {
    return (XmlMXCAFDoc_ShapeToolDriver*)$self->get();
    }
};

%extend Handle_XmlMXCAFDoc_ShapeToolDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XmlMXCAFDoc_ShapeToolDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlMXCAFDoc_ViewToolDriver;
class XmlMXCAFDoc_ViewToolDriver : public XmlMDF_ADriver {
	public:
		%feature("compactdefaultargs") XmlMXCAFDoc_ViewToolDriver;
		%feature("autodoc", "	:param theMsgDriver:
	:type theMsgDriver: Handle_CDM_MessageDriver &
	:rtype: None
") XmlMXCAFDoc_ViewToolDriver;
		 XmlMXCAFDoc_ViewToolDriver (const Handle_CDM_MessageDriver & theMsgDriver);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		virtual Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: XmlObjMgt_Persistent &
	:param theTarget:
	:type theTarget: Handle_TDF_Attribute &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_RRelocationTable &
	:rtype: bool
") Paste;
		virtual Standard_Boolean Paste (const XmlObjMgt_Persistent & theSource,const Handle_TDF_Attribute & theTarget,XmlObjMgt_RRelocationTable & theRelocTable);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: Handle_TDF_Attribute &
	:param theTarget:
	:type theTarget: XmlObjMgt_Persistent &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_SRelocationTable &
	:rtype: void
") Paste;
		virtual void Paste (const Handle_TDF_Attribute & theSource,XmlObjMgt_Persistent & theTarget,XmlObjMgt_SRelocationTable & theRelocTable);
};


%extend XmlMXCAFDoc_ViewToolDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XmlMXCAFDoc_ViewToolDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XmlMXCAFDoc_ViewToolDriver::Handle_XmlMXCAFDoc_ViewToolDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XmlMXCAFDoc_ViewToolDriver;
class Handle_XmlMXCAFDoc_ViewToolDriver : public Handle_XmlMDF_ADriver {

    public:
        // constructors
        Handle_XmlMXCAFDoc_ViewToolDriver();
        Handle_XmlMXCAFDoc_ViewToolDriver(const Handle_XmlMXCAFDoc_ViewToolDriver &aHandle);
        Handle_XmlMXCAFDoc_ViewToolDriver(const XmlMXCAFDoc_ViewToolDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XmlMXCAFDoc_ViewToolDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XmlMXCAFDoc_ViewToolDriver {
    XmlMXCAFDoc_ViewToolDriver* _get_reference() {
    return (XmlMXCAFDoc_ViewToolDriver*)$self->get();
    }
};

%extend Handle_XmlMXCAFDoc_ViewToolDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XmlMXCAFDoc_ViewToolDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlMXCAFDoc_VolumeDriver;
class XmlMXCAFDoc_VolumeDriver : public XmlMDF_ADriver {
	public:
		%feature("compactdefaultargs") XmlMXCAFDoc_VolumeDriver;
		%feature("autodoc", "	:param theMessageDriver:
	:type theMessageDriver: Handle_CDM_MessageDriver &
	:rtype: None
") XmlMXCAFDoc_VolumeDriver;
		 XmlMXCAFDoc_VolumeDriver (const Handle_CDM_MessageDriver & theMessageDriver);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Source:
	:type Source: XmlObjMgt_Persistent &
	:param Target:
	:type Target: Handle_TDF_Attribute &
	:param RelocTable:
	:type RelocTable: XmlObjMgt_RRelocationTable &
	:rtype: bool
") Paste;
		Standard_Boolean Paste (const XmlObjMgt_Persistent & Source,const Handle_TDF_Attribute & Target,XmlObjMgt_RRelocationTable & RelocTable);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param Source:
	:type Source: Handle_TDF_Attribute &
	:param Target:
	:type Target: XmlObjMgt_Persistent &
	:param RelocTable:
	:type RelocTable: XmlObjMgt_SRelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & Source,XmlObjMgt_Persistent & Target,XmlObjMgt_SRelocationTable & RelocTable);
};


%extend XmlMXCAFDoc_VolumeDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XmlMXCAFDoc_VolumeDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XmlMXCAFDoc_VolumeDriver::Handle_XmlMXCAFDoc_VolumeDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XmlMXCAFDoc_VolumeDriver;
class Handle_XmlMXCAFDoc_VolumeDriver : public Handle_XmlMDF_ADriver {

    public:
        // constructors
        Handle_XmlMXCAFDoc_VolumeDriver();
        Handle_XmlMXCAFDoc_VolumeDriver(const Handle_XmlMXCAFDoc_VolumeDriver &aHandle);
        Handle_XmlMXCAFDoc_VolumeDriver(const XmlMXCAFDoc_VolumeDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XmlMXCAFDoc_VolumeDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XmlMXCAFDoc_VolumeDriver {
    XmlMXCAFDoc_VolumeDriver* _get_reference() {
    return (XmlMXCAFDoc_VolumeDriver*)$self->get();
    }
};

%extend Handle_XmlMXCAFDoc_VolumeDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XmlMXCAFDoc_VolumeDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlMXCAFDoc_NoteBinDataDriver;
class XmlMXCAFDoc_NoteBinDataDriver : public XmlMXCAFDoc_NoteDriver {
	public:
		%feature("compactdefaultargs") XmlMXCAFDoc_NoteBinDataDriver;
		%feature("autodoc", "	:param theMessageDriver:
	:type theMessageDriver: Handle_CDM_MessageDriver &
	:rtype: None
") XmlMXCAFDoc_NoteBinDataDriver;
		 XmlMXCAFDoc_NoteBinDataDriver (const Handle_CDM_MessageDriver & theMessageDriver);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: XmlObjMgt_Persistent &
	:param theTarget:
	:type theTarget: Handle_TDF_Attribute &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_RRelocationTable &
	:rtype: bool
") Paste;
		Standard_Boolean Paste (const XmlObjMgt_Persistent & theSource,const Handle_TDF_Attribute & theTarget,XmlObjMgt_RRelocationTable & theRelocTable);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: Handle_TDF_Attribute &
	:param theTarget:
	:type theTarget: XmlObjMgt_Persistent &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_SRelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & theSource,XmlObjMgt_Persistent & theTarget,XmlObjMgt_SRelocationTable & theRelocTable);
};


%extend XmlMXCAFDoc_NoteBinDataDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XmlMXCAFDoc_NoteBinDataDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XmlMXCAFDoc_NoteBinDataDriver::Handle_XmlMXCAFDoc_NoteBinDataDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XmlMXCAFDoc_NoteBinDataDriver;
class Handle_XmlMXCAFDoc_NoteBinDataDriver : public Handle_XmlMXCAFDoc_NoteDriver {

    public:
        // constructors
        Handle_XmlMXCAFDoc_NoteBinDataDriver();
        Handle_XmlMXCAFDoc_NoteBinDataDriver(const Handle_XmlMXCAFDoc_NoteBinDataDriver &aHandle);
        Handle_XmlMXCAFDoc_NoteBinDataDriver(const XmlMXCAFDoc_NoteBinDataDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XmlMXCAFDoc_NoteBinDataDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XmlMXCAFDoc_NoteBinDataDriver {
    XmlMXCAFDoc_NoteBinDataDriver* _get_reference() {
    return (XmlMXCAFDoc_NoteBinDataDriver*)$self->get();
    }
};

%extend Handle_XmlMXCAFDoc_NoteBinDataDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XmlMXCAFDoc_NoteBinDataDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlMXCAFDoc_NoteCommentDriver;
class XmlMXCAFDoc_NoteCommentDriver : public XmlMXCAFDoc_NoteDriver {
	public:
		%feature("compactdefaultargs") XmlMXCAFDoc_NoteCommentDriver;
		%feature("autodoc", "	:param theMessageDriver:
	:type theMessageDriver: Handle_CDM_MessageDriver &
	:rtype: None
") XmlMXCAFDoc_NoteCommentDriver;
		 XmlMXCAFDoc_NoteCommentDriver (const Handle_CDM_MessageDriver & theMessageDriver);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: XmlObjMgt_Persistent &
	:param theTarget:
	:type theTarget: Handle_TDF_Attribute &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_RRelocationTable &
	:rtype: bool
") Paste;
		Standard_Boolean Paste (const XmlObjMgt_Persistent & theSource,const Handle_TDF_Attribute & theTarget,XmlObjMgt_RRelocationTable & theRelocTable);
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "	:param theSource:
	:type theSource: Handle_TDF_Attribute &
	:param theTarget:
	:type theTarget: XmlObjMgt_Persistent &
	:param theRelocTable:
	:type theRelocTable: XmlObjMgt_SRelocationTable &
	:rtype: None
") Paste;
		void Paste (const Handle_TDF_Attribute & theSource,XmlObjMgt_Persistent & theTarget,XmlObjMgt_SRelocationTable & theRelocTable);
};


%extend XmlMXCAFDoc_NoteCommentDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XmlMXCAFDoc_NoteCommentDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XmlMXCAFDoc_NoteCommentDriver::Handle_XmlMXCAFDoc_NoteCommentDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XmlMXCAFDoc_NoteCommentDriver;
class Handle_XmlMXCAFDoc_NoteCommentDriver : public Handle_XmlMXCAFDoc_NoteDriver {

    public:
        // constructors
        Handle_XmlMXCAFDoc_NoteCommentDriver();
        Handle_XmlMXCAFDoc_NoteCommentDriver(const Handle_XmlMXCAFDoc_NoteCommentDriver &aHandle);
        Handle_XmlMXCAFDoc_NoteCommentDriver(const XmlMXCAFDoc_NoteCommentDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XmlMXCAFDoc_NoteCommentDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XmlMXCAFDoc_NoteCommentDriver {
    XmlMXCAFDoc_NoteCommentDriver* _get_reference() {
    return (XmlMXCAFDoc_NoteCommentDriver*)$self->get();
    }
};

%extend Handle_XmlMXCAFDoc_NoteCommentDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XmlMXCAFDoc_NoteCommentDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlMXCAFDoc_NoteBalloonDriver;
class XmlMXCAFDoc_NoteBalloonDriver : public XmlMXCAFDoc_NoteCommentDriver {
	public:
		%feature("compactdefaultargs") XmlMXCAFDoc_NoteBalloonDriver;
		%feature("autodoc", "	:param theMessageDriver:
	:type theMessageDriver: Handle_CDM_MessageDriver &
	:rtype: None
") XmlMXCAFDoc_NoteBalloonDriver;
		 XmlMXCAFDoc_NoteBalloonDriver (const Handle_CDM_MessageDriver & theMessageDriver);
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "	:rtype: Handle_TDF_Attribute
") NewEmpty;
		Handle_TDF_Attribute NewEmpty ();
};


%extend XmlMXCAFDoc_NoteBalloonDriver {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_XmlMXCAFDoc_NoteBalloonDriver(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_XmlMXCAFDoc_NoteBalloonDriver::Handle_XmlMXCAFDoc_NoteBalloonDriver %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_XmlMXCAFDoc_NoteBalloonDriver;
class Handle_XmlMXCAFDoc_NoteBalloonDriver : public Handle_XmlMXCAFDoc_NoteCommentDriver {

    public:
        // constructors
        Handle_XmlMXCAFDoc_NoteBalloonDriver();
        Handle_XmlMXCAFDoc_NoteBalloonDriver(const Handle_XmlMXCAFDoc_NoteBalloonDriver &aHandle);
        Handle_XmlMXCAFDoc_NoteBalloonDriver(const XmlMXCAFDoc_NoteBalloonDriver *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_XmlMXCAFDoc_NoteBalloonDriver DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_XmlMXCAFDoc_NoteBalloonDriver {
    XmlMXCAFDoc_NoteBalloonDriver* _get_reference() {
    return (XmlMXCAFDoc_NoteBalloonDriver*)$self->get();
    }
};

%extend Handle_XmlMXCAFDoc_NoteBalloonDriver {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend XmlMXCAFDoc_NoteBalloonDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
