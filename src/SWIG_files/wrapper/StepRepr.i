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
%define STEPREPRDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=STEPREPRDOCSTRING) StepRepr

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


%include StepRepr_headers.i


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
%template(StepRepr_Array1OfShapeAspect) NCollection_Array1 <Handle(StepRepr_ShapeAspect)>;
%template(StepRepr_Array1OfRepresentationItem) NCollection_Array1 <Handle(StepRepr_RepresentationItem)>;
%template(StepRepr_SequenceOfMaterialPropertyRepresentation) NCollection_Sequence <Handle(StepRepr_MaterialPropertyRepresentation)>;
%template(StepRepr_Array1OfMaterialPropertyRepresentation) NCollection_Array1 <Handle(StepRepr_MaterialPropertyRepresentation)>;
%template(StepRepr_Array1OfPropertyDefinitionRepresentation) NCollection_Array1 <Handle(StepRepr_PropertyDefinitionRepresentation)>;
%template(StepRepr_SequenceOfRepresentationItem) NCollection_Sequence <Handle(StepRepr_RepresentationItem)>;
/* end templates declaration */

/* end templates declaration */

/* typedefs */
typedef NCollection_Array1 <Handle_StepRepr_ShapeAspect> StepRepr_Array1OfShapeAspect;
typedef NCollection_Array1 <Handle_StepRepr_RepresentationItem> StepRepr_Array1OfRepresentationItem;
typedef NCollection_Sequence <Handle_StepRepr_MaterialPropertyRepresentation> StepRepr_SequenceOfMaterialPropertyRepresentation;
typedef NCollection_Array1 <Handle_StepRepr_MaterialPropertyRepresentation> StepRepr_Array1OfMaterialPropertyRepresentation;
typedef NCollection_Array1 <Handle_StepRepr_PropertyDefinitionRepresentation> StepRepr_Array1OfPropertyDefinitionRepresentation;
typedef NCollection_Sequence <Handle_StepRepr_RepresentationItem> StepRepr_SequenceOfRepresentationItem;
/* end typedefs declaration */

/* public enums */
/* end public enums declaration */

%nodefaultctor StepRepr_AssemblyComponentUsageSubstitute;
class StepRepr_AssemblyComponentUsageSubstitute : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepRepr_AssemblyComponentUsageSubstitute;
		%feature("autodoc", "	:rtype: None
") StepRepr_AssemblyComponentUsageSubstitute;
		 StepRepr_AssemblyComponentUsageSubstitute ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDef:
	:type aDef: Handle_TCollection_HAsciiString &
	:param aBase:
	:type aBase: Handle_StepRepr_AssemblyComponentUsage &
	:param aSubs:
	:type aSubs: Handle_StepRepr_AssemblyComponentUsage &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDef,const Handle_StepRepr_AssemblyComponentUsage & aBase,const Handle_StepRepr_AssemblyComponentUsage & aSubs);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") Name;
		Handle_TCollection_HAsciiString Name ();
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:rtype: None
") SetName;
		void SetName (const Handle_TCollection_HAsciiString & aName);
		%feature("compactdefaultargs") Definition;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") Definition;
		Handle_TCollection_HAsciiString Definition ();
		%feature("compactdefaultargs") SetDefinition;
		%feature("autodoc", "	:param aDef:
	:type aDef: Handle_TCollection_HAsciiString &
	:rtype: None
") SetDefinition;
		void SetDefinition (const Handle_TCollection_HAsciiString & aDef);
		%feature("compactdefaultargs") Base;
		%feature("autodoc", "	:rtype: Handle_StepRepr_AssemblyComponentUsage
") Base;
		Handle_StepRepr_AssemblyComponentUsage Base ();
		%feature("compactdefaultargs") SetBase;
		%feature("autodoc", "	:param aBase:
	:type aBase: Handle_StepRepr_AssemblyComponentUsage &
	:rtype: None
") SetBase;
		void SetBase (const Handle_StepRepr_AssemblyComponentUsage & aBase);
		%feature("compactdefaultargs") Substitute;
		%feature("autodoc", "	:rtype: Handle_StepRepr_AssemblyComponentUsage
") Substitute;
		Handle_StepRepr_AssemblyComponentUsage Substitute ();
		%feature("compactdefaultargs") SetSubstitute;
		%feature("autodoc", "	:param aSubstitute:
	:type aSubstitute: Handle_StepRepr_AssemblyComponentUsage &
	:rtype: None
") SetSubstitute;
		void SetSubstitute (const Handle_StepRepr_AssemblyComponentUsage & aSubstitute);
};


%extend StepRepr_AssemblyComponentUsageSubstitute {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_AssemblyComponentUsageSubstitute(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_AssemblyComponentUsageSubstitute::Handle_StepRepr_AssemblyComponentUsageSubstitute %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_AssemblyComponentUsageSubstitute;
class Handle_StepRepr_AssemblyComponentUsageSubstitute : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepRepr_AssemblyComponentUsageSubstitute();
        Handle_StepRepr_AssemblyComponentUsageSubstitute(const Handle_StepRepr_AssemblyComponentUsageSubstitute &aHandle);
        Handle_StepRepr_AssemblyComponentUsageSubstitute(const StepRepr_AssemblyComponentUsageSubstitute *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_AssemblyComponentUsageSubstitute DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_AssemblyComponentUsageSubstitute {
    StepRepr_AssemblyComponentUsageSubstitute* _get_reference() {
    return (StepRepr_AssemblyComponentUsageSubstitute*)$self->get();
    }
};

%extend Handle_StepRepr_AssemblyComponentUsageSubstitute {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_AssemblyComponentUsageSubstitute {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_CharacterizedDefinition;
class StepRepr_CharacterizedDefinition : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepRepr_CharacterizedDefinition;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepRepr_CharacterizedDefinition;
		 StepRepr_CharacterizedDefinition ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a kind of CharacterizedDefinition select type 1 -> CharacterizedObject from StepBasic 2 -> ProductDefinition from StepBasic 3 -> ProductDefinitionRelationship from StepBasic 4 -> ProductDefinitionShape from StepRepr 5 -> ShapeAspect from StepRepr 6 -> ShapeAspectRelationship from StepRepr 7 -> DocumentFile from StepBasic 0 else

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") CharacterizedObject;
		%feature("autodoc", "	* Returns Value as CharacterizedObject --or Null if another type--

	:rtype: Handle_StepBasic_CharacterizedObject
") CharacterizedObject;
		Handle_StepBasic_CharacterizedObject CharacterizedObject ();
		%feature("compactdefaultargs") ProductDefinition;
		%feature("autodoc", "	* Returns Value as ProductDefinition --or Null if another type--

	:rtype: Handle_StepBasic_ProductDefinition
") ProductDefinition;
		Handle_StepBasic_ProductDefinition ProductDefinition ();
		%feature("compactdefaultargs") ProductDefinitionRelationship;
		%feature("autodoc", "	* Returns Value as ProductDefinitionRelationship --or Null if another type--

	:rtype: Handle_StepBasic_ProductDefinitionRelationship
") ProductDefinitionRelationship;
		Handle_StepBasic_ProductDefinitionRelationship ProductDefinitionRelationship ();
		%feature("compactdefaultargs") ProductDefinitionShape;
		%feature("autodoc", "	* Returns Value as ProductDefinitionShape --or Null if another type--

	:rtype: Handle_StepRepr_ProductDefinitionShape
") ProductDefinitionShape;
		Handle_StepRepr_ProductDefinitionShape ProductDefinitionShape ();
		%feature("compactdefaultargs") ShapeAspect;
		%feature("autodoc", "	* Returns Value as ShapeAspect --or Null if another type--

	:rtype: Handle_StepRepr_ShapeAspect
") ShapeAspect;
		Handle_StepRepr_ShapeAspect ShapeAspect ();
		%feature("compactdefaultargs") ShapeAspectRelationship;
		%feature("autodoc", "	* Returns Value as ShapeAspectRelationship --or Null if another type--

	:rtype: Handle_StepRepr_ShapeAspectRelationship
") ShapeAspectRelationship;
		Handle_StepRepr_ShapeAspectRelationship ShapeAspectRelationship ();
		%feature("compactdefaultargs") DocumentFile;
		%feature("autodoc", "	* Returns Value as DocumentFile --or Null if another type--

	:rtype: Handle_StepBasic_DocumentFile
") DocumentFile;
		Handle_StepBasic_DocumentFile DocumentFile ();
};


%extend StepRepr_CharacterizedDefinition {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ConfigurationDesign;
class StepRepr_ConfigurationDesign : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepRepr_ConfigurationDesign;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepRepr_ConfigurationDesign;
		 StepRepr_ConfigurationDesign ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aConfiguration:
	:type aConfiguration: Handle_StepRepr_ConfigurationItem &
	:param aDesign:
	:type aDesign: StepRepr_ConfigurationDesignItem &
	:rtype: None
") Init;
		void Init (const Handle_StepRepr_ConfigurationItem & aConfiguration,const StepRepr_ConfigurationDesignItem & aDesign);
		%feature("compactdefaultargs") Configuration;
		%feature("autodoc", "	* Returns field Configuration

	:rtype: Handle_StepRepr_ConfigurationItem
") Configuration;
		Handle_StepRepr_ConfigurationItem Configuration ();
		%feature("compactdefaultargs") SetConfiguration;
		%feature("autodoc", "	* Set field Configuration

	:param Configuration:
	:type Configuration: Handle_StepRepr_ConfigurationItem &
	:rtype: None
") SetConfiguration;
		void SetConfiguration (const Handle_StepRepr_ConfigurationItem & Configuration);
		%feature("compactdefaultargs") Design;
		%feature("autodoc", "	* Returns field Design

	:rtype: StepRepr_ConfigurationDesignItem
") Design;
		StepRepr_ConfigurationDesignItem Design ();
		%feature("compactdefaultargs") SetDesign;
		%feature("autodoc", "	* Set field Design

	:param Design:
	:type Design: StepRepr_ConfigurationDesignItem &
	:rtype: None
") SetDesign;
		void SetDesign (const StepRepr_ConfigurationDesignItem & Design);
};


%extend StepRepr_ConfigurationDesign {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ConfigurationDesign(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ConfigurationDesign::Handle_StepRepr_ConfigurationDesign %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ConfigurationDesign;
class Handle_StepRepr_ConfigurationDesign : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepRepr_ConfigurationDesign();
        Handle_StepRepr_ConfigurationDesign(const Handle_StepRepr_ConfigurationDesign &aHandle);
        Handle_StepRepr_ConfigurationDesign(const StepRepr_ConfigurationDesign *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ConfigurationDesign DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ConfigurationDesign {
    StepRepr_ConfigurationDesign* _get_reference() {
    return (StepRepr_ConfigurationDesign*)$self->get();
    }
};

%extend Handle_StepRepr_ConfigurationDesign {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ConfigurationDesign {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ConfigurationDesignItem;
class StepRepr_ConfigurationDesignItem : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepRepr_ConfigurationDesignItem;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepRepr_ConfigurationDesignItem;
		 StepRepr_ConfigurationDesignItem ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a kind of ConfigurationDesignItem select type 1 -> ProductDefinition from StepBasic 2 -> ProductDefinitionFormation from StepBasic 0 else

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") ProductDefinition;
		%feature("autodoc", "	* Returns Value as ProductDefinition --or Null if another type--

	:rtype: Handle_StepBasic_ProductDefinition
") ProductDefinition;
		Handle_StepBasic_ProductDefinition ProductDefinition ();
		%feature("compactdefaultargs") ProductDefinitionFormation;
		%feature("autodoc", "	* Returns Value as ProductDefinitionFormation --or Null if another type--

	:rtype: Handle_StepBasic_ProductDefinitionFormation
") ProductDefinitionFormation;
		Handle_StepBasic_ProductDefinitionFormation ProductDefinitionFormation ();
};


%extend StepRepr_ConfigurationDesignItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ConfigurationEffectivity;
class StepRepr_ConfigurationEffectivity : public StepBasic_ProductDefinitionEffectivity {
	public:
		%feature("compactdefaultargs") StepRepr_ConfigurationEffectivity;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepRepr_ConfigurationEffectivity;
		 StepRepr_ConfigurationEffectivity ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aEffectivity_Id:
	:type aEffectivity_Id: Handle_TCollection_HAsciiString &
	:param aProductDefinitionEffectivity_Usage:
	:type aProductDefinitionEffectivity_Usage: Handle_StepBasic_ProductDefinitionRelationship &
	:param aConfiguration:
	:type aConfiguration: Handle_StepRepr_ConfigurationDesign &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aEffectivity_Id,const Handle_StepBasic_ProductDefinitionRelationship & aProductDefinitionEffectivity_Usage,const Handle_StepRepr_ConfigurationDesign & aConfiguration);
		%feature("compactdefaultargs") Configuration;
		%feature("autodoc", "	* Returns field Configuration

	:rtype: Handle_StepRepr_ConfigurationDesign
") Configuration;
		Handle_StepRepr_ConfigurationDesign Configuration ();
		%feature("compactdefaultargs") SetConfiguration;
		%feature("autodoc", "	* Set field Configuration

	:param Configuration:
	:type Configuration: Handle_StepRepr_ConfigurationDesign &
	:rtype: None
") SetConfiguration;
		void SetConfiguration (const Handle_StepRepr_ConfigurationDesign & Configuration);
};


%extend StepRepr_ConfigurationEffectivity {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ConfigurationEffectivity(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ConfigurationEffectivity::Handle_StepRepr_ConfigurationEffectivity %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ConfigurationEffectivity;
class Handle_StepRepr_ConfigurationEffectivity : public Handle_StepBasic_ProductDefinitionEffectivity {

    public:
        // constructors
        Handle_StepRepr_ConfigurationEffectivity();
        Handle_StepRepr_ConfigurationEffectivity(const Handle_StepRepr_ConfigurationEffectivity &aHandle);
        Handle_StepRepr_ConfigurationEffectivity(const StepRepr_ConfigurationEffectivity *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ConfigurationEffectivity DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ConfigurationEffectivity {
    StepRepr_ConfigurationEffectivity* _get_reference() {
    return (StepRepr_ConfigurationEffectivity*)$self->get();
    }
};

%extend Handle_StepRepr_ConfigurationEffectivity {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ConfigurationEffectivity {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ConfigurationItem;
class StepRepr_ConfigurationItem : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepRepr_ConfigurationItem;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepRepr_ConfigurationItem;
		 StepRepr_ConfigurationItem ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aId:
	:type aId: Handle_TCollection_HAsciiString &
	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param hasDescription:
	:type hasDescription: bool
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aItemConcept:
	:type aItemConcept: Handle_StepRepr_ProductConcept &
	:param hasPurpose:
	:type hasPurpose: bool
	:param aPurpose:
	:type aPurpose: Handle_TCollection_HAsciiString &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aId,const Handle_TCollection_HAsciiString & aName,const Standard_Boolean hasDescription,const Handle_TCollection_HAsciiString & aDescription,const Handle_StepRepr_ProductConcept & aItemConcept,const Standard_Boolean hasPurpose,const Handle_TCollection_HAsciiString & aPurpose);
		%feature("compactdefaultargs") Id;
		%feature("autodoc", "	* Returns field Id

	:rtype: Handle_TCollection_HAsciiString
") Id;
		Handle_TCollection_HAsciiString Id ();
		%feature("compactdefaultargs") SetId;
		%feature("autodoc", "	* Set field Id

	:param Id:
	:type Id: Handle_TCollection_HAsciiString &
	:rtype: None
") SetId;
		void SetId (const Handle_TCollection_HAsciiString & Id);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	* Returns field Name

	:rtype: Handle_TCollection_HAsciiString
") Name;
		Handle_TCollection_HAsciiString Name ();
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	* Set field Name

	:param Name:
	:type Name: Handle_TCollection_HAsciiString &
	:rtype: None
") SetName;
		void SetName (const Handle_TCollection_HAsciiString & Name);
		%feature("compactdefaultargs") Description;
		%feature("autodoc", "	* Returns field Description

	:rtype: Handle_TCollection_HAsciiString
") Description;
		Handle_TCollection_HAsciiString Description ();
		%feature("compactdefaultargs") SetDescription;
		%feature("autodoc", "	* Set field Description

	:param Description:
	:type Description: Handle_TCollection_HAsciiString &
	:rtype: None
") SetDescription;
		void SetDescription (const Handle_TCollection_HAsciiString & Description);
		%feature("compactdefaultargs") HasDescription;
		%feature("autodoc", "	* Returns True if optional field Description is defined

	:rtype: bool
") HasDescription;
		Standard_Boolean HasDescription ();
		%feature("compactdefaultargs") ItemConcept;
		%feature("autodoc", "	* Returns field ItemConcept

	:rtype: Handle_StepRepr_ProductConcept
") ItemConcept;
		Handle_StepRepr_ProductConcept ItemConcept ();
		%feature("compactdefaultargs") SetItemConcept;
		%feature("autodoc", "	* Set field ItemConcept

	:param ItemConcept:
	:type ItemConcept: Handle_StepRepr_ProductConcept &
	:rtype: None
") SetItemConcept;
		void SetItemConcept (const Handle_StepRepr_ProductConcept & ItemConcept);
		%feature("compactdefaultargs") Purpose;
		%feature("autodoc", "	* Returns field Purpose

	:rtype: Handle_TCollection_HAsciiString
") Purpose;
		Handle_TCollection_HAsciiString Purpose ();
		%feature("compactdefaultargs") SetPurpose;
		%feature("autodoc", "	* Set field Purpose

	:param Purpose:
	:type Purpose: Handle_TCollection_HAsciiString &
	:rtype: None
") SetPurpose;
		void SetPurpose (const Handle_TCollection_HAsciiString & Purpose);
		%feature("compactdefaultargs") HasPurpose;
		%feature("autodoc", "	* Returns True if optional field Purpose is defined

	:rtype: bool
") HasPurpose;
		Standard_Boolean HasPurpose ();
};


%extend StepRepr_ConfigurationItem {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ConfigurationItem(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ConfigurationItem::Handle_StepRepr_ConfigurationItem %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ConfigurationItem;
class Handle_StepRepr_ConfigurationItem : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepRepr_ConfigurationItem();
        Handle_StepRepr_ConfigurationItem(const Handle_StepRepr_ConfigurationItem &aHandle);
        Handle_StepRepr_ConfigurationItem(const StepRepr_ConfigurationItem *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ConfigurationItem DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ConfigurationItem {
    StepRepr_ConfigurationItem* _get_reference() {
    return (StepRepr_ConfigurationItem*)$self->get();
    }
};

%extend Handle_StepRepr_ConfigurationItem {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ConfigurationItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_DataEnvironment;
class StepRepr_DataEnvironment : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepRepr_DataEnvironment;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepRepr_DataEnvironment;
		 StepRepr_DataEnvironment ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aElements:
	:type aElements: Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription,const Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation & aElements);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	* Returns field Name

	:rtype: Handle_TCollection_HAsciiString
") Name;
		Handle_TCollection_HAsciiString Name ();
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	* Set field Name

	:param Name:
	:type Name: Handle_TCollection_HAsciiString &
	:rtype: None
") SetName;
		void SetName (const Handle_TCollection_HAsciiString & Name);
		%feature("compactdefaultargs") Description;
		%feature("autodoc", "	* Returns field Description

	:rtype: Handle_TCollection_HAsciiString
") Description;
		Handle_TCollection_HAsciiString Description ();
		%feature("compactdefaultargs") SetDescription;
		%feature("autodoc", "	* Set field Description

	:param Description:
	:type Description: Handle_TCollection_HAsciiString &
	:rtype: None
") SetDescription;
		void SetDescription (const Handle_TCollection_HAsciiString & Description);
		%feature("compactdefaultargs") Elements;
		%feature("autodoc", "	* Returns field Elements

	:rtype: Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation
") Elements;
		Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation Elements ();
		%feature("compactdefaultargs") SetElements;
		%feature("autodoc", "	* Set field Elements

	:param Elements:
	:type Elements: Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation &
	:rtype: None
") SetElements;
		void SetElements (const Handle_StepRepr_HArray1OfPropertyDefinitionRepresentation & Elements);
};


%extend StepRepr_DataEnvironment {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_DataEnvironment(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_DataEnvironment::Handle_StepRepr_DataEnvironment %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_DataEnvironment;
class Handle_StepRepr_DataEnvironment : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepRepr_DataEnvironment();
        Handle_StepRepr_DataEnvironment(const Handle_StepRepr_DataEnvironment &aHandle);
        Handle_StepRepr_DataEnvironment(const StepRepr_DataEnvironment *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_DataEnvironment DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_DataEnvironment {
    StepRepr_DataEnvironment* _get_reference() {
    return (StepRepr_DataEnvironment*)$self->get();
    }
};

%extend Handle_StepRepr_DataEnvironment {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_DataEnvironment {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_FunctionallyDefinedTransformation;
class StepRepr_FunctionallyDefinedTransformation : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepRepr_FunctionallyDefinedTransformation;
		%feature("autodoc", "	* Returns a FunctionallyDefinedTransformation

	:rtype: None
") StepRepr_FunctionallyDefinedTransformation;
		 StepRepr_FunctionallyDefinedTransformation ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription);
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:rtype: None
") SetName;
		void SetName (const Handle_TCollection_HAsciiString & aName);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") Name;
		Handle_TCollection_HAsciiString Name ();
		%feature("compactdefaultargs") SetDescription;
		%feature("autodoc", "	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:rtype: None
") SetDescription;
		void SetDescription (const Handle_TCollection_HAsciiString & aDescription);
		%feature("compactdefaultargs") Description;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") Description;
		Handle_TCollection_HAsciiString Description ();
};


%extend StepRepr_FunctionallyDefinedTransformation {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_FunctionallyDefinedTransformation(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_FunctionallyDefinedTransformation::Handle_StepRepr_FunctionallyDefinedTransformation %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_FunctionallyDefinedTransformation;
class Handle_StepRepr_FunctionallyDefinedTransformation : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepRepr_FunctionallyDefinedTransformation();
        Handle_StepRepr_FunctionallyDefinedTransformation(const Handle_StepRepr_FunctionallyDefinedTransformation &aHandle);
        Handle_StepRepr_FunctionallyDefinedTransformation(const StepRepr_FunctionallyDefinedTransformation *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_FunctionallyDefinedTransformation DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_FunctionallyDefinedTransformation {
    StepRepr_FunctionallyDefinedTransformation* _get_reference() {
    return (StepRepr_FunctionallyDefinedTransformation*)$self->get();
    }
};

%extend Handle_StepRepr_FunctionallyDefinedTransformation {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_FunctionallyDefinedTransformation {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ItemDefinedTransformation;
class StepRepr_ItemDefinedTransformation : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepRepr_ItemDefinedTransformation;
		%feature("autodoc", "	:rtype: None
") StepRepr_ItemDefinedTransformation;
		 StepRepr_ItemDefinedTransformation ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aTransformItem1:
	:type aTransformItem1: Handle_StepRepr_RepresentationItem &
	:param aTransformItem2:
	:type aTransformItem2: Handle_StepRepr_RepresentationItem &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription,const Handle_StepRepr_RepresentationItem & aTransformItem1,const Handle_StepRepr_RepresentationItem & aTransformItem2);
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:rtype: None
") SetName;
		void SetName (const Handle_TCollection_HAsciiString & aName);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") Name;
		Handle_TCollection_HAsciiString Name ();
		%feature("compactdefaultargs") SetDescription;
		%feature("autodoc", "	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:rtype: None
") SetDescription;
		void SetDescription (const Handle_TCollection_HAsciiString & aDescription);
		%feature("compactdefaultargs") Description;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") Description;
		Handle_TCollection_HAsciiString Description ();
		%feature("compactdefaultargs") SetTransformItem1;
		%feature("autodoc", "	:param aItem:
	:type aItem: Handle_StepRepr_RepresentationItem &
	:rtype: None
") SetTransformItem1;
		void SetTransformItem1 (const Handle_StepRepr_RepresentationItem & aItem);
		%feature("compactdefaultargs") TransformItem1;
		%feature("autodoc", "	:rtype: Handle_StepRepr_RepresentationItem
") TransformItem1;
		Handle_StepRepr_RepresentationItem TransformItem1 ();
		%feature("compactdefaultargs") SetTransformItem2;
		%feature("autodoc", "	:param aItem:
	:type aItem: Handle_StepRepr_RepresentationItem &
	:rtype: None
") SetTransformItem2;
		void SetTransformItem2 (const Handle_StepRepr_RepresentationItem & aItem);
		%feature("compactdefaultargs") TransformItem2;
		%feature("autodoc", "	:rtype: Handle_StepRepr_RepresentationItem
") TransformItem2;
		Handle_StepRepr_RepresentationItem TransformItem2 ();
};


%extend StepRepr_ItemDefinedTransformation {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ItemDefinedTransformation(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ItemDefinedTransformation::Handle_StepRepr_ItemDefinedTransformation %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ItemDefinedTransformation;
class Handle_StepRepr_ItemDefinedTransformation : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepRepr_ItemDefinedTransformation();
        Handle_StepRepr_ItemDefinedTransformation(const Handle_StepRepr_ItemDefinedTransformation &aHandle);
        Handle_StepRepr_ItemDefinedTransformation(const StepRepr_ItemDefinedTransformation *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ItemDefinedTransformation DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ItemDefinedTransformation {
    StepRepr_ItemDefinedTransformation* _get_reference() {
    return (StepRepr_ItemDefinedTransformation*)$self->get();
    }
};

%extend Handle_StepRepr_ItemDefinedTransformation {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ItemDefinedTransformation {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_MaterialDesignation;
class StepRepr_MaterialDesignation : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepRepr_MaterialDesignation;
		%feature("autodoc", "	:rtype: None
") StepRepr_MaterialDesignation;
		 StepRepr_MaterialDesignation ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aOfDefinition:
	:type aOfDefinition: StepRepr_CharacterizedDefinition &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName,const StepRepr_CharacterizedDefinition & aOfDefinition);
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:rtype: None
") SetName;
		void SetName (const Handle_TCollection_HAsciiString & aName);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") Name;
		Handle_TCollection_HAsciiString Name ();
		%feature("compactdefaultargs") SetOfDefinition;
		%feature("autodoc", "	:param aOfDefinition:
	:type aOfDefinition: StepRepr_CharacterizedDefinition &
	:rtype: None
") SetOfDefinition;
		void SetOfDefinition (const StepRepr_CharacterizedDefinition & aOfDefinition);
		%feature("compactdefaultargs") OfDefinition;
		%feature("autodoc", "	:rtype: StepRepr_CharacterizedDefinition
") OfDefinition;
		StepRepr_CharacterizedDefinition OfDefinition ();
};


%extend StepRepr_MaterialDesignation {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_MaterialDesignation(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_MaterialDesignation::Handle_StepRepr_MaterialDesignation %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_MaterialDesignation;
class Handle_StepRepr_MaterialDesignation : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepRepr_MaterialDesignation();
        Handle_StepRepr_MaterialDesignation(const Handle_StepRepr_MaterialDesignation &aHandle);
        Handle_StepRepr_MaterialDesignation(const StepRepr_MaterialDesignation *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_MaterialDesignation DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_MaterialDesignation {
    StepRepr_MaterialDesignation* _get_reference() {
    return (StepRepr_MaterialDesignation*)$self->get();
    }
};

%extend Handle_StepRepr_MaterialDesignation {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_MaterialDesignation {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ProductConcept;
class StepRepr_ProductConcept : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepRepr_ProductConcept;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepRepr_ProductConcept;
		 StepRepr_ProductConcept ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aId:
	:type aId: Handle_TCollection_HAsciiString &
	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param hasDescription:
	:type hasDescription: bool
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aMarketContext:
	:type aMarketContext: Handle_StepBasic_ProductConceptContext &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aId,const Handle_TCollection_HAsciiString & aName,const Standard_Boolean hasDescription,const Handle_TCollection_HAsciiString & aDescription,const Handle_StepBasic_ProductConceptContext & aMarketContext);
		%feature("compactdefaultargs") Id;
		%feature("autodoc", "	* Returns field Id

	:rtype: Handle_TCollection_HAsciiString
") Id;
		Handle_TCollection_HAsciiString Id ();
		%feature("compactdefaultargs") SetId;
		%feature("autodoc", "	* Set field Id

	:param Id:
	:type Id: Handle_TCollection_HAsciiString &
	:rtype: None
") SetId;
		void SetId (const Handle_TCollection_HAsciiString & Id);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	* Returns field Name

	:rtype: Handle_TCollection_HAsciiString
") Name;
		Handle_TCollection_HAsciiString Name ();
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	* Set field Name

	:param Name:
	:type Name: Handle_TCollection_HAsciiString &
	:rtype: None
") SetName;
		void SetName (const Handle_TCollection_HAsciiString & Name);
		%feature("compactdefaultargs") Description;
		%feature("autodoc", "	* Returns field Description

	:rtype: Handle_TCollection_HAsciiString
") Description;
		Handle_TCollection_HAsciiString Description ();
		%feature("compactdefaultargs") SetDescription;
		%feature("autodoc", "	* Set field Description

	:param Description:
	:type Description: Handle_TCollection_HAsciiString &
	:rtype: None
") SetDescription;
		void SetDescription (const Handle_TCollection_HAsciiString & Description);
		%feature("compactdefaultargs") HasDescription;
		%feature("autodoc", "	* Returns True if optional field Description is defined

	:rtype: bool
") HasDescription;
		Standard_Boolean HasDescription ();
		%feature("compactdefaultargs") MarketContext;
		%feature("autodoc", "	* Returns field MarketContext

	:rtype: Handle_StepBasic_ProductConceptContext
") MarketContext;
		Handle_StepBasic_ProductConceptContext MarketContext ();
		%feature("compactdefaultargs") SetMarketContext;
		%feature("autodoc", "	* Set field MarketContext

	:param MarketContext:
	:type MarketContext: Handle_StepBasic_ProductConceptContext &
	:rtype: None
") SetMarketContext;
		void SetMarketContext (const Handle_StepBasic_ProductConceptContext & MarketContext);
};


%extend StepRepr_ProductConcept {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ProductConcept(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ProductConcept::Handle_StepRepr_ProductConcept %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ProductConcept;
class Handle_StepRepr_ProductConcept : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepRepr_ProductConcept();
        Handle_StepRepr_ProductConcept(const Handle_StepRepr_ProductConcept &aHandle);
        Handle_StepRepr_ProductConcept(const StepRepr_ProductConcept *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ProductConcept DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ProductConcept {
    StepRepr_ProductConcept* _get_reference() {
    return (StepRepr_ProductConcept*)$self->get();
    }
};

%extend Handle_StepRepr_ProductConcept {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ProductConcept {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ProductDefinitionUsage;
class StepRepr_ProductDefinitionUsage : public StepBasic_ProductDefinitionRelationship {
	public:
		%feature("compactdefaultargs") StepRepr_ProductDefinitionUsage;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepRepr_ProductDefinitionUsage;
		 StepRepr_ProductDefinitionUsage ();
};


%extend StepRepr_ProductDefinitionUsage {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ProductDefinitionUsage(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ProductDefinitionUsage::Handle_StepRepr_ProductDefinitionUsage %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ProductDefinitionUsage;
class Handle_StepRepr_ProductDefinitionUsage : public Handle_StepBasic_ProductDefinitionRelationship {

    public:
        // constructors
        Handle_StepRepr_ProductDefinitionUsage();
        Handle_StepRepr_ProductDefinitionUsage(const Handle_StepRepr_ProductDefinitionUsage &aHandle);
        Handle_StepRepr_ProductDefinitionUsage(const StepRepr_ProductDefinitionUsage *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ProductDefinitionUsage DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ProductDefinitionUsage {
    StepRepr_ProductDefinitionUsage* _get_reference() {
    return (StepRepr_ProductDefinitionUsage*)$self->get();
    }
};

%extend Handle_StepRepr_ProductDefinitionUsage {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ProductDefinitionUsage {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_PropertyDefinition;
class StepRepr_PropertyDefinition : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepRepr_PropertyDefinition;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepRepr_PropertyDefinition;
		 StepRepr_PropertyDefinition ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param hasDescription:
	:type hasDescription: bool
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aDefinition:
	:type aDefinition: StepRepr_CharacterizedDefinition &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName,const Standard_Boolean hasDescription,const Handle_TCollection_HAsciiString & aDescription,const StepRepr_CharacterizedDefinition & aDefinition);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	* Returns field Name

	:rtype: Handle_TCollection_HAsciiString
") Name;
		Handle_TCollection_HAsciiString Name ();
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	* Set field Name

	:param Name:
	:type Name: Handle_TCollection_HAsciiString &
	:rtype: None
") SetName;
		void SetName (const Handle_TCollection_HAsciiString & Name);
		%feature("compactdefaultargs") Description;
		%feature("autodoc", "	* Returns field Description

	:rtype: Handle_TCollection_HAsciiString
") Description;
		Handle_TCollection_HAsciiString Description ();
		%feature("compactdefaultargs") SetDescription;
		%feature("autodoc", "	* Set field Description

	:param Description:
	:type Description: Handle_TCollection_HAsciiString &
	:rtype: None
") SetDescription;
		void SetDescription (const Handle_TCollection_HAsciiString & Description);
		%feature("compactdefaultargs") HasDescription;
		%feature("autodoc", "	* Returns True if optional field Description is defined

	:rtype: bool
") HasDescription;
		Standard_Boolean HasDescription ();
		%feature("compactdefaultargs") Definition;
		%feature("autodoc", "	* Returns field Definition

	:rtype: StepRepr_CharacterizedDefinition
") Definition;
		StepRepr_CharacterizedDefinition Definition ();
		%feature("compactdefaultargs") SetDefinition;
		%feature("autodoc", "	* Set field Definition

	:param Definition:
	:type Definition: StepRepr_CharacterizedDefinition &
	:rtype: None
") SetDefinition;
		void SetDefinition (const StepRepr_CharacterizedDefinition & Definition);
};


%extend StepRepr_PropertyDefinition {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_PropertyDefinition(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_PropertyDefinition::Handle_StepRepr_PropertyDefinition %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_PropertyDefinition;
class Handle_StepRepr_PropertyDefinition : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepRepr_PropertyDefinition();
        Handle_StepRepr_PropertyDefinition(const Handle_StepRepr_PropertyDefinition &aHandle);
        Handle_StepRepr_PropertyDefinition(const StepRepr_PropertyDefinition *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_PropertyDefinition DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_PropertyDefinition {
    StepRepr_PropertyDefinition* _get_reference() {
    return (StepRepr_PropertyDefinition*)$self->get();
    }
};

%extend Handle_StepRepr_PropertyDefinition {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_PropertyDefinition {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_PropertyDefinitionRelationship;
class StepRepr_PropertyDefinitionRelationship : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepRepr_PropertyDefinitionRelationship;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepRepr_PropertyDefinitionRelationship;
		 StepRepr_PropertyDefinitionRelationship ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aRelatingPropertyDefinition:
	:type aRelatingPropertyDefinition: Handle_StepRepr_PropertyDefinition &
	:param aRelatedPropertyDefinition:
	:type aRelatedPropertyDefinition: Handle_StepRepr_PropertyDefinition &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription,const Handle_StepRepr_PropertyDefinition & aRelatingPropertyDefinition,const Handle_StepRepr_PropertyDefinition & aRelatedPropertyDefinition);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	* Returns field Name

	:rtype: Handle_TCollection_HAsciiString
") Name;
		Handle_TCollection_HAsciiString Name ();
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	* Set field Name

	:param Name:
	:type Name: Handle_TCollection_HAsciiString &
	:rtype: None
") SetName;
		void SetName (const Handle_TCollection_HAsciiString & Name);
		%feature("compactdefaultargs") Description;
		%feature("autodoc", "	* Returns field Description

	:rtype: Handle_TCollection_HAsciiString
") Description;
		Handle_TCollection_HAsciiString Description ();
		%feature("compactdefaultargs") SetDescription;
		%feature("autodoc", "	* Set field Description

	:param Description:
	:type Description: Handle_TCollection_HAsciiString &
	:rtype: None
") SetDescription;
		void SetDescription (const Handle_TCollection_HAsciiString & Description);
		%feature("compactdefaultargs") RelatingPropertyDefinition;
		%feature("autodoc", "	* Returns field RelatingPropertyDefinition

	:rtype: Handle_StepRepr_PropertyDefinition
") RelatingPropertyDefinition;
		Handle_StepRepr_PropertyDefinition RelatingPropertyDefinition ();
		%feature("compactdefaultargs") SetRelatingPropertyDefinition;
		%feature("autodoc", "	* Set field RelatingPropertyDefinition

	:param RelatingPropertyDefinition:
	:type RelatingPropertyDefinition: Handle_StepRepr_PropertyDefinition &
	:rtype: None
") SetRelatingPropertyDefinition;
		void SetRelatingPropertyDefinition (const Handle_StepRepr_PropertyDefinition & RelatingPropertyDefinition);
		%feature("compactdefaultargs") RelatedPropertyDefinition;
		%feature("autodoc", "	* Returns field RelatedPropertyDefinition

	:rtype: Handle_StepRepr_PropertyDefinition
") RelatedPropertyDefinition;
		Handle_StepRepr_PropertyDefinition RelatedPropertyDefinition ();
		%feature("compactdefaultargs") SetRelatedPropertyDefinition;
		%feature("autodoc", "	* Set field RelatedPropertyDefinition

	:param RelatedPropertyDefinition:
	:type RelatedPropertyDefinition: Handle_StepRepr_PropertyDefinition &
	:rtype: None
") SetRelatedPropertyDefinition;
		void SetRelatedPropertyDefinition (const Handle_StepRepr_PropertyDefinition & RelatedPropertyDefinition);
};


%extend StepRepr_PropertyDefinitionRelationship {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_PropertyDefinitionRelationship(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_PropertyDefinitionRelationship::Handle_StepRepr_PropertyDefinitionRelationship %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_PropertyDefinitionRelationship;
class Handle_StepRepr_PropertyDefinitionRelationship : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepRepr_PropertyDefinitionRelationship();
        Handle_StepRepr_PropertyDefinitionRelationship(const Handle_StepRepr_PropertyDefinitionRelationship &aHandle);
        Handle_StepRepr_PropertyDefinitionRelationship(const StepRepr_PropertyDefinitionRelationship *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_PropertyDefinitionRelationship DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_PropertyDefinitionRelationship {
    StepRepr_PropertyDefinitionRelationship* _get_reference() {
    return (StepRepr_PropertyDefinitionRelationship*)$self->get();
    }
};

%extend Handle_StepRepr_PropertyDefinitionRelationship {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_PropertyDefinitionRelationship {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_PropertyDefinitionRepresentation;
class StepRepr_PropertyDefinitionRepresentation : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepRepr_PropertyDefinitionRepresentation;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepRepr_PropertyDefinitionRepresentation;
		 StepRepr_PropertyDefinitionRepresentation ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aDefinition:
	:type aDefinition: StepRepr_RepresentedDefinition &
	:param aUsedRepresentation:
	:type aUsedRepresentation: Handle_StepRepr_Representation &
	:rtype: None
") Init;
		void Init (const StepRepr_RepresentedDefinition & aDefinition,const Handle_StepRepr_Representation & aUsedRepresentation);
		%feature("compactdefaultargs") Definition;
		%feature("autodoc", "	* Returns field Definition

	:rtype: StepRepr_RepresentedDefinition
") Definition;
		StepRepr_RepresentedDefinition Definition ();
		%feature("compactdefaultargs") SetDefinition;
		%feature("autodoc", "	* Set field Definition

	:param Definition:
	:type Definition: StepRepr_RepresentedDefinition &
	:rtype: None
") SetDefinition;
		void SetDefinition (const StepRepr_RepresentedDefinition & Definition);
		%feature("compactdefaultargs") UsedRepresentation;
		%feature("autodoc", "	* Returns field UsedRepresentation

	:rtype: Handle_StepRepr_Representation
") UsedRepresentation;
		Handle_StepRepr_Representation UsedRepresentation ();
		%feature("compactdefaultargs") SetUsedRepresentation;
		%feature("autodoc", "	* Set field UsedRepresentation

	:param UsedRepresentation:
	:type UsedRepresentation: Handle_StepRepr_Representation &
	:rtype: None
") SetUsedRepresentation;
		void SetUsedRepresentation (const Handle_StepRepr_Representation & UsedRepresentation);
};


%extend StepRepr_PropertyDefinitionRepresentation {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_PropertyDefinitionRepresentation(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_PropertyDefinitionRepresentation::Handle_StepRepr_PropertyDefinitionRepresentation %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_PropertyDefinitionRepresentation;
class Handle_StepRepr_PropertyDefinitionRepresentation : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepRepr_PropertyDefinitionRepresentation();
        Handle_StepRepr_PropertyDefinitionRepresentation(const Handle_StepRepr_PropertyDefinitionRepresentation &aHandle);
        Handle_StepRepr_PropertyDefinitionRepresentation(const StepRepr_PropertyDefinitionRepresentation *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_PropertyDefinitionRepresentation DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_PropertyDefinitionRepresentation {
    StepRepr_PropertyDefinitionRepresentation* _get_reference() {
    return (StepRepr_PropertyDefinitionRepresentation*)$self->get();
    }
};

%extend Handle_StepRepr_PropertyDefinitionRepresentation {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_PropertyDefinitionRepresentation {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_Representation;
class StepRepr_Representation : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepRepr_Representation;
		%feature("autodoc", "	* Returns a Representation

	:rtype: None
") StepRepr_Representation;
		 StepRepr_Representation ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aItems:
	:type aItems: Handle_StepRepr_HArray1OfRepresentationItem &
	:param aContextOfItems:
	:type aContextOfItems: Handle_StepRepr_RepresentationContext &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName,const Handle_StepRepr_HArray1OfRepresentationItem & aItems,const Handle_StepRepr_RepresentationContext & aContextOfItems);
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:rtype: None
") SetName;
		void SetName (const Handle_TCollection_HAsciiString & aName);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") Name;
		Handle_TCollection_HAsciiString Name ();
		%feature("compactdefaultargs") SetItems;
		%feature("autodoc", "	:param aItems:
	:type aItems: Handle_StepRepr_HArray1OfRepresentationItem &
	:rtype: None
") SetItems;
		void SetItems (const Handle_StepRepr_HArray1OfRepresentationItem & aItems);
		%feature("compactdefaultargs") Items;
		%feature("autodoc", "	:rtype: Handle_StepRepr_HArray1OfRepresentationItem
") Items;
		Handle_StepRepr_HArray1OfRepresentationItem Items ();
		%feature("compactdefaultargs") ItemsValue;
		%feature("autodoc", "	:param num:
	:type num: int
	:rtype: Handle_StepRepr_RepresentationItem
") ItemsValue;
		Handle_StepRepr_RepresentationItem ItemsValue (const Standard_Integer num);
		%feature("compactdefaultargs") NbItems;
		%feature("autodoc", "	:rtype: int
") NbItems;
		Standard_Integer NbItems ();
		%feature("compactdefaultargs") SetContextOfItems;
		%feature("autodoc", "	:param aContextOfItems:
	:type aContextOfItems: Handle_StepRepr_RepresentationContext &
	:rtype: None
") SetContextOfItems;
		void SetContextOfItems (const Handle_StepRepr_RepresentationContext & aContextOfItems);
		%feature("compactdefaultargs") ContextOfItems;
		%feature("autodoc", "	:rtype: Handle_StepRepr_RepresentationContext
") ContextOfItems;
		Handle_StepRepr_RepresentationContext ContextOfItems ();
};


%extend StepRepr_Representation {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_Representation(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_Representation::Handle_StepRepr_Representation %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_Representation;
class Handle_StepRepr_Representation : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepRepr_Representation();
        Handle_StepRepr_Representation(const Handle_StepRepr_Representation &aHandle);
        Handle_StepRepr_Representation(const StepRepr_Representation *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_Representation DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_Representation {
    StepRepr_Representation* _get_reference() {
    return (StepRepr_Representation*)$self->get();
    }
};

%extend Handle_StepRepr_Representation {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_Representation {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_RepresentationContext;
class StepRepr_RepresentationContext : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepRepr_RepresentationContext;
		%feature("autodoc", "	* Returns a RepresentationContext

	:rtype: None
") StepRepr_RepresentationContext;
		 StepRepr_RepresentationContext ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aContextIdentifier:
	:type aContextIdentifier: Handle_TCollection_HAsciiString &
	:param aContextType:
	:type aContextType: Handle_TCollection_HAsciiString &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aContextIdentifier,const Handle_TCollection_HAsciiString & aContextType);
		%feature("compactdefaultargs") SetContextIdentifier;
		%feature("autodoc", "	:param aContextIdentifier:
	:type aContextIdentifier: Handle_TCollection_HAsciiString &
	:rtype: None
") SetContextIdentifier;
		void SetContextIdentifier (const Handle_TCollection_HAsciiString & aContextIdentifier);
		%feature("compactdefaultargs") ContextIdentifier;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") ContextIdentifier;
		Handle_TCollection_HAsciiString ContextIdentifier ();
		%feature("compactdefaultargs") SetContextType;
		%feature("autodoc", "	:param aContextType:
	:type aContextType: Handle_TCollection_HAsciiString &
	:rtype: None
") SetContextType;
		void SetContextType (const Handle_TCollection_HAsciiString & aContextType);
		%feature("compactdefaultargs") ContextType;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") ContextType;
		Handle_TCollection_HAsciiString ContextType ();
};


%extend StepRepr_RepresentationContext {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_RepresentationContext(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_RepresentationContext::Handle_StepRepr_RepresentationContext %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_RepresentationContext;
class Handle_StepRepr_RepresentationContext : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepRepr_RepresentationContext();
        Handle_StepRepr_RepresentationContext(const Handle_StepRepr_RepresentationContext &aHandle);
        Handle_StepRepr_RepresentationContext(const StepRepr_RepresentationContext *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_RepresentationContext DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_RepresentationContext {
    StepRepr_RepresentationContext* _get_reference() {
    return (StepRepr_RepresentationContext*)$self->get();
    }
};

%extend Handle_StepRepr_RepresentationContext {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_RepresentationContext {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_RepresentationItem;
class StepRepr_RepresentationItem : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepRepr_RepresentationItem;
		%feature("autodoc", "	* Returns a RepresentationItem

	:rtype: None
") StepRepr_RepresentationItem;
		 StepRepr_RepresentationItem ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName);
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:rtype: None
") SetName;
		void SetName (const Handle_TCollection_HAsciiString & aName);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") Name;
		Handle_TCollection_HAsciiString Name ();
};


%extend StepRepr_RepresentationItem {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_RepresentationItem(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_RepresentationItem::Handle_StepRepr_RepresentationItem %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_RepresentationItem;
class Handle_StepRepr_RepresentationItem : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepRepr_RepresentationItem();
        Handle_StepRepr_RepresentationItem(const Handle_StepRepr_RepresentationItem &aHandle);
        Handle_StepRepr_RepresentationItem(const StepRepr_RepresentationItem *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_RepresentationItem DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_RepresentationItem {
    StepRepr_RepresentationItem* _get_reference() {
    return (StepRepr_RepresentationItem*)$self->get();
    }
};

%extend Handle_StepRepr_RepresentationItem {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_RepresentationItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_RepresentationMap;
class StepRepr_RepresentationMap : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepRepr_RepresentationMap;
		%feature("autodoc", "	* Returns a RepresentationMap

	:rtype: None
") StepRepr_RepresentationMap;
		 StepRepr_RepresentationMap ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aMappingOrigin:
	:type aMappingOrigin: Handle_StepRepr_RepresentationItem &
	:param aMappedRepresentation:
	:type aMappedRepresentation: Handle_StepRepr_Representation &
	:rtype: None
") Init;
		void Init (const Handle_StepRepr_RepresentationItem & aMappingOrigin,const Handle_StepRepr_Representation & aMappedRepresentation);
		%feature("compactdefaultargs") SetMappingOrigin;
		%feature("autodoc", "	:param aMappingOrigin:
	:type aMappingOrigin: Handle_StepRepr_RepresentationItem &
	:rtype: None
") SetMappingOrigin;
		void SetMappingOrigin (const Handle_StepRepr_RepresentationItem & aMappingOrigin);
		%feature("compactdefaultargs") MappingOrigin;
		%feature("autodoc", "	:rtype: Handle_StepRepr_RepresentationItem
") MappingOrigin;
		Handle_StepRepr_RepresentationItem MappingOrigin ();
		%feature("compactdefaultargs") SetMappedRepresentation;
		%feature("autodoc", "	:param aMappedRepresentation:
	:type aMappedRepresentation: Handle_StepRepr_Representation &
	:rtype: None
") SetMappedRepresentation;
		void SetMappedRepresentation (const Handle_StepRepr_Representation & aMappedRepresentation);
		%feature("compactdefaultargs") MappedRepresentation;
		%feature("autodoc", "	:rtype: Handle_StepRepr_Representation
") MappedRepresentation;
		Handle_StepRepr_Representation MappedRepresentation ();
};


%extend StepRepr_RepresentationMap {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_RepresentationMap(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_RepresentationMap::Handle_StepRepr_RepresentationMap %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_RepresentationMap;
class Handle_StepRepr_RepresentationMap : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepRepr_RepresentationMap();
        Handle_StepRepr_RepresentationMap(const Handle_StepRepr_RepresentationMap &aHandle);
        Handle_StepRepr_RepresentationMap(const StepRepr_RepresentationMap *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_RepresentationMap DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_RepresentationMap {
    StepRepr_RepresentationMap* _get_reference() {
    return (StepRepr_RepresentationMap*)$self->get();
    }
};

%extend Handle_StepRepr_RepresentationMap {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_RepresentationMap {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_RepresentationRelationship;
class StepRepr_RepresentationRelationship : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepRepr_RepresentationRelationship;
		%feature("autodoc", "	* Returns a RepresentationRelationship

	:rtype: None
") StepRepr_RepresentationRelationship;
		 StepRepr_RepresentationRelationship ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aRep1:
	:type aRep1: Handle_StepRepr_Representation &
	:param aRep2:
	:type aRep2: Handle_StepRepr_Representation &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription,const Handle_StepRepr_Representation & aRep1,const Handle_StepRepr_Representation & aRep2);
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:rtype: None
") SetName;
		void SetName (const Handle_TCollection_HAsciiString & aName);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") Name;
		Handle_TCollection_HAsciiString Name ();
		%feature("compactdefaultargs") SetDescription;
		%feature("autodoc", "	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:rtype: None
") SetDescription;
		void SetDescription (const Handle_TCollection_HAsciiString & aDescription);
		%feature("compactdefaultargs") Description;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") Description;
		Handle_TCollection_HAsciiString Description ();
		%feature("compactdefaultargs") SetRep1;
		%feature("autodoc", "	:param aRep1:
	:type aRep1: Handle_StepRepr_Representation &
	:rtype: None
") SetRep1;
		void SetRep1 (const Handle_StepRepr_Representation & aRep1);
		%feature("compactdefaultargs") Rep1;
		%feature("autodoc", "	:rtype: Handle_StepRepr_Representation
") Rep1;
		Handle_StepRepr_Representation Rep1 ();
		%feature("compactdefaultargs") SetRep2;
		%feature("autodoc", "	:param aRep2:
	:type aRep2: Handle_StepRepr_Representation &
	:rtype: None
") SetRep2;
		void SetRep2 (const Handle_StepRepr_Representation & aRep2);
		%feature("compactdefaultargs") Rep2;
		%feature("autodoc", "	:rtype: Handle_StepRepr_Representation
") Rep2;
		Handle_StepRepr_Representation Rep2 ();
};


%extend StepRepr_RepresentationRelationship {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_RepresentationRelationship(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_RepresentationRelationship::Handle_StepRepr_RepresentationRelationship %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_RepresentationRelationship;
class Handle_StepRepr_RepresentationRelationship : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepRepr_RepresentationRelationship();
        Handle_StepRepr_RepresentationRelationship(const Handle_StepRepr_RepresentationRelationship &aHandle);
        Handle_StepRepr_RepresentationRelationship(const StepRepr_RepresentationRelationship *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_RepresentationRelationship DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_RepresentationRelationship {
    StepRepr_RepresentationRelationship* _get_reference() {
    return (StepRepr_RepresentationRelationship*)$self->get();
    }
};

%extend Handle_StepRepr_RepresentationRelationship {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_RepresentationRelationship {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_RepresentedDefinition;
class StepRepr_RepresentedDefinition : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepRepr_RepresentedDefinition;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepRepr_RepresentedDefinition;
		 StepRepr_RepresentedDefinition ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a kind of RepresentedDefinition select type 1 -> GeneralProperty from StepBasic 2 -> PropertyDefinition from StepRepr 3 -> PropertyDefinitionRelationship from StepRepr 4 -> ShapeAspect from StepRepr 5 -> ShapeAspectRelationship from StepRepr 0 else

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") GeneralProperty;
		%feature("autodoc", "	* Returns Value as GeneralProperty --or Null if another type--

	:rtype: Handle_StepBasic_GeneralProperty
") GeneralProperty;
		Handle_StepBasic_GeneralProperty GeneralProperty ();
		%feature("compactdefaultargs") PropertyDefinition;
		%feature("autodoc", "	* Returns Value as PropertyDefinition --or Null if another type--

	:rtype: Handle_StepRepr_PropertyDefinition
") PropertyDefinition;
		Handle_StepRepr_PropertyDefinition PropertyDefinition ();
		%feature("compactdefaultargs") PropertyDefinitionRelationship;
		%feature("autodoc", "	* Returns Value as PropertyDefinitionRelationship --or Null if another type--

	:rtype: Handle_StepRepr_PropertyDefinitionRelationship
") PropertyDefinitionRelationship;
		Handle_StepRepr_PropertyDefinitionRelationship PropertyDefinitionRelationship ();
		%feature("compactdefaultargs") ShapeAspect;
		%feature("autodoc", "	* Returns Value as ShapeAspect --or Null if another type--

	:rtype: Handle_StepRepr_ShapeAspect
") ShapeAspect;
		Handle_StepRepr_ShapeAspect ShapeAspect ();
		%feature("compactdefaultargs") ShapeAspectRelationship;
		%feature("autodoc", "	* Returns Value as ShapeAspectRelationship --or Null if another type--

	:rtype: Handle_StepRepr_ShapeAspectRelationship
") ShapeAspectRelationship;
		Handle_StepRepr_ShapeAspectRelationship ShapeAspectRelationship ();
};


%extend StepRepr_RepresentedDefinition {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ShapeAspect;
class StepRepr_ShapeAspect : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepRepr_ShapeAspect;
		%feature("autodoc", "	* Returns a ShapeAspect

	:rtype: None
") StepRepr_ShapeAspect;
		 StepRepr_ShapeAspect ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aOfShape:
	:type aOfShape: Handle_StepRepr_ProductDefinitionShape &
	:param aProductDefinitional:
	:type aProductDefinitional: StepData_Logical
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription,const Handle_StepRepr_ProductDefinitionShape & aOfShape,const StepData_Logical aProductDefinitional);
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:rtype: None
") SetName;
		void SetName (const Handle_TCollection_HAsciiString & aName);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") Name;
		Handle_TCollection_HAsciiString Name ();
		%feature("compactdefaultargs") SetDescription;
		%feature("autodoc", "	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:rtype: None
") SetDescription;
		void SetDescription (const Handle_TCollection_HAsciiString & aDescription);
		%feature("compactdefaultargs") Description;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") Description;
		Handle_TCollection_HAsciiString Description ();
		%feature("compactdefaultargs") SetOfShape;
		%feature("autodoc", "	:param aOfShape:
	:type aOfShape: Handle_StepRepr_ProductDefinitionShape &
	:rtype: None
") SetOfShape;
		void SetOfShape (const Handle_StepRepr_ProductDefinitionShape & aOfShape);
		%feature("compactdefaultargs") OfShape;
		%feature("autodoc", "	:rtype: Handle_StepRepr_ProductDefinitionShape
") OfShape;
		Handle_StepRepr_ProductDefinitionShape OfShape ();
		%feature("compactdefaultargs") SetProductDefinitional;
		%feature("autodoc", "	:param aProductDefinitional:
	:type aProductDefinitional: StepData_Logical
	:rtype: None
") SetProductDefinitional;
		void SetProductDefinitional (const StepData_Logical aProductDefinitional);
		%feature("compactdefaultargs") ProductDefinitional;
		%feature("autodoc", "	:rtype: StepData_Logical
") ProductDefinitional;
		StepData_Logical ProductDefinitional ();
};


%extend StepRepr_ShapeAspect {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ShapeAspect(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ShapeAspect::Handle_StepRepr_ShapeAspect %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ShapeAspect;
class Handle_StepRepr_ShapeAspect : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepRepr_ShapeAspect();
        Handle_StepRepr_ShapeAspect(const Handle_StepRepr_ShapeAspect &aHandle);
        Handle_StepRepr_ShapeAspect(const StepRepr_ShapeAspect *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ShapeAspect DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ShapeAspect {
    StepRepr_ShapeAspect* _get_reference() {
    return (StepRepr_ShapeAspect*)$self->get();
    }
};

%extend Handle_StepRepr_ShapeAspect {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ShapeAspect {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ShapeAspectRelationship;
class StepRepr_ShapeAspectRelationship : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepRepr_ShapeAspectRelationship;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepRepr_ShapeAspectRelationship;
		 StepRepr_ShapeAspectRelationship ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param hasDescription:
	:type hasDescription: bool
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aRelatingShapeAspect:
	:type aRelatingShapeAspect: Handle_StepRepr_ShapeAspect &
	:param aRelatedShapeAspect:
	:type aRelatedShapeAspect: Handle_StepRepr_ShapeAspect &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName,const Standard_Boolean hasDescription,const Handle_TCollection_HAsciiString & aDescription,const Handle_StepRepr_ShapeAspect & aRelatingShapeAspect,const Handle_StepRepr_ShapeAspect & aRelatedShapeAspect);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	* Returns field Name

	:rtype: Handle_TCollection_HAsciiString
") Name;
		Handle_TCollection_HAsciiString Name ();
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	* Set field Name

	:param Name:
	:type Name: Handle_TCollection_HAsciiString &
	:rtype: None
") SetName;
		void SetName (const Handle_TCollection_HAsciiString & Name);
		%feature("compactdefaultargs") Description;
		%feature("autodoc", "	* Returns field Description

	:rtype: Handle_TCollection_HAsciiString
") Description;
		Handle_TCollection_HAsciiString Description ();
		%feature("compactdefaultargs") SetDescription;
		%feature("autodoc", "	* Set field Description

	:param Description:
	:type Description: Handle_TCollection_HAsciiString &
	:rtype: None
") SetDescription;
		void SetDescription (const Handle_TCollection_HAsciiString & Description);
		%feature("compactdefaultargs") HasDescription;
		%feature("autodoc", "	* Returns True if optional field Description is defined

	:rtype: bool
") HasDescription;
		Standard_Boolean HasDescription ();
		%feature("compactdefaultargs") RelatingShapeAspect;
		%feature("autodoc", "	* Returns field RelatingShapeAspect

	:rtype: Handle_StepRepr_ShapeAspect
") RelatingShapeAspect;
		Handle_StepRepr_ShapeAspect RelatingShapeAspect ();
		%feature("compactdefaultargs") SetRelatingShapeAspect;
		%feature("autodoc", "	* Set field RelatingShapeAspect

	:param RelatingShapeAspect:
	:type RelatingShapeAspect: Handle_StepRepr_ShapeAspect &
	:rtype: None
") SetRelatingShapeAspect;
		void SetRelatingShapeAspect (const Handle_StepRepr_ShapeAspect & RelatingShapeAspect);
		%feature("compactdefaultargs") RelatedShapeAspect;
		%feature("autodoc", "	* Returns field RelatedShapeAspect

	:rtype: Handle_StepRepr_ShapeAspect
") RelatedShapeAspect;
		Handle_StepRepr_ShapeAspect RelatedShapeAspect ();
		%feature("compactdefaultargs") SetRelatedShapeAspect;
		%feature("autodoc", "	* Set field RelatedShapeAspect

	:param RelatedShapeAspect:
	:type RelatedShapeAspect: Handle_StepRepr_ShapeAspect &
	:rtype: None
") SetRelatedShapeAspect;
		void SetRelatedShapeAspect (const Handle_StepRepr_ShapeAspect & RelatedShapeAspect);
};


%extend StepRepr_ShapeAspectRelationship {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ShapeAspectRelationship(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ShapeAspectRelationship::Handle_StepRepr_ShapeAspectRelationship %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ShapeAspectRelationship;
class Handle_StepRepr_ShapeAspectRelationship : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepRepr_ShapeAspectRelationship();
        Handle_StepRepr_ShapeAspectRelationship(const Handle_StepRepr_ShapeAspectRelationship &aHandle);
        Handle_StepRepr_ShapeAspectRelationship(const StepRepr_ShapeAspectRelationship *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ShapeAspectRelationship DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ShapeAspectRelationship {
    StepRepr_ShapeAspectRelationship* _get_reference() {
    return (StepRepr_ShapeAspectRelationship*)$self->get();
    }
};

%extend Handle_StepRepr_ShapeAspectRelationship {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ShapeAspectRelationship {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ShapeDefinition;
class StepRepr_ShapeDefinition : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepRepr_ShapeDefinition;
		%feature("autodoc", "	* Returns a ShapeDefinition SelectType

	:rtype: None
") StepRepr_ShapeDefinition;
		 StepRepr_ShapeDefinition ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a ShapeDefinition Kind Entity that is : 1 -> ProductDefinitionShape 2 -> ShapeAspect 3 -> ShapeAspectRelationship 0 else

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") ProductDefinitionShape;
		%feature("autodoc", "	* returns Value as a ProductDefinitionShape --Null if another type--

	:rtype: Handle_StepRepr_ProductDefinitionShape
") ProductDefinitionShape;
		Handle_StepRepr_ProductDefinitionShape ProductDefinitionShape ();
		%feature("compactdefaultargs") ShapeAspect;
		%feature("autodoc", "	* returns Value as a ShapeAspect --Null if another type--

	:rtype: Handle_StepRepr_ShapeAspect
") ShapeAspect;
		Handle_StepRepr_ShapeAspect ShapeAspect ();
		%feature("compactdefaultargs") ShapeAspectRelationship;
		%feature("autodoc", "	* returns Value as a ShapeAspectRelationship --Null if another type--

	:rtype: Handle_StepRepr_ShapeAspectRelationship
") ShapeAspectRelationship;
		Handle_StepRepr_ShapeAspectRelationship ShapeAspectRelationship ();
};


%extend StepRepr_ShapeDefinition {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_SuppliedPartRelationship;
class StepRepr_SuppliedPartRelationship : public StepBasic_ProductDefinitionRelationship {
	public:
		%feature("compactdefaultargs") StepRepr_SuppliedPartRelationship;
		%feature("autodoc", "	:rtype: None
") StepRepr_SuppliedPartRelationship;
		 StepRepr_SuppliedPartRelationship ();
};


%extend StepRepr_SuppliedPartRelationship {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_SuppliedPartRelationship(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_SuppliedPartRelationship::Handle_StepRepr_SuppliedPartRelationship %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_SuppliedPartRelationship;
class Handle_StepRepr_SuppliedPartRelationship : public Handle_StepBasic_ProductDefinitionRelationship {

    public:
        // constructors
        Handle_StepRepr_SuppliedPartRelationship();
        Handle_StepRepr_SuppliedPartRelationship(const Handle_StepRepr_SuppliedPartRelationship &aHandle);
        Handle_StepRepr_SuppliedPartRelationship(const StepRepr_SuppliedPartRelationship *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_SuppliedPartRelationship DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_SuppliedPartRelationship {
    StepRepr_SuppliedPartRelationship* _get_reference() {
    return (StepRepr_SuppliedPartRelationship*)$self->get();
    }
};

%extend Handle_StepRepr_SuppliedPartRelationship {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_SuppliedPartRelationship {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_Transformation;
class StepRepr_Transformation : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepRepr_Transformation;
		%feature("autodoc", "	* Returns a Transformation SelectType

	:rtype: None
") StepRepr_Transformation;
		 StepRepr_Transformation ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a Transformation Kind Entity that is : 1 -> ItemDefinedTransformation 2 -> FunctionallyDefinedTransformation 0 else

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") ItemDefinedTransformation;
		%feature("autodoc", "	* returns Value as a ItemDefinedTransformation --Null if another type--

	:rtype: Handle_StepRepr_ItemDefinedTransformation
") ItemDefinedTransformation;
		Handle_StepRepr_ItemDefinedTransformation ItemDefinedTransformation ();
		%feature("compactdefaultargs") FunctionallyDefinedTransformation;
		%feature("autodoc", "	* returns Value as a FunctionallyDefinedTransformation --Null if another type--

	:rtype: Handle_StepRepr_FunctionallyDefinedTransformation
") FunctionallyDefinedTransformation;
		Handle_StepRepr_FunctionallyDefinedTransformation FunctionallyDefinedTransformation ();
};


%extend StepRepr_Transformation {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_AssemblyComponentUsage;
class StepRepr_AssemblyComponentUsage : public StepRepr_ProductDefinitionUsage {
	public:
		%feature("compactdefaultargs") StepRepr_AssemblyComponentUsage;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepRepr_AssemblyComponentUsage;
		 StepRepr_AssemblyComponentUsage ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aProductDefinitionRelationship_Id:
	:type aProductDefinitionRelationship_Id: Handle_TCollection_HAsciiString &
	:param aProductDefinitionRelationship_Name:
	:type aProductDefinitionRelationship_Name: Handle_TCollection_HAsciiString &
	:param hasProductDefinitionRelationship_Description:
	:type hasProductDefinitionRelationship_Description: bool
	:param aProductDefinitionRelationship_Description:
	:type aProductDefinitionRelationship_Description: Handle_TCollection_HAsciiString &
	:param aProductDefinitionRelationship_RelatingProductDefinition:
	:type aProductDefinitionRelationship_RelatingProductDefinition: Handle_StepBasic_ProductDefinition &
	:param aProductDefinitionRelationship_RelatedProductDefinition:
	:type aProductDefinitionRelationship_RelatedProductDefinition: Handle_StepBasic_ProductDefinition &
	:param hasReferenceDesignator:
	:type hasReferenceDesignator: bool
	:param aReferenceDesignator:
	:type aReferenceDesignator: Handle_TCollection_HAsciiString &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aProductDefinitionRelationship_Id,const Handle_TCollection_HAsciiString & aProductDefinitionRelationship_Name,const Standard_Boolean hasProductDefinitionRelationship_Description,const Handle_TCollection_HAsciiString & aProductDefinitionRelationship_Description,const Handle_StepBasic_ProductDefinition & aProductDefinitionRelationship_RelatingProductDefinition,const Handle_StepBasic_ProductDefinition & aProductDefinitionRelationship_RelatedProductDefinition,const Standard_Boolean hasReferenceDesignator,const Handle_TCollection_HAsciiString & aReferenceDesignator);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aProductDefinitionRelationship_Id:
	:type aProductDefinitionRelationship_Id: Handle_TCollection_HAsciiString &
	:param aProductDefinitionRelationship_Name:
	:type aProductDefinitionRelationship_Name: Handle_TCollection_HAsciiString &
	:param hasProductDefinitionRelationship_Description:
	:type hasProductDefinitionRelationship_Description: bool
	:param aProductDefinitionRelationship_Description:
	:type aProductDefinitionRelationship_Description: Handle_TCollection_HAsciiString &
	:param aProductDefinitionRelationship_RelatingProductDefinition:
	:type aProductDefinitionRelationship_RelatingProductDefinition: StepBasic_ProductDefinitionOrReference &
	:param aProductDefinitionRelationship_RelatedProductDefinition:
	:type aProductDefinitionRelationship_RelatedProductDefinition: StepBasic_ProductDefinitionOrReference &
	:param hasReferenceDesignator:
	:type hasReferenceDesignator: bool
	:param aReferenceDesignator:
	:type aReferenceDesignator: Handle_TCollection_HAsciiString &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aProductDefinitionRelationship_Id,const Handle_TCollection_HAsciiString & aProductDefinitionRelationship_Name,const Standard_Boolean hasProductDefinitionRelationship_Description,const Handle_TCollection_HAsciiString & aProductDefinitionRelationship_Description,const StepBasic_ProductDefinitionOrReference & aProductDefinitionRelationship_RelatingProductDefinition,const StepBasic_ProductDefinitionOrReference & aProductDefinitionRelationship_RelatedProductDefinition,const Standard_Boolean hasReferenceDesignator,const Handle_TCollection_HAsciiString & aReferenceDesignator);
		%feature("compactdefaultargs") ReferenceDesignator;
		%feature("autodoc", "	* Returns field ReferenceDesignator

	:rtype: Handle_TCollection_HAsciiString
") ReferenceDesignator;
		Handle_TCollection_HAsciiString ReferenceDesignator ();
		%feature("compactdefaultargs") SetReferenceDesignator;
		%feature("autodoc", "	* Set field ReferenceDesignator

	:param ReferenceDesignator:
	:type ReferenceDesignator: Handle_TCollection_HAsciiString &
	:rtype: None
") SetReferenceDesignator;
		void SetReferenceDesignator (const Handle_TCollection_HAsciiString & ReferenceDesignator);
		%feature("compactdefaultargs") HasReferenceDesignator;
		%feature("autodoc", "	* Returns True if optional field ReferenceDesignator is defined

	:rtype: bool
") HasReferenceDesignator;
		Standard_Boolean HasReferenceDesignator ();
};


%extend StepRepr_AssemblyComponentUsage {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_AssemblyComponentUsage(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_AssemblyComponentUsage::Handle_StepRepr_AssemblyComponentUsage %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_AssemblyComponentUsage;
class Handle_StepRepr_AssemblyComponentUsage : public Handle_StepRepr_ProductDefinitionUsage {

    public:
        // constructors
        Handle_StepRepr_AssemblyComponentUsage();
        Handle_StepRepr_AssemblyComponentUsage(const Handle_StepRepr_AssemblyComponentUsage &aHandle);
        Handle_StepRepr_AssemblyComponentUsage(const StepRepr_AssemblyComponentUsage *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_AssemblyComponentUsage DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_AssemblyComponentUsage {
    StepRepr_AssemblyComponentUsage* _get_reference() {
    return (StepRepr_AssemblyComponentUsage*)$self->get();
    }
};

%extend Handle_StepRepr_AssemblyComponentUsage {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_AssemblyComponentUsage {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_CharacterizedRepresentation;
class StepRepr_CharacterizedRepresentation : public StepRepr_Representation {
	public:
		%feature("compactdefaultargs") StepRepr_CharacterizedRepresentation;
		%feature("autodoc", "	:rtype: None
") StepRepr_CharacterizedRepresentation;
		 StepRepr_CharacterizedRepresentation ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Returns a CharacterizedRepresentation

	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:param theDescription:
	:type theDescription: Handle_TCollection_HAsciiString &
	:param theItems:
	:type theItems: Handle_StepRepr_HArray1OfRepresentationItem &
	:param theContextOfItems:
	:type theContextOfItems: Handle_StepRepr_RepresentationContext &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theName,const Handle_TCollection_HAsciiString & theDescription,const Handle_StepRepr_HArray1OfRepresentationItem & theItems,const Handle_StepRepr_RepresentationContext & theContextOfItems);
		%feature("compactdefaultargs") SetDescription;
		%feature("autodoc", "	:param theDescription:
	:type theDescription: Handle_TCollection_HAsciiString &
	:rtype: None
") SetDescription;
		void SetDescription (const Handle_TCollection_HAsciiString & theDescription);
		%feature("compactdefaultargs") Description;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") Description;
		Handle_TCollection_HAsciiString Description ();
};


%extend StepRepr_CharacterizedRepresentation {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_CharacterizedRepresentation(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_CharacterizedRepresentation::Handle_StepRepr_CharacterizedRepresentation %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_CharacterizedRepresentation;
class Handle_StepRepr_CharacterizedRepresentation : public Handle_StepRepr_Representation {

    public:
        // constructors
        Handle_StepRepr_CharacterizedRepresentation();
        Handle_StepRepr_CharacterizedRepresentation(const Handle_StepRepr_CharacterizedRepresentation &aHandle);
        Handle_StepRepr_CharacterizedRepresentation(const StepRepr_CharacterizedRepresentation *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_CharacterizedRepresentation DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_CharacterizedRepresentation {
    StepRepr_CharacterizedRepresentation* _get_reference() {
    return (StepRepr_CharacterizedRepresentation*)$self->get();
    }
};

%extend Handle_StepRepr_CharacterizedRepresentation {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_CharacterizedRepresentation {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_CompShAspAndDatumFeatAndShAsp;
class StepRepr_CompShAspAndDatumFeatAndShAsp : public StepRepr_ShapeAspect {
	public:
		%feature("compactdefaultargs") StepRepr_CompShAspAndDatumFeatAndShAsp;
		%feature("autodoc", "	:rtype: None
") StepRepr_CompShAspAndDatumFeatAndShAsp;
		 StepRepr_CompShAspAndDatumFeatAndShAsp ();
};


%extend StepRepr_CompShAspAndDatumFeatAndShAsp {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_CompShAspAndDatumFeatAndShAsp(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_CompShAspAndDatumFeatAndShAsp::Handle_StepRepr_CompShAspAndDatumFeatAndShAsp %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_CompShAspAndDatumFeatAndShAsp;
class Handle_StepRepr_CompShAspAndDatumFeatAndShAsp : public Handle_StepRepr_ShapeAspect {

    public:
        // constructors
        Handle_StepRepr_CompShAspAndDatumFeatAndShAsp();
        Handle_StepRepr_CompShAspAndDatumFeatAndShAsp(const Handle_StepRepr_CompShAspAndDatumFeatAndShAsp &aHandle);
        Handle_StepRepr_CompShAspAndDatumFeatAndShAsp(const StepRepr_CompShAspAndDatumFeatAndShAsp *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_CompShAspAndDatumFeatAndShAsp DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_CompShAspAndDatumFeatAndShAsp {
    StepRepr_CompShAspAndDatumFeatAndShAsp* _get_reference() {
    return (StepRepr_CompShAspAndDatumFeatAndShAsp*)$self->get();
    }
};

%extend Handle_StepRepr_CompShAspAndDatumFeatAndShAsp {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_CompShAspAndDatumFeatAndShAsp {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_CompositeShapeAspect;
class StepRepr_CompositeShapeAspect : public StepRepr_ShapeAspect {
	public:
		%feature("compactdefaultargs") StepRepr_CompositeShapeAspect;
		%feature("autodoc", "	:rtype: None
") StepRepr_CompositeShapeAspect;
		 StepRepr_CompositeShapeAspect ();
};


%extend StepRepr_CompositeShapeAspect {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_CompositeShapeAspect(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_CompositeShapeAspect::Handle_StepRepr_CompositeShapeAspect %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_CompositeShapeAspect;
class Handle_StepRepr_CompositeShapeAspect : public Handle_StepRepr_ShapeAspect {

    public:
        // constructors
        Handle_StepRepr_CompositeShapeAspect();
        Handle_StepRepr_CompositeShapeAspect(const Handle_StepRepr_CompositeShapeAspect &aHandle);
        Handle_StepRepr_CompositeShapeAspect(const StepRepr_CompositeShapeAspect *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_CompositeShapeAspect DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_CompositeShapeAspect {
    StepRepr_CompositeShapeAspect* _get_reference() {
    return (StepRepr_CompositeShapeAspect*)$self->get();
    }
};

%extend Handle_StepRepr_CompositeShapeAspect {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_CompositeShapeAspect {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_CompoundRepresentationItem;
class StepRepr_CompoundRepresentationItem : public StepRepr_RepresentationItem {
	public:
		%feature("compactdefaultargs") StepRepr_CompoundRepresentationItem;
		%feature("autodoc", "	:rtype: None
") StepRepr_CompoundRepresentationItem;
		 StepRepr_CompoundRepresentationItem ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param item_element:
	:type item_element: Handle_StepRepr_HArray1OfRepresentationItem &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName,const Handle_StepRepr_HArray1OfRepresentationItem & item_element);
		%feature("compactdefaultargs") ItemElement;
		%feature("autodoc", "	:rtype: Handle_StepRepr_HArray1OfRepresentationItem
") ItemElement;
		Handle_StepRepr_HArray1OfRepresentationItem ItemElement ();
		%feature("compactdefaultargs") NbItemElement;
		%feature("autodoc", "	:rtype: int
") NbItemElement;
		Standard_Integer NbItemElement ();
		%feature("compactdefaultargs") SetItemElement;
		%feature("autodoc", "	:param item_element:
	:type item_element: Handle_StepRepr_HArray1OfRepresentationItem &
	:rtype: None
") SetItemElement;
		void SetItemElement (const Handle_StepRepr_HArray1OfRepresentationItem & item_element);
		%feature("compactdefaultargs") ItemElementValue;
		%feature("autodoc", "	:param num:
	:type num: int
	:rtype: Handle_StepRepr_RepresentationItem
") ItemElementValue;
		Handle_StepRepr_RepresentationItem ItemElementValue (const Standard_Integer num);
		%feature("compactdefaultargs") SetItemElementValue;
		%feature("autodoc", "	:param num:
	:type num: int
	:param anelement:
	:type anelement: Handle_StepRepr_RepresentationItem &
	:rtype: None
") SetItemElementValue;
		void SetItemElementValue (const Standard_Integer num,const Handle_StepRepr_RepresentationItem & anelement);
};


%extend StepRepr_CompoundRepresentationItem {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_CompoundRepresentationItem(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_CompoundRepresentationItem::Handle_StepRepr_CompoundRepresentationItem %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_CompoundRepresentationItem;
class Handle_StepRepr_CompoundRepresentationItem : public Handle_StepRepr_RepresentationItem {

    public:
        // constructors
        Handle_StepRepr_CompoundRepresentationItem();
        Handle_StepRepr_CompoundRepresentationItem(const Handle_StepRepr_CompoundRepresentationItem &aHandle);
        Handle_StepRepr_CompoundRepresentationItem(const StepRepr_CompoundRepresentationItem *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_CompoundRepresentationItem DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_CompoundRepresentationItem {
    StepRepr_CompoundRepresentationItem* _get_reference() {
    return (StepRepr_CompoundRepresentationItem*)$self->get();
    }
};

%extend Handle_StepRepr_CompoundRepresentationItem {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_CompoundRepresentationItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ConstructiveGeometryRepresentation;
class StepRepr_ConstructiveGeometryRepresentation : public StepRepr_Representation {
	public:
		%feature("compactdefaultargs") StepRepr_ConstructiveGeometryRepresentation;
		%feature("autodoc", "	* Returns a ConstructiveGeometryRepresentation

	:rtype: None
") StepRepr_ConstructiveGeometryRepresentation;
		 StepRepr_ConstructiveGeometryRepresentation ();
};


%extend StepRepr_ConstructiveGeometryRepresentation {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ConstructiveGeometryRepresentation(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ConstructiveGeometryRepresentation::Handle_StepRepr_ConstructiveGeometryRepresentation %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ConstructiveGeometryRepresentation;
class Handle_StepRepr_ConstructiveGeometryRepresentation : public Handle_StepRepr_Representation {

    public:
        // constructors
        Handle_StepRepr_ConstructiveGeometryRepresentation();
        Handle_StepRepr_ConstructiveGeometryRepresentation(const Handle_StepRepr_ConstructiveGeometryRepresentation &aHandle);
        Handle_StepRepr_ConstructiveGeometryRepresentation(const StepRepr_ConstructiveGeometryRepresentation *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ConstructiveGeometryRepresentation DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ConstructiveGeometryRepresentation {
    StepRepr_ConstructiveGeometryRepresentation* _get_reference() {
    return (StepRepr_ConstructiveGeometryRepresentation*)$self->get();
    }
};

%extend Handle_StepRepr_ConstructiveGeometryRepresentation {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ConstructiveGeometryRepresentation {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ConstructiveGeometryRepresentationRelationship;
class StepRepr_ConstructiveGeometryRepresentationRelationship : public StepRepr_RepresentationRelationship {
	public:
		%feature("compactdefaultargs") StepRepr_ConstructiveGeometryRepresentationRelationship;
		%feature("autodoc", "	:rtype: None
") StepRepr_ConstructiveGeometryRepresentationRelationship;
		 StepRepr_ConstructiveGeometryRepresentationRelationship ();
};


%extend StepRepr_ConstructiveGeometryRepresentationRelationship {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ConstructiveGeometryRepresentationRelationship(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ConstructiveGeometryRepresentationRelationship::Handle_StepRepr_ConstructiveGeometryRepresentationRelationship %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ConstructiveGeometryRepresentationRelationship;
class Handle_StepRepr_ConstructiveGeometryRepresentationRelationship : public Handle_StepRepr_RepresentationRelationship {

    public:
        // constructors
        Handle_StepRepr_ConstructiveGeometryRepresentationRelationship();
        Handle_StepRepr_ConstructiveGeometryRepresentationRelationship(const Handle_StepRepr_ConstructiveGeometryRepresentationRelationship &aHandle);
        Handle_StepRepr_ConstructiveGeometryRepresentationRelationship(const StepRepr_ConstructiveGeometryRepresentationRelationship *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ConstructiveGeometryRepresentationRelationship DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ConstructiveGeometryRepresentationRelationship {
    StepRepr_ConstructiveGeometryRepresentationRelationship* _get_reference() {
    return (StepRepr_ConstructiveGeometryRepresentationRelationship*)$self->get();
    }
};

%extend Handle_StepRepr_ConstructiveGeometryRepresentationRelationship {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ConstructiveGeometryRepresentationRelationship {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_DefinitionalRepresentation;
class StepRepr_DefinitionalRepresentation : public StepRepr_Representation {
	public:
		%feature("compactdefaultargs") StepRepr_DefinitionalRepresentation;
		%feature("autodoc", "	* Returns a DefinitionalRepresentation

	:rtype: None
") StepRepr_DefinitionalRepresentation;
		 StepRepr_DefinitionalRepresentation ();
};


%extend StepRepr_DefinitionalRepresentation {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_DefinitionalRepresentation(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_DefinitionalRepresentation::Handle_StepRepr_DefinitionalRepresentation %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_DefinitionalRepresentation;
class Handle_StepRepr_DefinitionalRepresentation : public Handle_StepRepr_Representation {

    public:
        // constructors
        Handle_StepRepr_DefinitionalRepresentation();
        Handle_StepRepr_DefinitionalRepresentation(const Handle_StepRepr_DefinitionalRepresentation &aHandle);
        Handle_StepRepr_DefinitionalRepresentation(const StepRepr_DefinitionalRepresentation *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_DefinitionalRepresentation DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_DefinitionalRepresentation {
    StepRepr_DefinitionalRepresentation* _get_reference() {
    return (StepRepr_DefinitionalRepresentation*)$self->get();
    }
};

%extend Handle_StepRepr_DefinitionalRepresentation {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_DefinitionalRepresentation {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_DerivedShapeAspect;
class StepRepr_DerivedShapeAspect : public StepRepr_ShapeAspect {
	public:
		%feature("compactdefaultargs") StepRepr_DerivedShapeAspect;
		%feature("autodoc", "	:rtype: None
") StepRepr_DerivedShapeAspect;
		 StepRepr_DerivedShapeAspect ();
};


%extend StepRepr_DerivedShapeAspect {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_DerivedShapeAspect(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_DerivedShapeAspect::Handle_StepRepr_DerivedShapeAspect %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_DerivedShapeAspect;
class Handle_StepRepr_DerivedShapeAspect : public Handle_StepRepr_ShapeAspect {

    public:
        // constructors
        Handle_StepRepr_DerivedShapeAspect();
        Handle_StepRepr_DerivedShapeAspect(const Handle_StepRepr_DerivedShapeAspect &aHandle);
        Handle_StepRepr_DerivedShapeAspect(const StepRepr_DerivedShapeAspect *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_DerivedShapeAspect DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_DerivedShapeAspect {
    StepRepr_DerivedShapeAspect* _get_reference() {
    return (StepRepr_DerivedShapeAspect*)$self->get();
    }
};

%extend Handle_StepRepr_DerivedShapeAspect {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_DerivedShapeAspect {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_DescriptiveRepresentationItem;
class StepRepr_DescriptiveRepresentationItem : public StepRepr_RepresentationItem {
	public:
		%feature("compactdefaultargs") StepRepr_DescriptiveRepresentationItem;
		%feature("autodoc", "	* Returns a DescriptiveRepresentationItem

	:rtype: None
") StepRepr_DescriptiveRepresentationItem;
		 StepRepr_DescriptiveRepresentationItem ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription);
		%feature("compactdefaultargs") SetDescription;
		%feature("autodoc", "	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:rtype: None
") SetDescription;
		void SetDescription (const Handle_TCollection_HAsciiString & aDescription);
		%feature("compactdefaultargs") Description;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") Description;
		Handle_TCollection_HAsciiString Description ();
};


%extend StepRepr_DescriptiveRepresentationItem {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_DescriptiveRepresentationItem(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_DescriptiveRepresentationItem::Handle_StepRepr_DescriptiveRepresentationItem %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_DescriptiveRepresentationItem;
class Handle_StepRepr_DescriptiveRepresentationItem : public Handle_StepRepr_RepresentationItem {

    public:
        // constructors
        Handle_StepRepr_DescriptiveRepresentationItem();
        Handle_StepRepr_DescriptiveRepresentationItem(const Handle_StepRepr_DescriptiveRepresentationItem &aHandle);
        Handle_StepRepr_DescriptiveRepresentationItem(const StepRepr_DescriptiveRepresentationItem *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_DescriptiveRepresentationItem DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_DescriptiveRepresentationItem {
    StepRepr_DescriptiveRepresentationItem* _get_reference() {
    return (StepRepr_DescriptiveRepresentationItem*)$self->get();
    }
};

%extend Handle_StepRepr_DescriptiveRepresentationItem {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_DescriptiveRepresentationItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ExternallyDefinedRepresentation;
class StepRepr_ExternallyDefinedRepresentation : public StepRepr_Representation {
	public:
		%feature("compactdefaultargs") StepRepr_ExternallyDefinedRepresentation;
		%feature("autodoc", "	:rtype: None
") StepRepr_ExternallyDefinedRepresentation;
		 StepRepr_ExternallyDefinedRepresentation ();
};


%extend StepRepr_ExternallyDefinedRepresentation {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ExternallyDefinedRepresentation(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ExternallyDefinedRepresentation::Handle_StepRepr_ExternallyDefinedRepresentation %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ExternallyDefinedRepresentation;
class Handle_StepRepr_ExternallyDefinedRepresentation : public Handle_StepRepr_Representation {

    public:
        // constructors
        Handle_StepRepr_ExternallyDefinedRepresentation();
        Handle_StepRepr_ExternallyDefinedRepresentation(const Handle_StepRepr_ExternallyDefinedRepresentation &aHandle);
        Handle_StepRepr_ExternallyDefinedRepresentation(const StepRepr_ExternallyDefinedRepresentation *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ExternallyDefinedRepresentation DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ExternallyDefinedRepresentation {
    StepRepr_ExternallyDefinedRepresentation* _get_reference() {
    return (StepRepr_ExternallyDefinedRepresentation*)$self->get();
    }
};

%extend Handle_StepRepr_ExternallyDefinedRepresentation {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ExternallyDefinedRepresentation {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_FeatureForDatumTargetRelationship;
class StepRepr_FeatureForDatumTargetRelationship : public StepRepr_ShapeAspectRelationship {
	public:
		%feature("compactdefaultargs") StepRepr_FeatureForDatumTargetRelationship;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepRepr_FeatureForDatumTargetRelationship;
		 StepRepr_FeatureForDatumTargetRelationship ();
};


%extend StepRepr_FeatureForDatumTargetRelationship {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_FeatureForDatumTargetRelationship(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_FeatureForDatumTargetRelationship::Handle_StepRepr_FeatureForDatumTargetRelationship %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_FeatureForDatumTargetRelationship;
class Handle_StepRepr_FeatureForDatumTargetRelationship : public Handle_StepRepr_ShapeAspectRelationship {

    public:
        // constructors
        Handle_StepRepr_FeatureForDatumTargetRelationship();
        Handle_StepRepr_FeatureForDatumTargetRelationship(const Handle_StepRepr_FeatureForDatumTargetRelationship &aHandle);
        Handle_StepRepr_FeatureForDatumTargetRelationship(const StepRepr_FeatureForDatumTargetRelationship *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_FeatureForDatumTargetRelationship DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_FeatureForDatumTargetRelationship {
    StepRepr_FeatureForDatumTargetRelationship* _get_reference() {
    return (StepRepr_FeatureForDatumTargetRelationship*)$self->get();
    }
};

%extend Handle_StepRepr_FeatureForDatumTargetRelationship {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_FeatureForDatumTargetRelationship {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_GlobalUncertaintyAssignedContext;
class StepRepr_GlobalUncertaintyAssignedContext : public StepRepr_RepresentationContext {
	public:
		%feature("compactdefaultargs") StepRepr_GlobalUncertaintyAssignedContext;
		%feature("autodoc", "	* Returns a GlobalUncertaintyAssignedContext

	:rtype: None
") StepRepr_GlobalUncertaintyAssignedContext;
		 StepRepr_GlobalUncertaintyAssignedContext ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aContextIdentifier:
	:type aContextIdentifier: Handle_TCollection_HAsciiString &
	:param aContextType:
	:type aContextType: Handle_TCollection_HAsciiString &
	:param aUncertainty:
	:type aUncertainty: Handle_StepBasic_HArray1OfUncertaintyMeasureWithUnit &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aContextIdentifier,const Handle_TCollection_HAsciiString & aContextType,const Handle_StepBasic_HArray1OfUncertaintyMeasureWithUnit & aUncertainty);
		%feature("compactdefaultargs") SetUncertainty;
		%feature("autodoc", "	:param aUncertainty:
	:type aUncertainty: Handle_StepBasic_HArray1OfUncertaintyMeasureWithUnit &
	:rtype: None
") SetUncertainty;
		void SetUncertainty (const Handle_StepBasic_HArray1OfUncertaintyMeasureWithUnit & aUncertainty);
		%feature("compactdefaultargs") Uncertainty;
		%feature("autodoc", "	:rtype: Handle_StepBasic_HArray1OfUncertaintyMeasureWithUnit
") Uncertainty;
		Handle_StepBasic_HArray1OfUncertaintyMeasureWithUnit Uncertainty ();
		%feature("compactdefaultargs") UncertaintyValue;
		%feature("autodoc", "	:param num:
	:type num: int
	:rtype: Handle_StepBasic_UncertaintyMeasureWithUnit
") UncertaintyValue;
		Handle_StepBasic_UncertaintyMeasureWithUnit UncertaintyValue (const Standard_Integer num);
		%feature("compactdefaultargs") NbUncertainty;
		%feature("autodoc", "	:rtype: int
") NbUncertainty;
		Standard_Integer NbUncertainty ();
};


%extend StepRepr_GlobalUncertaintyAssignedContext {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_GlobalUncertaintyAssignedContext(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_GlobalUncertaintyAssignedContext::Handle_StepRepr_GlobalUncertaintyAssignedContext %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_GlobalUncertaintyAssignedContext;
class Handle_StepRepr_GlobalUncertaintyAssignedContext : public Handle_StepRepr_RepresentationContext {

    public:
        // constructors
        Handle_StepRepr_GlobalUncertaintyAssignedContext();
        Handle_StepRepr_GlobalUncertaintyAssignedContext(const Handle_StepRepr_GlobalUncertaintyAssignedContext &aHandle);
        Handle_StepRepr_GlobalUncertaintyAssignedContext(const StepRepr_GlobalUncertaintyAssignedContext *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_GlobalUncertaintyAssignedContext DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_GlobalUncertaintyAssignedContext {
    StepRepr_GlobalUncertaintyAssignedContext* _get_reference() {
    return (StepRepr_GlobalUncertaintyAssignedContext*)$self->get();
    }
};

%extend Handle_StepRepr_GlobalUncertaintyAssignedContext {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_GlobalUncertaintyAssignedContext {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_GlobalUnitAssignedContext;
class StepRepr_GlobalUnitAssignedContext : public StepRepr_RepresentationContext {
	public:
		%feature("compactdefaultargs") StepRepr_GlobalUnitAssignedContext;
		%feature("autodoc", "	* Returns a GlobalUnitAssignedContext

	:rtype: None
") StepRepr_GlobalUnitAssignedContext;
		 StepRepr_GlobalUnitAssignedContext ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aContextIdentifier:
	:type aContextIdentifier: Handle_TCollection_HAsciiString &
	:param aContextType:
	:type aContextType: Handle_TCollection_HAsciiString &
	:param aUnits:
	:type aUnits: Handle_StepBasic_HArray1OfNamedUnit &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aContextIdentifier,const Handle_TCollection_HAsciiString & aContextType,const Handle_StepBasic_HArray1OfNamedUnit & aUnits);
		%feature("compactdefaultargs") SetUnits;
		%feature("autodoc", "	:param aUnits:
	:type aUnits: Handle_StepBasic_HArray1OfNamedUnit &
	:rtype: None
") SetUnits;
		void SetUnits (const Handle_StepBasic_HArray1OfNamedUnit & aUnits);
		%feature("compactdefaultargs") Units;
		%feature("autodoc", "	:rtype: Handle_StepBasic_HArray1OfNamedUnit
") Units;
		Handle_StepBasic_HArray1OfNamedUnit Units ();
		%feature("compactdefaultargs") UnitsValue;
		%feature("autodoc", "	:param num:
	:type num: int
	:rtype: Handle_StepBasic_NamedUnit
") UnitsValue;
		Handle_StepBasic_NamedUnit UnitsValue (const Standard_Integer num);
		%feature("compactdefaultargs") NbUnits;
		%feature("autodoc", "	:rtype: int
") NbUnits;
		Standard_Integer NbUnits ();
};


%extend StepRepr_GlobalUnitAssignedContext {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_GlobalUnitAssignedContext(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_GlobalUnitAssignedContext::Handle_StepRepr_GlobalUnitAssignedContext %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_GlobalUnitAssignedContext;
class Handle_StepRepr_GlobalUnitAssignedContext : public Handle_StepRepr_RepresentationContext {

    public:
        // constructors
        Handle_StepRepr_GlobalUnitAssignedContext();
        Handle_StepRepr_GlobalUnitAssignedContext(const Handle_StepRepr_GlobalUnitAssignedContext &aHandle);
        Handle_StepRepr_GlobalUnitAssignedContext(const StepRepr_GlobalUnitAssignedContext *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_GlobalUnitAssignedContext DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_GlobalUnitAssignedContext {
    StepRepr_GlobalUnitAssignedContext* _get_reference() {
    return (StepRepr_GlobalUnitAssignedContext*)$self->get();
    }
};

%extend Handle_StepRepr_GlobalUnitAssignedContext {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_GlobalUnitAssignedContext {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_IntegerRepresentationItem;
class StepRepr_IntegerRepresentationItem : public StepRepr_RepresentationItem {
	public:
		%feature("compactdefaultargs") StepRepr_IntegerRepresentationItem;
		%feature("autodoc", "	* Returns a IntegerRepresentationItem

	:rtype: None
") StepRepr_IntegerRepresentationItem;
		 StepRepr_IntegerRepresentationItem ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:param theValue:
	:type theValue: int
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theName,const Standard_Integer theValue);
		%feature("compactdefaultargs") SetValue;
		%feature("autodoc", "	:param theValue:
	:type theValue: int
	:rtype: inline void
") SetValue;
		inline void SetValue (const Standard_Integer theValue);
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "	:rtype: inline int
") Value;
		inline Standard_Integer Value ();
};


%extend StepRepr_IntegerRepresentationItem {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_IntegerRepresentationItem(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_IntegerRepresentationItem::Handle_StepRepr_IntegerRepresentationItem %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_IntegerRepresentationItem;
class Handle_StepRepr_IntegerRepresentationItem : public Handle_StepRepr_RepresentationItem {

    public:
        // constructors
        Handle_StepRepr_IntegerRepresentationItem();
        Handle_StepRepr_IntegerRepresentationItem(const Handle_StepRepr_IntegerRepresentationItem &aHandle);
        Handle_StepRepr_IntegerRepresentationItem(const StepRepr_IntegerRepresentationItem *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_IntegerRepresentationItem DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_IntegerRepresentationItem {
    StepRepr_IntegerRepresentationItem* _get_reference() {
    return (StepRepr_IntegerRepresentationItem*)$self->get();
    }
};

%extend Handle_StepRepr_IntegerRepresentationItem {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_IntegerRepresentationItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_MakeFromUsageOption;
class StepRepr_MakeFromUsageOption : public StepRepr_ProductDefinitionUsage {
	public:
		%feature("compactdefaultargs") StepRepr_MakeFromUsageOption;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepRepr_MakeFromUsageOption;
		 StepRepr_MakeFromUsageOption ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aProductDefinitionRelationship_Id:
	:type aProductDefinitionRelationship_Id: Handle_TCollection_HAsciiString &
	:param aProductDefinitionRelationship_Name:
	:type aProductDefinitionRelationship_Name: Handle_TCollection_HAsciiString &
	:param hasProductDefinitionRelationship_Description:
	:type hasProductDefinitionRelationship_Description: bool
	:param aProductDefinitionRelationship_Description:
	:type aProductDefinitionRelationship_Description: Handle_TCollection_HAsciiString &
	:param aProductDefinitionRelationship_RelatingProductDefinition:
	:type aProductDefinitionRelationship_RelatingProductDefinition: Handle_StepBasic_ProductDefinition &
	:param aProductDefinitionRelationship_RelatedProductDefinition:
	:type aProductDefinitionRelationship_RelatedProductDefinition: Handle_StepBasic_ProductDefinition &
	:param aRanking:
	:type aRanking: int
	:param aRankingRationale:
	:type aRankingRationale: Handle_TCollection_HAsciiString &
	:param aQuantity:
	:type aQuantity: Handle_StepBasic_MeasureWithUnit &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aProductDefinitionRelationship_Id,const Handle_TCollection_HAsciiString & aProductDefinitionRelationship_Name,const Standard_Boolean hasProductDefinitionRelationship_Description,const Handle_TCollection_HAsciiString & aProductDefinitionRelationship_Description,const Handle_StepBasic_ProductDefinition & aProductDefinitionRelationship_RelatingProductDefinition,const Handle_StepBasic_ProductDefinition & aProductDefinitionRelationship_RelatedProductDefinition,const Standard_Integer aRanking,const Handle_TCollection_HAsciiString & aRankingRationale,const Handle_StepBasic_MeasureWithUnit & aQuantity);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aProductDefinitionRelationship_Id:
	:type aProductDefinitionRelationship_Id: Handle_TCollection_HAsciiString &
	:param aProductDefinitionRelationship_Name:
	:type aProductDefinitionRelationship_Name: Handle_TCollection_HAsciiString &
	:param hasProductDefinitionRelationship_Description:
	:type hasProductDefinitionRelationship_Description: bool
	:param aProductDefinitionRelationship_Description:
	:type aProductDefinitionRelationship_Description: Handle_TCollection_HAsciiString &
	:param aProductDefinitionRelationship_RelatingProductDefinition:
	:type aProductDefinitionRelationship_RelatingProductDefinition: StepBasic_ProductDefinitionOrReference &
	:param aProductDefinitionRelationship_RelatedProductDefinition:
	:type aProductDefinitionRelationship_RelatedProductDefinition: StepBasic_ProductDefinitionOrReference &
	:param aRanking:
	:type aRanking: int
	:param aRankingRationale:
	:type aRankingRationale: Handle_TCollection_HAsciiString &
	:param aQuantity:
	:type aQuantity: Handle_StepBasic_MeasureWithUnit &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aProductDefinitionRelationship_Id,const Handle_TCollection_HAsciiString & aProductDefinitionRelationship_Name,const Standard_Boolean hasProductDefinitionRelationship_Description,const Handle_TCollection_HAsciiString & aProductDefinitionRelationship_Description,const StepBasic_ProductDefinitionOrReference & aProductDefinitionRelationship_RelatingProductDefinition,const StepBasic_ProductDefinitionOrReference & aProductDefinitionRelationship_RelatedProductDefinition,const Standard_Integer aRanking,const Handle_TCollection_HAsciiString & aRankingRationale,const Handle_StepBasic_MeasureWithUnit & aQuantity);
		%feature("compactdefaultargs") Ranking;
		%feature("autodoc", "	* Returns field Ranking

	:rtype: int
") Ranking;
		Standard_Integer Ranking ();
		%feature("compactdefaultargs") SetRanking;
		%feature("autodoc", "	* Set field Ranking

	:param Ranking:
	:type Ranking: int
	:rtype: None
") SetRanking;
		void SetRanking (const Standard_Integer Ranking);
		%feature("compactdefaultargs") RankingRationale;
		%feature("autodoc", "	* Returns field RankingRationale

	:rtype: Handle_TCollection_HAsciiString
") RankingRationale;
		Handle_TCollection_HAsciiString RankingRationale ();
		%feature("compactdefaultargs") SetRankingRationale;
		%feature("autodoc", "	* Set field RankingRationale

	:param RankingRationale:
	:type RankingRationale: Handle_TCollection_HAsciiString &
	:rtype: None
") SetRankingRationale;
		void SetRankingRationale (const Handle_TCollection_HAsciiString & RankingRationale);
		%feature("compactdefaultargs") Quantity;
		%feature("autodoc", "	* Returns field Quantity

	:rtype: Handle_StepBasic_MeasureWithUnit
") Quantity;
		Handle_StepBasic_MeasureWithUnit Quantity ();
		%feature("compactdefaultargs") SetQuantity;
		%feature("autodoc", "	* Set field Quantity

	:param Quantity:
	:type Quantity: Handle_StepBasic_MeasureWithUnit &
	:rtype: None
") SetQuantity;
		void SetQuantity (const Handle_StepBasic_MeasureWithUnit & Quantity);
};


%extend StepRepr_MakeFromUsageOption {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_MakeFromUsageOption(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_MakeFromUsageOption::Handle_StepRepr_MakeFromUsageOption %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_MakeFromUsageOption;
class Handle_StepRepr_MakeFromUsageOption : public Handle_StepRepr_ProductDefinitionUsage {

    public:
        // constructors
        Handle_StepRepr_MakeFromUsageOption();
        Handle_StepRepr_MakeFromUsageOption(const Handle_StepRepr_MakeFromUsageOption &aHandle);
        Handle_StepRepr_MakeFromUsageOption(const StepRepr_MakeFromUsageOption *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_MakeFromUsageOption DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_MakeFromUsageOption {
    StepRepr_MakeFromUsageOption* _get_reference() {
    return (StepRepr_MakeFromUsageOption*)$self->get();
    }
};

%extend Handle_StepRepr_MakeFromUsageOption {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_MakeFromUsageOption {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_MappedItem;
class StepRepr_MappedItem : public StepRepr_RepresentationItem {
	public:
		%feature("compactdefaultargs") StepRepr_MappedItem;
		%feature("autodoc", "	* Returns a MappedItem

	:rtype: None
") StepRepr_MappedItem;
		 StepRepr_MappedItem ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aMappingSource:
	:type aMappingSource: Handle_StepRepr_RepresentationMap &
	:param aMappingTarget:
	:type aMappingTarget: Handle_StepRepr_RepresentationItem &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName,const Handle_StepRepr_RepresentationMap & aMappingSource,const Handle_StepRepr_RepresentationItem & aMappingTarget);
		%feature("compactdefaultargs") SetMappingSource;
		%feature("autodoc", "	:param aMappingSource:
	:type aMappingSource: Handle_StepRepr_RepresentationMap &
	:rtype: None
") SetMappingSource;
		void SetMappingSource (const Handle_StepRepr_RepresentationMap & aMappingSource);
		%feature("compactdefaultargs") MappingSource;
		%feature("autodoc", "	:rtype: Handle_StepRepr_RepresentationMap
") MappingSource;
		Handle_StepRepr_RepresentationMap MappingSource ();
		%feature("compactdefaultargs") SetMappingTarget;
		%feature("autodoc", "	:param aMappingTarget:
	:type aMappingTarget: Handle_StepRepr_RepresentationItem &
	:rtype: None
") SetMappingTarget;
		void SetMappingTarget (const Handle_StepRepr_RepresentationItem & aMappingTarget);
		%feature("compactdefaultargs") MappingTarget;
		%feature("autodoc", "	:rtype: Handle_StepRepr_RepresentationItem
") MappingTarget;
		Handle_StepRepr_RepresentationItem MappingTarget ();
};


%extend StepRepr_MappedItem {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_MappedItem(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_MappedItem::Handle_StepRepr_MappedItem %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_MappedItem;
class Handle_StepRepr_MappedItem : public Handle_StepRepr_RepresentationItem {

    public:
        // constructors
        Handle_StepRepr_MappedItem();
        Handle_StepRepr_MappedItem(const Handle_StepRepr_MappedItem &aHandle);
        Handle_StepRepr_MappedItem(const StepRepr_MappedItem *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_MappedItem DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_MappedItem {
    StepRepr_MappedItem* _get_reference() {
    return (StepRepr_MappedItem*)$self->get();
    }
};

%extend Handle_StepRepr_MappedItem {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_MappedItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_MaterialProperty;
class StepRepr_MaterialProperty : public StepRepr_PropertyDefinition {
	public:
		%feature("compactdefaultargs") StepRepr_MaterialProperty;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepRepr_MaterialProperty;
		 StepRepr_MaterialProperty ();
};


%extend StepRepr_MaterialProperty {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_MaterialProperty(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_MaterialProperty::Handle_StepRepr_MaterialProperty %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_MaterialProperty;
class Handle_StepRepr_MaterialProperty : public Handle_StepRepr_PropertyDefinition {

    public:
        // constructors
        Handle_StepRepr_MaterialProperty();
        Handle_StepRepr_MaterialProperty(const Handle_StepRepr_MaterialProperty &aHandle);
        Handle_StepRepr_MaterialProperty(const StepRepr_MaterialProperty *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_MaterialProperty DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_MaterialProperty {
    StepRepr_MaterialProperty* _get_reference() {
    return (StepRepr_MaterialProperty*)$self->get();
    }
};

%extend Handle_StepRepr_MaterialProperty {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_MaterialProperty {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_MaterialPropertyRepresentation;
class StepRepr_MaterialPropertyRepresentation : public StepRepr_PropertyDefinitionRepresentation {
	public:
		%feature("compactdefaultargs") StepRepr_MaterialPropertyRepresentation;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepRepr_MaterialPropertyRepresentation;
		 StepRepr_MaterialPropertyRepresentation ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aPropertyDefinitionRepresentation_Definition:
	:type aPropertyDefinitionRepresentation_Definition: StepRepr_RepresentedDefinition &
	:param aPropertyDefinitionRepresentation_UsedRepresentation:
	:type aPropertyDefinitionRepresentation_UsedRepresentation: Handle_StepRepr_Representation &
	:param aDependentEnvironment:
	:type aDependentEnvironment: Handle_StepRepr_DataEnvironment &
	:rtype: None
") Init;
		void Init (const StepRepr_RepresentedDefinition & aPropertyDefinitionRepresentation_Definition,const Handle_StepRepr_Representation & aPropertyDefinitionRepresentation_UsedRepresentation,const Handle_StepRepr_DataEnvironment & aDependentEnvironment);
		%feature("compactdefaultargs") DependentEnvironment;
		%feature("autodoc", "	* Returns field DependentEnvironment

	:rtype: Handle_StepRepr_DataEnvironment
") DependentEnvironment;
		Handle_StepRepr_DataEnvironment DependentEnvironment ();
		%feature("compactdefaultargs") SetDependentEnvironment;
		%feature("autodoc", "	* Set field DependentEnvironment

	:param DependentEnvironment:
	:type DependentEnvironment: Handle_StepRepr_DataEnvironment &
	:rtype: None
") SetDependentEnvironment;
		void SetDependentEnvironment (const Handle_StepRepr_DataEnvironment & DependentEnvironment);
};


%extend StepRepr_MaterialPropertyRepresentation {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_MaterialPropertyRepresentation(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_MaterialPropertyRepresentation::Handle_StepRepr_MaterialPropertyRepresentation %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_MaterialPropertyRepresentation;
class Handle_StepRepr_MaterialPropertyRepresentation : public Handle_StepRepr_PropertyDefinitionRepresentation {

    public:
        // constructors
        Handle_StepRepr_MaterialPropertyRepresentation();
        Handle_StepRepr_MaterialPropertyRepresentation(const Handle_StepRepr_MaterialPropertyRepresentation &aHandle);
        Handle_StepRepr_MaterialPropertyRepresentation(const StepRepr_MaterialPropertyRepresentation *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_MaterialPropertyRepresentation DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_MaterialPropertyRepresentation {
    StepRepr_MaterialPropertyRepresentation* _get_reference() {
    return (StepRepr_MaterialPropertyRepresentation*)$self->get();
    }
};

%extend Handle_StepRepr_MaterialPropertyRepresentation {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_MaterialPropertyRepresentation {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_MeasureRepresentationItem;
class StepRepr_MeasureRepresentationItem : public StepRepr_RepresentationItem {
	public:
		%feature("compactdefaultargs") StepRepr_MeasureRepresentationItem;
		%feature("autodoc", "	* Creates empty object

	:rtype: None
") StepRepr_MeasureRepresentationItem;
		 StepRepr_MeasureRepresentationItem ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Init all fields

	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aValueComponent:
	:type aValueComponent: Handle_StepBasic_MeasureValueMember &
	:param aUnitComponent:
	:type aUnitComponent: StepBasic_Unit &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName,const Handle_StepBasic_MeasureValueMember & aValueComponent,const StepBasic_Unit & aUnitComponent);
		%feature("compactdefaultargs") SetMeasure;
		%feature("autodoc", "	:param Measure:
	:type Measure: Handle_StepBasic_MeasureWithUnit &
	:rtype: None
") SetMeasure;
		void SetMeasure (const Handle_StepBasic_MeasureWithUnit & Measure);
		%feature("compactdefaultargs") Measure;
		%feature("autodoc", "	:rtype: Handle_StepBasic_MeasureWithUnit
") Measure;
		Handle_StepBasic_MeasureWithUnit Measure ();
};


%extend StepRepr_MeasureRepresentationItem {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_MeasureRepresentationItem(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_MeasureRepresentationItem::Handle_StepRepr_MeasureRepresentationItem %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_MeasureRepresentationItem;
class Handle_StepRepr_MeasureRepresentationItem : public Handle_StepRepr_RepresentationItem {

    public:
        // constructors
        Handle_StepRepr_MeasureRepresentationItem();
        Handle_StepRepr_MeasureRepresentationItem(const Handle_StepRepr_MeasureRepresentationItem &aHandle);
        Handle_StepRepr_MeasureRepresentationItem(const StepRepr_MeasureRepresentationItem *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_MeasureRepresentationItem DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_MeasureRepresentationItem {
    StepRepr_MeasureRepresentationItem* _get_reference() {
    return (StepRepr_MeasureRepresentationItem*)$self->get();
    }
};

%extend Handle_StepRepr_MeasureRepresentationItem {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_MeasureRepresentationItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ParametricRepresentationContext;
class StepRepr_ParametricRepresentationContext : public StepRepr_RepresentationContext {
	public:
		%feature("compactdefaultargs") StepRepr_ParametricRepresentationContext;
		%feature("autodoc", "	* Returns a ParametricRepresentationContext

	:rtype: None
") StepRepr_ParametricRepresentationContext;
		 StepRepr_ParametricRepresentationContext ();
};


%extend StepRepr_ParametricRepresentationContext {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ParametricRepresentationContext(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ParametricRepresentationContext::Handle_StepRepr_ParametricRepresentationContext %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ParametricRepresentationContext;
class Handle_StepRepr_ParametricRepresentationContext : public Handle_StepRepr_RepresentationContext {

    public:
        // constructors
        Handle_StepRepr_ParametricRepresentationContext();
        Handle_StepRepr_ParametricRepresentationContext(const Handle_StepRepr_ParametricRepresentationContext &aHandle);
        Handle_StepRepr_ParametricRepresentationContext(const StepRepr_ParametricRepresentationContext *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ParametricRepresentationContext DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ParametricRepresentationContext {
    StepRepr_ParametricRepresentationContext* _get_reference() {
    return (StepRepr_ParametricRepresentationContext*)$self->get();
    }
};

%extend Handle_StepRepr_ParametricRepresentationContext {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ParametricRepresentationContext {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ProductDefinitionShape;
class StepRepr_ProductDefinitionShape : public StepRepr_PropertyDefinition {
	public:
		%feature("compactdefaultargs") StepRepr_ProductDefinitionShape;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepRepr_ProductDefinitionShape;
		 StepRepr_ProductDefinitionShape ();
};


%extend StepRepr_ProductDefinitionShape {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ProductDefinitionShape(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ProductDefinitionShape::Handle_StepRepr_ProductDefinitionShape %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ProductDefinitionShape;
class Handle_StepRepr_ProductDefinitionShape : public Handle_StepRepr_PropertyDefinition {

    public:
        // constructors
        Handle_StepRepr_ProductDefinitionShape();
        Handle_StepRepr_ProductDefinitionShape(const Handle_StepRepr_ProductDefinitionShape &aHandle);
        Handle_StepRepr_ProductDefinitionShape(const StepRepr_ProductDefinitionShape *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ProductDefinitionShape DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ProductDefinitionShape {
    StepRepr_ProductDefinitionShape* _get_reference() {
    return (StepRepr_ProductDefinitionShape*)$self->get();
    }
};

%extend Handle_StepRepr_ProductDefinitionShape {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ProductDefinitionShape {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ReprItemAndMeasureWithUnit;
class StepRepr_ReprItemAndMeasureWithUnit : public StepRepr_RepresentationItem {
	public:
		%feature("compactdefaultargs") StepRepr_ReprItemAndMeasureWithUnit;
		%feature("autodoc", "	:rtype: None
") StepRepr_ReprItemAndMeasureWithUnit;
		 StepRepr_ReprItemAndMeasureWithUnit ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aMWU:
	:type aMWU: Handle_StepBasic_MeasureWithUnit &
	:param aRI:
	:type aRI: Handle_StepRepr_RepresentationItem &
	:rtype: None
") Init;
		void Init (const Handle_StepBasic_MeasureWithUnit & aMWU,const Handle_StepRepr_RepresentationItem & aRI);
		%feature("compactdefaultargs") GetMeasureRepresentationItem;
		%feature("autodoc", "	:rtype: Handle_StepRepr_MeasureRepresentationItem
") GetMeasureRepresentationItem;
		Handle_StepRepr_MeasureRepresentationItem GetMeasureRepresentationItem ();
		%feature("compactdefaultargs") SetMeasureWithUnit;
		%feature("autodoc", "	:param aMWU:
	:type aMWU: Handle_StepBasic_MeasureWithUnit &
	:rtype: None
") SetMeasureWithUnit;
		void SetMeasureWithUnit (const Handle_StepBasic_MeasureWithUnit & aMWU);
		%feature("compactdefaultargs") GetMeasureWithUnit;
		%feature("autodoc", "	:rtype: Handle_StepBasic_MeasureWithUnit
") GetMeasureWithUnit;
		Handle_StepBasic_MeasureWithUnit GetMeasureWithUnit ();
		%feature("compactdefaultargs") GetRepresentationItem;
		%feature("autodoc", "	:rtype: Handle_StepRepr_RepresentationItem
") GetRepresentationItem;
		Handle_StepRepr_RepresentationItem GetRepresentationItem ();
};


%extend StepRepr_ReprItemAndMeasureWithUnit {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ReprItemAndMeasureWithUnit(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ReprItemAndMeasureWithUnit::Handle_StepRepr_ReprItemAndMeasureWithUnit %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ReprItemAndMeasureWithUnit;
class Handle_StepRepr_ReprItemAndMeasureWithUnit : public Handle_StepRepr_RepresentationItem {

    public:
        // constructors
        Handle_StepRepr_ReprItemAndMeasureWithUnit();
        Handle_StepRepr_ReprItemAndMeasureWithUnit(const Handle_StepRepr_ReprItemAndMeasureWithUnit &aHandle);
        Handle_StepRepr_ReprItemAndMeasureWithUnit(const StepRepr_ReprItemAndMeasureWithUnit *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ReprItemAndMeasureWithUnit DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ReprItemAndMeasureWithUnit {
    StepRepr_ReprItemAndMeasureWithUnit* _get_reference() {
    return (StepRepr_ReprItemAndMeasureWithUnit*)$self->get();
    }
};

%extend Handle_StepRepr_ReprItemAndMeasureWithUnit {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ReprItemAndMeasureWithUnit {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ShapeAspectDerivingRelationship;
class StepRepr_ShapeAspectDerivingRelationship : public StepRepr_ShapeAspectRelationship {
	public:
		%feature("compactdefaultargs") StepRepr_ShapeAspectDerivingRelationship;
		%feature("autodoc", "	:rtype: None
") StepRepr_ShapeAspectDerivingRelationship;
		 StepRepr_ShapeAspectDerivingRelationship ();
};


%extend StepRepr_ShapeAspectDerivingRelationship {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ShapeAspectDerivingRelationship(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ShapeAspectDerivingRelationship::Handle_StepRepr_ShapeAspectDerivingRelationship %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ShapeAspectDerivingRelationship;
class Handle_StepRepr_ShapeAspectDerivingRelationship : public Handle_StepRepr_ShapeAspectRelationship {

    public:
        // constructors
        Handle_StepRepr_ShapeAspectDerivingRelationship();
        Handle_StepRepr_ShapeAspectDerivingRelationship(const Handle_StepRepr_ShapeAspectDerivingRelationship &aHandle);
        Handle_StepRepr_ShapeAspectDerivingRelationship(const StepRepr_ShapeAspectDerivingRelationship *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ShapeAspectDerivingRelationship DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ShapeAspectDerivingRelationship {
    StepRepr_ShapeAspectDerivingRelationship* _get_reference() {
    return (StepRepr_ShapeAspectDerivingRelationship*)$self->get();
    }
};

%extend Handle_StepRepr_ShapeAspectDerivingRelationship {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ShapeAspectDerivingRelationship {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ShapeAspectTransition;
class StepRepr_ShapeAspectTransition : public StepRepr_ShapeAspectRelationship {
	public:
		%feature("compactdefaultargs") StepRepr_ShapeAspectTransition;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepRepr_ShapeAspectTransition;
		 StepRepr_ShapeAspectTransition ();
};


%extend StepRepr_ShapeAspectTransition {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ShapeAspectTransition(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ShapeAspectTransition::Handle_StepRepr_ShapeAspectTransition %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ShapeAspectTransition;
class Handle_StepRepr_ShapeAspectTransition : public Handle_StepRepr_ShapeAspectRelationship {

    public:
        // constructors
        Handle_StepRepr_ShapeAspectTransition();
        Handle_StepRepr_ShapeAspectTransition(const Handle_StepRepr_ShapeAspectTransition &aHandle);
        Handle_StepRepr_ShapeAspectTransition(const StepRepr_ShapeAspectTransition *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ShapeAspectTransition DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ShapeAspectTransition {
    StepRepr_ShapeAspectTransition* _get_reference() {
    return (StepRepr_ShapeAspectTransition*)$self->get();
    }
};

%extend Handle_StepRepr_ShapeAspectTransition {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ShapeAspectTransition {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ShapeRepresentationRelationship;
class StepRepr_ShapeRepresentationRelationship : public StepRepr_RepresentationRelationship {
	public:
		%feature("compactdefaultargs") StepRepr_ShapeRepresentationRelationship;
		%feature("autodoc", "	:rtype: None
") StepRepr_ShapeRepresentationRelationship;
		 StepRepr_ShapeRepresentationRelationship ();
};


%extend StepRepr_ShapeRepresentationRelationship {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ShapeRepresentationRelationship(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ShapeRepresentationRelationship::Handle_StepRepr_ShapeRepresentationRelationship %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ShapeRepresentationRelationship;
class Handle_StepRepr_ShapeRepresentationRelationship : public Handle_StepRepr_RepresentationRelationship {

    public:
        // constructors
        Handle_StepRepr_ShapeRepresentationRelationship();
        Handle_StepRepr_ShapeRepresentationRelationship(const Handle_StepRepr_ShapeRepresentationRelationship &aHandle);
        Handle_StepRepr_ShapeRepresentationRelationship(const StepRepr_ShapeRepresentationRelationship *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ShapeRepresentationRelationship DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ShapeRepresentationRelationship {
    StepRepr_ShapeRepresentationRelationship* _get_reference() {
    return (StepRepr_ShapeRepresentationRelationship*)$self->get();
    }
};

%extend Handle_StepRepr_ShapeRepresentationRelationship {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ShapeRepresentationRelationship {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_StructuralResponseProperty;
class StepRepr_StructuralResponseProperty : public StepRepr_PropertyDefinition {
	public:
		%feature("compactdefaultargs") StepRepr_StructuralResponseProperty;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepRepr_StructuralResponseProperty;
		 StepRepr_StructuralResponseProperty ();
};


%extend StepRepr_StructuralResponseProperty {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_StructuralResponseProperty(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_StructuralResponseProperty::Handle_StepRepr_StructuralResponseProperty %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_StructuralResponseProperty;
class Handle_StepRepr_StructuralResponseProperty : public Handle_StepRepr_PropertyDefinition {

    public:
        // constructors
        Handle_StepRepr_StructuralResponseProperty();
        Handle_StepRepr_StructuralResponseProperty(const Handle_StepRepr_StructuralResponseProperty &aHandle);
        Handle_StepRepr_StructuralResponseProperty(const StepRepr_StructuralResponseProperty *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_StructuralResponseProperty DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_StructuralResponseProperty {
    StepRepr_StructuralResponseProperty* _get_reference() {
    return (StepRepr_StructuralResponseProperty*)$self->get();
    }
};

%extend Handle_StepRepr_StructuralResponseProperty {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_StructuralResponseProperty {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_StructuralResponsePropertyDefinitionRepresentation;
class StepRepr_StructuralResponsePropertyDefinitionRepresentation : public StepRepr_PropertyDefinitionRepresentation {
	public:
		%feature("compactdefaultargs") StepRepr_StructuralResponsePropertyDefinitionRepresentation;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepRepr_StructuralResponsePropertyDefinitionRepresentation;
		 StepRepr_StructuralResponsePropertyDefinitionRepresentation ();
};


%extend StepRepr_StructuralResponsePropertyDefinitionRepresentation {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation::Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation;
class Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation : public Handle_StepRepr_PropertyDefinitionRepresentation {

    public:
        // constructors
        Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation();
        Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation(const Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation &aHandle);
        Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation(const StepRepr_StructuralResponsePropertyDefinitionRepresentation *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation {
    StepRepr_StructuralResponsePropertyDefinitionRepresentation* _get_reference() {
    return (StepRepr_StructuralResponsePropertyDefinitionRepresentation*)$self->get();
    }
};

%extend Handle_StepRepr_StructuralResponsePropertyDefinitionRepresentation {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_StructuralResponsePropertyDefinitionRepresentation {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ValueRepresentationItem;
class StepRepr_ValueRepresentationItem : public StepRepr_RepresentationItem {
	public:
		%feature("compactdefaultargs") StepRepr_ValueRepresentationItem;
		%feature("autodoc", "	* Returns a ValueRepresentationItem

	:rtype: None
") StepRepr_ValueRepresentationItem;
		 StepRepr_ValueRepresentationItem ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:param theValueComponentMember:
	:type theValueComponentMember: Handle_StepBasic_MeasureValueMember &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theName,const Handle_StepBasic_MeasureValueMember & theValueComponentMember);
		%feature("compactdefaultargs") SetValueComponentMember;
		%feature("autodoc", "	:param theValueComponentMember:
	:type theValueComponentMember: Handle_StepBasic_MeasureValueMember &
	:rtype: inline void
") SetValueComponentMember;
		inline void SetValueComponentMember (const Handle_StepBasic_MeasureValueMember & theValueComponentMember);
		%feature("compactdefaultargs") ValueComponentMember;
		%feature("autodoc", "	:rtype: inline Handle_StepBasic_MeasureValueMember
") ValueComponentMember;
		inline Handle_StepBasic_MeasureValueMember ValueComponentMember ();
};


%extend StepRepr_ValueRepresentationItem {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ValueRepresentationItem(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ValueRepresentationItem::Handle_StepRepr_ValueRepresentationItem %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ValueRepresentationItem;
class Handle_StepRepr_ValueRepresentationItem : public Handle_StepRepr_RepresentationItem {

    public:
        // constructors
        Handle_StepRepr_ValueRepresentationItem();
        Handle_StepRepr_ValueRepresentationItem(const Handle_StepRepr_ValueRepresentationItem &aHandle);
        Handle_StepRepr_ValueRepresentationItem(const StepRepr_ValueRepresentationItem *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ValueRepresentationItem DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ValueRepresentationItem {
    StepRepr_ValueRepresentationItem* _get_reference() {
    return (StepRepr_ValueRepresentationItem*)$self->get();
    }
};

%extend Handle_StepRepr_ValueRepresentationItem {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ValueRepresentationItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_Apex;
class StepRepr_Apex : public StepRepr_DerivedShapeAspect {
	public:
		%feature("compactdefaultargs") StepRepr_Apex;
		%feature("autodoc", "	:rtype: None
") StepRepr_Apex;
		 StepRepr_Apex ();
};


%extend StepRepr_Apex {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_Apex(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_Apex::Handle_StepRepr_Apex %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_Apex;
class Handle_StepRepr_Apex : public Handle_StepRepr_DerivedShapeAspect {

    public:
        // constructors
        Handle_StepRepr_Apex();
        Handle_StepRepr_Apex(const Handle_StepRepr_Apex &aHandle);
        Handle_StepRepr_Apex(const StepRepr_Apex *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_Apex DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_Apex {
    StepRepr_Apex* _get_reference() {
    return (StepRepr_Apex*)$self->get();
    }
};

%extend Handle_StepRepr_Apex {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_Apex {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_CentreOfSymmetry;
class StepRepr_CentreOfSymmetry : public StepRepr_DerivedShapeAspect {
	public:
		%feature("compactdefaultargs") StepRepr_CentreOfSymmetry;
		%feature("autodoc", "	:rtype: None
") StepRepr_CentreOfSymmetry;
		 StepRepr_CentreOfSymmetry ();
};


%extend StepRepr_CentreOfSymmetry {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_CentreOfSymmetry(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_CentreOfSymmetry::Handle_StepRepr_CentreOfSymmetry %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_CentreOfSymmetry;
class Handle_StepRepr_CentreOfSymmetry : public Handle_StepRepr_DerivedShapeAspect {

    public:
        // constructors
        Handle_StepRepr_CentreOfSymmetry();
        Handle_StepRepr_CentreOfSymmetry(const Handle_StepRepr_CentreOfSymmetry &aHandle);
        Handle_StepRepr_CentreOfSymmetry(const StepRepr_CentreOfSymmetry *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_CentreOfSymmetry DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_CentreOfSymmetry {
    StepRepr_CentreOfSymmetry* _get_reference() {
    return (StepRepr_CentreOfSymmetry*)$self->get();
    }
};

%extend Handle_StepRepr_CentreOfSymmetry {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_CentreOfSymmetry {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp;
class StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp : public StepRepr_CompShAspAndDatumFeatAndShAsp {
	public:
		%feature("compactdefaultargs") StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp;
		%feature("autodoc", "	:rtype: None
") StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp;
		 StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp ();
};


%extend StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp::Handle_StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp;
class Handle_StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp : public Handle_StepRepr_CompShAspAndDatumFeatAndShAsp {

    public:
        // constructors
        Handle_StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp();
        Handle_StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp(const Handle_StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp &aHandle);
        Handle_StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp(const StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp {
    StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp* _get_reference() {
    return (StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp*)$self->get();
    }
};

%extend Handle_StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_CompGroupShAspAndCompShAspAndDatumFeatAndShAsp {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_CompositeGroupShapeAspect;
class StepRepr_CompositeGroupShapeAspect : public StepRepr_CompositeShapeAspect {
	public:
		%feature("compactdefaultargs") StepRepr_CompositeGroupShapeAspect;
		%feature("autodoc", "	:rtype: None
") StepRepr_CompositeGroupShapeAspect;
		 StepRepr_CompositeGroupShapeAspect ();
};


%extend StepRepr_CompositeGroupShapeAspect {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_CompositeGroupShapeAspect(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_CompositeGroupShapeAspect::Handle_StepRepr_CompositeGroupShapeAspect %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_CompositeGroupShapeAspect;
class Handle_StepRepr_CompositeGroupShapeAspect : public Handle_StepRepr_CompositeShapeAspect {

    public:
        // constructors
        Handle_StepRepr_CompositeGroupShapeAspect();
        Handle_StepRepr_CompositeGroupShapeAspect(const Handle_StepRepr_CompositeGroupShapeAspect &aHandle);
        Handle_StepRepr_CompositeGroupShapeAspect(const StepRepr_CompositeGroupShapeAspect *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_CompositeGroupShapeAspect DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_CompositeGroupShapeAspect {
    StepRepr_CompositeGroupShapeAspect* _get_reference() {
    return (StepRepr_CompositeGroupShapeAspect*)$self->get();
    }
};

%extend Handle_StepRepr_CompositeGroupShapeAspect {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_CompositeGroupShapeAspect {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ContinuosShapeAspect;
class StepRepr_ContinuosShapeAspect : public StepRepr_CompositeShapeAspect {
	public:
		%feature("compactdefaultargs") StepRepr_ContinuosShapeAspect;
		%feature("autodoc", "	:rtype: None
") StepRepr_ContinuosShapeAspect;
		 StepRepr_ContinuosShapeAspect ();
};


%extend StepRepr_ContinuosShapeAspect {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ContinuosShapeAspect(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ContinuosShapeAspect::Handle_StepRepr_ContinuosShapeAspect %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ContinuosShapeAspect;
class Handle_StepRepr_ContinuosShapeAspect : public Handle_StepRepr_CompositeShapeAspect {

    public:
        // constructors
        Handle_StepRepr_ContinuosShapeAspect();
        Handle_StepRepr_ContinuosShapeAspect(const Handle_StepRepr_ContinuosShapeAspect &aHandle);
        Handle_StepRepr_ContinuosShapeAspect(const StepRepr_ContinuosShapeAspect *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ContinuosShapeAspect DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ContinuosShapeAspect {
    StepRepr_ContinuosShapeAspect* _get_reference() {
    return (StepRepr_ContinuosShapeAspect*)$self->get();
    }
};

%extend Handle_StepRepr_ContinuosShapeAspect {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ContinuosShapeAspect {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_Extension;
class StepRepr_Extension : public StepRepr_DerivedShapeAspect {
	public:
		%feature("compactdefaultargs") StepRepr_Extension;
		%feature("autodoc", "	:rtype: None
") StepRepr_Extension;
		 StepRepr_Extension ();
};


%extend StepRepr_Extension {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_Extension(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_Extension::Handle_StepRepr_Extension %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_Extension;
class Handle_StepRepr_Extension : public Handle_StepRepr_DerivedShapeAspect {

    public:
        // constructors
        Handle_StepRepr_Extension();
        Handle_StepRepr_Extension(const Handle_StepRepr_Extension &aHandle);
        Handle_StepRepr_Extension(const StepRepr_Extension *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_Extension DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_Extension {
    StepRepr_Extension* _get_reference() {
    return (StepRepr_Extension*)$self->get();
    }
};

%extend Handle_StepRepr_Extension {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_Extension {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_GeometricAlignment;
class StepRepr_GeometricAlignment : public StepRepr_DerivedShapeAspect {
	public:
		%feature("compactdefaultargs") StepRepr_GeometricAlignment;
		%feature("autodoc", "	:rtype: None
") StepRepr_GeometricAlignment;
		 StepRepr_GeometricAlignment ();
};


%extend StepRepr_GeometricAlignment {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_GeometricAlignment(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_GeometricAlignment::Handle_StepRepr_GeometricAlignment %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_GeometricAlignment;
class Handle_StepRepr_GeometricAlignment : public Handle_StepRepr_DerivedShapeAspect {

    public:
        // constructors
        Handle_StepRepr_GeometricAlignment();
        Handle_StepRepr_GeometricAlignment(const Handle_StepRepr_GeometricAlignment &aHandle);
        Handle_StepRepr_GeometricAlignment(const StepRepr_GeometricAlignment *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_GeometricAlignment DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_GeometricAlignment {
    StepRepr_GeometricAlignment* _get_reference() {
    return (StepRepr_GeometricAlignment*)$self->get();
    }
};

%extend Handle_StepRepr_GeometricAlignment {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_GeometricAlignment {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_NextAssemblyUsageOccurrence;
class StepRepr_NextAssemblyUsageOccurrence : public StepRepr_AssemblyComponentUsage {
	public:
		%feature("compactdefaultargs") StepRepr_NextAssemblyUsageOccurrence;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepRepr_NextAssemblyUsageOccurrence;
		 StepRepr_NextAssemblyUsageOccurrence ();
};


%extend StepRepr_NextAssemblyUsageOccurrence {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_NextAssemblyUsageOccurrence(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_NextAssemblyUsageOccurrence::Handle_StepRepr_NextAssemblyUsageOccurrence %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_NextAssemblyUsageOccurrence;
class Handle_StepRepr_NextAssemblyUsageOccurrence : public Handle_StepRepr_AssemblyComponentUsage {

    public:
        // constructors
        Handle_StepRepr_NextAssemblyUsageOccurrence();
        Handle_StepRepr_NextAssemblyUsageOccurrence(const Handle_StepRepr_NextAssemblyUsageOccurrence &aHandle);
        Handle_StepRepr_NextAssemblyUsageOccurrence(const StepRepr_NextAssemblyUsageOccurrence *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_NextAssemblyUsageOccurrence DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_NextAssemblyUsageOccurrence {
    StepRepr_NextAssemblyUsageOccurrence* _get_reference() {
    return (StepRepr_NextAssemblyUsageOccurrence*)$self->get();
    }
};

%extend Handle_StepRepr_NextAssemblyUsageOccurrence {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_NextAssemblyUsageOccurrence {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ParallelOffset;
class StepRepr_ParallelOffset : public StepRepr_DerivedShapeAspect {
	public:
		%feature("compactdefaultargs") StepRepr_ParallelOffset;
		%feature("autodoc", "	:rtype: None
") StepRepr_ParallelOffset;
		 StepRepr_ParallelOffset ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:param theDescription:
	:type theDescription: Handle_TCollection_HAsciiString &
	:param theOfShape:
	:type theOfShape: Handle_StepRepr_ProductDefinitionShape &
	:param theProductDefinitional:
	:type theProductDefinitional: StepData_Logical
	:param theOffset:
	:type theOffset: Handle_StepBasic_MeasureWithUnit &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theName,const Handle_TCollection_HAsciiString & theDescription,const Handle_StepRepr_ProductDefinitionShape & theOfShape,const StepData_Logical theProductDefinitional,const Handle_StepBasic_MeasureWithUnit & theOffset);
		%feature("compactdefaultargs") Offset;
		%feature("autodoc", "	* Returns field Offset

	:rtype: inline Handle_StepBasic_MeasureWithUnit
") Offset;
		inline Handle_StepBasic_MeasureWithUnit Offset ();
		%feature("compactdefaultargs") SetOffset;
		%feature("autodoc", "	* Set field Offset

	:param theOffset:
	:type theOffset: Handle_StepBasic_MeasureWithUnit &
	:rtype: inline void
") SetOffset;
		inline void SetOffset (const Handle_StepBasic_MeasureWithUnit & theOffset);
};


%extend StepRepr_ParallelOffset {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ParallelOffset(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ParallelOffset::Handle_StepRepr_ParallelOffset %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ParallelOffset;
class Handle_StepRepr_ParallelOffset : public Handle_StepRepr_DerivedShapeAspect {

    public:
        // constructors
        Handle_StepRepr_ParallelOffset();
        Handle_StepRepr_ParallelOffset(const Handle_StepRepr_ParallelOffset &aHandle);
        Handle_StepRepr_ParallelOffset(const StepRepr_ParallelOffset *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ParallelOffset DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ParallelOffset {
    StepRepr_ParallelOffset* _get_reference() {
    return (StepRepr_ParallelOffset*)$self->get();
    }
};

%extend Handle_StepRepr_ParallelOffset {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ParallelOffset {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_PerpendicularTo;
class StepRepr_PerpendicularTo : public StepRepr_DerivedShapeAspect {
	public:
		%feature("compactdefaultargs") StepRepr_PerpendicularTo;
		%feature("autodoc", "	:rtype: None
") StepRepr_PerpendicularTo;
		 StepRepr_PerpendicularTo ();
};


%extend StepRepr_PerpendicularTo {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_PerpendicularTo(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_PerpendicularTo::Handle_StepRepr_PerpendicularTo %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_PerpendicularTo;
class Handle_StepRepr_PerpendicularTo : public Handle_StepRepr_DerivedShapeAspect {

    public:
        // constructors
        Handle_StepRepr_PerpendicularTo();
        Handle_StepRepr_PerpendicularTo(const Handle_StepRepr_PerpendicularTo &aHandle);
        Handle_StepRepr_PerpendicularTo(const StepRepr_PerpendicularTo *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_PerpendicularTo DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_PerpendicularTo {
    StepRepr_PerpendicularTo* _get_reference() {
    return (StepRepr_PerpendicularTo*)$self->get();
    }
};

%extend Handle_StepRepr_PerpendicularTo {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_PerpendicularTo {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_PromissoryUsageOccurrence;
class StepRepr_PromissoryUsageOccurrence : public StepRepr_AssemblyComponentUsage {
	public:
		%feature("compactdefaultargs") StepRepr_PromissoryUsageOccurrence;
		%feature("autodoc", "	:rtype: None
") StepRepr_PromissoryUsageOccurrence;
		 StepRepr_PromissoryUsageOccurrence ();
};


%extend StepRepr_PromissoryUsageOccurrence {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_PromissoryUsageOccurrence(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_PromissoryUsageOccurrence::Handle_StepRepr_PromissoryUsageOccurrence %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_PromissoryUsageOccurrence;
class Handle_StepRepr_PromissoryUsageOccurrence : public Handle_StepRepr_AssemblyComponentUsage {

    public:
        // constructors
        Handle_StepRepr_PromissoryUsageOccurrence();
        Handle_StepRepr_PromissoryUsageOccurrence(const Handle_StepRepr_PromissoryUsageOccurrence &aHandle);
        Handle_StepRepr_PromissoryUsageOccurrence(const StepRepr_PromissoryUsageOccurrence *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_PromissoryUsageOccurrence DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_PromissoryUsageOccurrence {
    StepRepr_PromissoryUsageOccurrence* _get_reference() {
    return (StepRepr_PromissoryUsageOccurrence*)$self->get();
    }
};

%extend Handle_StepRepr_PromissoryUsageOccurrence {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_PromissoryUsageOccurrence {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_QuantifiedAssemblyComponentUsage;
class StepRepr_QuantifiedAssemblyComponentUsage : public StepRepr_AssemblyComponentUsage {
	public:
		%feature("compactdefaultargs") StepRepr_QuantifiedAssemblyComponentUsage;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepRepr_QuantifiedAssemblyComponentUsage;
		 StepRepr_QuantifiedAssemblyComponentUsage ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aProductDefinitionRelationship_Id:
	:type aProductDefinitionRelationship_Id: Handle_TCollection_HAsciiString &
	:param aProductDefinitionRelationship_Name:
	:type aProductDefinitionRelationship_Name: Handle_TCollection_HAsciiString &
	:param hasProductDefinitionRelationship_Description:
	:type hasProductDefinitionRelationship_Description: bool
	:param aProductDefinitionRelationship_Description:
	:type aProductDefinitionRelationship_Description: Handle_TCollection_HAsciiString &
	:param aProductDefinitionRelationship_RelatingProductDefinition:
	:type aProductDefinitionRelationship_RelatingProductDefinition: Handle_StepBasic_ProductDefinition &
	:param aProductDefinitionRelationship_RelatedProductDefinition:
	:type aProductDefinitionRelationship_RelatedProductDefinition: Handle_StepBasic_ProductDefinition &
	:param hasAssemblyComponentUsage_ReferenceDesignator:
	:type hasAssemblyComponentUsage_ReferenceDesignator: bool
	:param aAssemblyComponentUsage_ReferenceDesignator:
	:type aAssemblyComponentUsage_ReferenceDesignator: Handle_TCollection_HAsciiString &
	:param aQuantity:
	:type aQuantity: Handle_StepBasic_MeasureWithUnit &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aProductDefinitionRelationship_Id,const Handle_TCollection_HAsciiString & aProductDefinitionRelationship_Name,const Standard_Boolean hasProductDefinitionRelationship_Description,const Handle_TCollection_HAsciiString & aProductDefinitionRelationship_Description,const Handle_StepBasic_ProductDefinition & aProductDefinitionRelationship_RelatingProductDefinition,const Handle_StepBasic_ProductDefinition & aProductDefinitionRelationship_RelatedProductDefinition,const Standard_Boolean hasAssemblyComponentUsage_ReferenceDesignator,const Handle_TCollection_HAsciiString & aAssemblyComponentUsage_ReferenceDesignator,const Handle_StepBasic_MeasureWithUnit & aQuantity);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aProductDefinitionRelationship_Id:
	:type aProductDefinitionRelationship_Id: Handle_TCollection_HAsciiString &
	:param aProductDefinitionRelationship_Name:
	:type aProductDefinitionRelationship_Name: Handle_TCollection_HAsciiString &
	:param hasProductDefinitionRelationship_Description:
	:type hasProductDefinitionRelationship_Description: bool
	:param aProductDefinitionRelationship_Description:
	:type aProductDefinitionRelationship_Description: Handle_TCollection_HAsciiString &
	:param aProductDefinitionRelationship_RelatingProductDefinition:
	:type aProductDefinitionRelationship_RelatingProductDefinition: StepBasic_ProductDefinitionOrReference &
	:param aProductDefinitionRelationship_RelatedProductDefinition:
	:type aProductDefinitionRelationship_RelatedProductDefinition: StepBasic_ProductDefinitionOrReference &
	:param hasAssemblyComponentUsage_ReferenceDesignator:
	:type hasAssemblyComponentUsage_ReferenceDesignator: bool
	:param aAssemblyComponentUsage_ReferenceDesignator:
	:type aAssemblyComponentUsage_ReferenceDesignator: Handle_TCollection_HAsciiString &
	:param aQuantity:
	:type aQuantity: Handle_StepBasic_MeasureWithUnit &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aProductDefinitionRelationship_Id,const Handle_TCollection_HAsciiString & aProductDefinitionRelationship_Name,const Standard_Boolean hasProductDefinitionRelationship_Description,const Handle_TCollection_HAsciiString & aProductDefinitionRelationship_Description,const StepBasic_ProductDefinitionOrReference & aProductDefinitionRelationship_RelatingProductDefinition,const StepBasic_ProductDefinitionOrReference & aProductDefinitionRelationship_RelatedProductDefinition,const Standard_Boolean hasAssemblyComponentUsage_ReferenceDesignator,const Handle_TCollection_HAsciiString & aAssemblyComponentUsage_ReferenceDesignator,const Handle_StepBasic_MeasureWithUnit & aQuantity);
		%feature("compactdefaultargs") Quantity;
		%feature("autodoc", "	* Returns field Quantity

	:rtype: Handle_StepBasic_MeasureWithUnit
") Quantity;
		Handle_StepBasic_MeasureWithUnit Quantity ();
		%feature("compactdefaultargs") SetQuantity;
		%feature("autodoc", "	* Set field Quantity

	:param Quantity:
	:type Quantity: Handle_StepBasic_MeasureWithUnit &
	:rtype: None
") SetQuantity;
		void SetQuantity (const Handle_StepBasic_MeasureWithUnit & Quantity);
};


%extend StepRepr_QuantifiedAssemblyComponentUsage {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_QuantifiedAssemblyComponentUsage(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_QuantifiedAssemblyComponentUsage::Handle_StepRepr_QuantifiedAssemblyComponentUsage %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_QuantifiedAssemblyComponentUsage;
class Handle_StepRepr_QuantifiedAssemblyComponentUsage : public Handle_StepRepr_AssemblyComponentUsage {

    public:
        // constructors
        Handle_StepRepr_QuantifiedAssemblyComponentUsage();
        Handle_StepRepr_QuantifiedAssemblyComponentUsage(const Handle_StepRepr_QuantifiedAssemblyComponentUsage &aHandle);
        Handle_StepRepr_QuantifiedAssemblyComponentUsage(const StepRepr_QuantifiedAssemblyComponentUsage *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_QuantifiedAssemblyComponentUsage DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_QuantifiedAssemblyComponentUsage {
    StepRepr_QuantifiedAssemblyComponentUsage* _get_reference() {
    return (StepRepr_QuantifiedAssemblyComponentUsage*)$self->get();
    }
};

%extend Handle_StepRepr_QuantifiedAssemblyComponentUsage {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_QuantifiedAssemblyComponentUsage {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ReprItemAndLengthMeasureWithUnit;
class StepRepr_ReprItemAndLengthMeasureWithUnit : public StepRepr_ReprItemAndMeasureWithUnit {
	public:
		%feature("compactdefaultargs") StepRepr_ReprItemAndLengthMeasureWithUnit;
		%feature("autodoc", "	:rtype: None
") StepRepr_ReprItemAndLengthMeasureWithUnit;
		 StepRepr_ReprItemAndLengthMeasureWithUnit ();
		%feature("compactdefaultargs") SetLengthMeasureWithUnit;
		%feature("autodoc", "	:param aLMWU:
	:type aLMWU: Handle_StepBasic_LengthMeasureWithUnit &
	:rtype: None
") SetLengthMeasureWithUnit;
		void SetLengthMeasureWithUnit (const Handle_StepBasic_LengthMeasureWithUnit & aLMWU);
		%feature("compactdefaultargs") GetLengthMeasureWithUnit;
		%feature("autodoc", "	:rtype: Handle_StepBasic_LengthMeasureWithUnit
") GetLengthMeasureWithUnit;
		Handle_StepBasic_LengthMeasureWithUnit GetLengthMeasureWithUnit ();
};


%extend StepRepr_ReprItemAndLengthMeasureWithUnit {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ReprItemAndLengthMeasureWithUnit(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ReprItemAndLengthMeasureWithUnit::Handle_StepRepr_ReprItemAndLengthMeasureWithUnit %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ReprItemAndLengthMeasureWithUnit;
class Handle_StepRepr_ReprItemAndLengthMeasureWithUnit : public Handle_StepRepr_ReprItemAndMeasureWithUnit {

    public:
        // constructors
        Handle_StepRepr_ReprItemAndLengthMeasureWithUnit();
        Handle_StepRepr_ReprItemAndLengthMeasureWithUnit(const Handle_StepRepr_ReprItemAndLengthMeasureWithUnit &aHandle);
        Handle_StepRepr_ReprItemAndLengthMeasureWithUnit(const StepRepr_ReprItemAndLengthMeasureWithUnit *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ReprItemAndLengthMeasureWithUnit DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ReprItemAndLengthMeasureWithUnit {
    StepRepr_ReprItemAndLengthMeasureWithUnit* _get_reference() {
    return (StepRepr_ReprItemAndLengthMeasureWithUnit*)$self->get();
    }
};

%extend Handle_StepRepr_ReprItemAndLengthMeasureWithUnit {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ReprItemAndLengthMeasureWithUnit {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ReprItemAndMeasureWithUnitAndQRI;
class StepRepr_ReprItemAndMeasureWithUnitAndQRI : public StepRepr_ReprItemAndMeasureWithUnit {
	public:
		%feature("compactdefaultargs") StepRepr_ReprItemAndMeasureWithUnitAndQRI;
		%feature("autodoc", "	:rtype: None
") StepRepr_ReprItemAndMeasureWithUnitAndQRI;
		 StepRepr_ReprItemAndMeasureWithUnitAndQRI ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aMWU:
	:type aMWU: Handle_StepBasic_MeasureWithUnit &
	:param aRI:
	:type aRI: Handle_StepRepr_RepresentationItem &
	:param aQRI:
	:type aQRI: Handle_StepShape_QualifiedRepresentationItem
	:rtype: None
") Init;
		void Init (const Handle_StepBasic_MeasureWithUnit & aMWU,const Handle_StepRepr_RepresentationItem & aRI,const Handle_StepShape_QualifiedRepresentationItem aQRI);
		%feature("compactdefaultargs") SetQualifiedRepresentationItem;
		%feature("autodoc", "	:param aQRI:
	:type aQRI: Handle_StepShape_QualifiedRepresentationItem &
	:rtype: None
") SetQualifiedRepresentationItem;
		void SetQualifiedRepresentationItem (const Handle_StepShape_QualifiedRepresentationItem & aQRI);
		%feature("compactdefaultargs") GetQualifiedRepresentationItem;
		%feature("autodoc", "	:rtype: Handle_StepShape_QualifiedRepresentationItem
") GetQualifiedRepresentationItem;
		Handle_StepShape_QualifiedRepresentationItem GetQualifiedRepresentationItem ();
};


%extend StepRepr_ReprItemAndMeasureWithUnitAndQRI {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ReprItemAndMeasureWithUnitAndQRI(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ReprItemAndMeasureWithUnitAndQRI::Handle_StepRepr_ReprItemAndMeasureWithUnitAndQRI %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ReprItemAndMeasureWithUnitAndQRI;
class Handle_StepRepr_ReprItemAndMeasureWithUnitAndQRI : public Handle_StepRepr_ReprItemAndMeasureWithUnit {

    public:
        // constructors
        Handle_StepRepr_ReprItemAndMeasureWithUnitAndQRI();
        Handle_StepRepr_ReprItemAndMeasureWithUnitAndQRI(const Handle_StepRepr_ReprItemAndMeasureWithUnitAndQRI &aHandle);
        Handle_StepRepr_ReprItemAndMeasureWithUnitAndQRI(const StepRepr_ReprItemAndMeasureWithUnitAndQRI *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ReprItemAndMeasureWithUnitAndQRI DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ReprItemAndMeasureWithUnitAndQRI {
    StepRepr_ReprItemAndMeasureWithUnitAndQRI* _get_reference() {
    return (StepRepr_ReprItemAndMeasureWithUnitAndQRI*)$self->get();
    }
};

%extend Handle_StepRepr_ReprItemAndMeasureWithUnitAndQRI {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ReprItemAndMeasureWithUnitAndQRI {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ReprItemAndPlaneAngleMeasureWithUnit;
class StepRepr_ReprItemAndPlaneAngleMeasureWithUnit : public StepRepr_ReprItemAndMeasureWithUnit {
	public:
		%feature("compactdefaultargs") StepRepr_ReprItemAndPlaneAngleMeasureWithUnit;
		%feature("autodoc", "	:rtype: None
") StepRepr_ReprItemAndPlaneAngleMeasureWithUnit;
		 StepRepr_ReprItemAndPlaneAngleMeasureWithUnit ();
		%feature("compactdefaultargs") SetPlaneAngleMeasureWithUnit;
		%feature("autodoc", "	:param aLMWU:
	:type aLMWU: Handle_StepBasic_PlaneAngleMeasureWithUnit &
	:rtype: None
") SetPlaneAngleMeasureWithUnit;
		void SetPlaneAngleMeasureWithUnit (const Handle_StepBasic_PlaneAngleMeasureWithUnit & aLMWU);
		%feature("compactdefaultargs") GetPlaneAngleMeasureWithUnit;
		%feature("autodoc", "	:rtype: Handle_StepBasic_PlaneAngleMeasureWithUnit
") GetPlaneAngleMeasureWithUnit;
		Handle_StepBasic_PlaneAngleMeasureWithUnit GetPlaneAngleMeasureWithUnit ();
};


%extend StepRepr_ReprItemAndPlaneAngleMeasureWithUnit {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnit(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnit::Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnit %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnit;
class Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnit : public Handle_StepRepr_ReprItemAndMeasureWithUnit {

    public:
        // constructors
        Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnit();
        Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnit(const Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnit &aHandle);
        Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnit(const StepRepr_ReprItemAndPlaneAngleMeasureWithUnit *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnit DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnit {
    StepRepr_ReprItemAndPlaneAngleMeasureWithUnit* _get_reference() {
    return (StepRepr_ReprItemAndPlaneAngleMeasureWithUnit*)$self->get();
    }
};

%extend Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnit {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ReprItemAndPlaneAngleMeasureWithUnit {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_RepresentationRelationshipWithTransformation;
class StepRepr_RepresentationRelationshipWithTransformation : public StepRepr_ShapeRepresentationRelationship {
	public:
		%feature("compactdefaultargs") StepRepr_RepresentationRelationshipWithTransformation;
		%feature("autodoc", "	:rtype: None
") StepRepr_RepresentationRelationshipWithTransformation;
		 StepRepr_RepresentationRelationshipWithTransformation ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aRep1:
	:type aRep1: Handle_StepRepr_Representation &
	:param aRep2:
	:type aRep2: Handle_StepRepr_Representation &
	:param aTransf:
	:type aTransf: StepRepr_Transformation &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription,const Handle_StepRepr_Representation & aRep1,const Handle_StepRepr_Representation & aRep2,const StepRepr_Transformation & aTransf);
		%feature("compactdefaultargs") TransformationOperator;
		%feature("autodoc", "	:rtype: StepRepr_Transformation
") TransformationOperator;
		StepRepr_Transformation TransformationOperator ();
		%feature("compactdefaultargs") SetTransformationOperator;
		%feature("autodoc", "	:param aTrans:
	:type aTrans: StepRepr_Transformation &
	:rtype: None
") SetTransformationOperator;
		void SetTransformationOperator (const StepRepr_Transformation & aTrans);
};


%extend StepRepr_RepresentationRelationshipWithTransformation {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_RepresentationRelationshipWithTransformation(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_RepresentationRelationshipWithTransformation::Handle_StepRepr_RepresentationRelationshipWithTransformation %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_RepresentationRelationshipWithTransformation;
class Handle_StepRepr_RepresentationRelationshipWithTransformation : public Handle_StepRepr_ShapeRepresentationRelationship {

    public:
        // constructors
        Handle_StepRepr_RepresentationRelationshipWithTransformation();
        Handle_StepRepr_RepresentationRelationshipWithTransformation(const Handle_StepRepr_RepresentationRelationshipWithTransformation &aHandle);
        Handle_StepRepr_RepresentationRelationshipWithTransformation(const StepRepr_RepresentationRelationshipWithTransformation *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_RepresentationRelationshipWithTransformation DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_RepresentationRelationshipWithTransformation {
    StepRepr_RepresentationRelationshipWithTransformation* _get_reference() {
    return (StepRepr_RepresentationRelationshipWithTransformation*)$self->get();
    }
};

%extend Handle_StepRepr_RepresentationRelationshipWithTransformation {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_RepresentationRelationshipWithTransformation {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_SpecifiedHigherUsageOccurrence;
class StepRepr_SpecifiedHigherUsageOccurrence : public StepRepr_AssemblyComponentUsage {
	public:
		%feature("compactdefaultargs") StepRepr_SpecifiedHigherUsageOccurrence;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepRepr_SpecifiedHigherUsageOccurrence;
		 StepRepr_SpecifiedHigherUsageOccurrence ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aProductDefinitionRelationship_Id:
	:type aProductDefinitionRelationship_Id: Handle_TCollection_HAsciiString &
	:param aProductDefinitionRelationship_Name:
	:type aProductDefinitionRelationship_Name: Handle_TCollection_HAsciiString &
	:param hasProductDefinitionRelationship_Description:
	:type hasProductDefinitionRelationship_Description: bool
	:param aProductDefinitionRelationship_Description:
	:type aProductDefinitionRelationship_Description: Handle_TCollection_HAsciiString &
	:param aProductDefinitionRelationship_RelatingProductDefinition:
	:type aProductDefinitionRelationship_RelatingProductDefinition: Handle_StepBasic_ProductDefinition &
	:param aProductDefinitionRelationship_RelatedProductDefinition:
	:type aProductDefinitionRelationship_RelatedProductDefinition: Handle_StepBasic_ProductDefinition &
	:param hasAssemblyComponentUsage_ReferenceDesignator:
	:type hasAssemblyComponentUsage_ReferenceDesignator: bool
	:param aAssemblyComponentUsage_ReferenceDesignator:
	:type aAssemblyComponentUsage_ReferenceDesignator: Handle_TCollection_HAsciiString &
	:param aUpperUsage:
	:type aUpperUsage: Handle_StepRepr_AssemblyComponentUsage &
	:param aNextUsage:
	:type aNextUsage: Handle_StepRepr_NextAssemblyUsageOccurrence &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aProductDefinitionRelationship_Id,const Handle_TCollection_HAsciiString & aProductDefinitionRelationship_Name,const Standard_Boolean hasProductDefinitionRelationship_Description,const Handle_TCollection_HAsciiString & aProductDefinitionRelationship_Description,const Handle_StepBasic_ProductDefinition & aProductDefinitionRelationship_RelatingProductDefinition,const Handle_StepBasic_ProductDefinition & aProductDefinitionRelationship_RelatedProductDefinition,const Standard_Boolean hasAssemblyComponentUsage_ReferenceDesignator,const Handle_TCollection_HAsciiString & aAssemblyComponentUsage_ReferenceDesignator,const Handle_StepRepr_AssemblyComponentUsage & aUpperUsage,const Handle_StepRepr_NextAssemblyUsageOccurrence & aNextUsage);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aProductDefinitionRelationship_Id:
	:type aProductDefinitionRelationship_Id: Handle_TCollection_HAsciiString &
	:param aProductDefinitionRelationship_Name:
	:type aProductDefinitionRelationship_Name: Handle_TCollection_HAsciiString &
	:param hasProductDefinitionRelationship_Description:
	:type hasProductDefinitionRelationship_Description: bool
	:param aProductDefinitionRelationship_Description:
	:type aProductDefinitionRelationship_Description: Handle_TCollection_HAsciiString &
	:param aProductDefinitionRelationship_RelatingProductDefinition:
	:type aProductDefinitionRelationship_RelatingProductDefinition: StepBasic_ProductDefinitionOrReference &
	:param aProductDefinitionRelationship_RelatedProductDefinition:
	:type aProductDefinitionRelationship_RelatedProductDefinition: StepBasic_ProductDefinitionOrReference &
	:param hasAssemblyComponentUsage_ReferenceDesignator:
	:type hasAssemblyComponentUsage_ReferenceDesignator: bool
	:param aAssemblyComponentUsage_ReferenceDesignator:
	:type aAssemblyComponentUsage_ReferenceDesignator: Handle_TCollection_HAsciiString &
	:param aUpperUsage:
	:type aUpperUsage: Handle_StepRepr_AssemblyComponentUsage &
	:param aNextUsage:
	:type aNextUsage: Handle_StepRepr_NextAssemblyUsageOccurrence &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aProductDefinitionRelationship_Id,const Handle_TCollection_HAsciiString & aProductDefinitionRelationship_Name,const Standard_Boolean hasProductDefinitionRelationship_Description,const Handle_TCollection_HAsciiString & aProductDefinitionRelationship_Description,const StepBasic_ProductDefinitionOrReference & aProductDefinitionRelationship_RelatingProductDefinition,const StepBasic_ProductDefinitionOrReference & aProductDefinitionRelationship_RelatedProductDefinition,const Standard_Boolean hasAssemblyComponentUsage_ReferenceDesignator,const Handle_TCollection_HAsciiString & aAssemblyComponentUsage_ReferenceDesignator,const Handle_StepRepr_AssemblyComponentUsage & aUpperUsage,const Handle_StepRepr_NextAssemblyUsageOccurrence & aNextUsage);
		%feature("compactdefaultargs") UpperUsage;
		%feature("autodoc", "	* Returns field UpperUsage

	:rtype: Handle_StepRepr_AssemblyComponentUsage
") UpperUsage;
		Handle_StepRepr_AssemblyComponentUsage UpperUsage ();
		%feature("compactdefaultargs") SetUpperUsage;
		%feature("autodoc", "	* Set field UpperUsage

	:param UpperUsage:
	:type UpperUsage: Handle_StepRepr_AssemblyComponentUsage &
	:rtype: None
") SetUpperUsage;
		void SetUpperUsage (const Handle_StepRepr_AssemblyComponentUsage & UpperUsage);
		%feature("compactdefaultargs") NextUsage;
		%feature("autodoc", "	* Returns field NextUsage

	:rtype: Handle_StepRepr_NextAssemblyUsageOccurrence
") NextUsage;
		Handle_StepRepr_NextAssemblyUsageOccurrence NextUsage ();
		%feature("compactdefaultargs") SetNextUsage;
		%feature("autodoc", "	* Set field NextUsage

	:param NextUsage:
	:type NextUsage: Handle_StepRepr_NextAssemblyUsageOccurrence &
	:rtype: None
") SetNextUsage;
		void SetNextUsage (const Handle_StepRepr_NextAssemblyUsageOccurrence & NextUsage);
};


%extend StepRepr_SpecifiedHigherUsageOccurrence {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_SpecifiedHigherUsageOccurrence(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_SpecifiedHigherUsageOccurrence::Handle_StepRepr_SpecifiedHigherUsageOccurrence %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_SpecifiedHigherUsageOccurrence;
class Handle_StepRepr_SpecifiedHigherUsageOccurrence : public Handle_StepRepr_AssemblyComponentUsage {

    public:
        // constructors
        Handle_StepRepr_SpecifiedHigherUsageOccurrence();
        Handle_StepRepr_SpecifiedHigherUsageOccurrence(const Handle_StepRepr_SpecifiedHigherUsageOccurrence &aHandle);
        Handle_StepRepr_SpecifiedHigherUsageOccurrence(const StepRepr_SpecifiedHigherUsageOccurrence *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_SpecifiedHigherUsageOccurrence DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_SpecifiedHigherUsageOccurrence {
    StepRepr_SpecifiedHigherUsageOccurrence* _get_reference() {
    return (StepRepr_SpecifiedHigherUsageOccurrence*)$self->get();
    }
};

%extend Handle_StepRepr_SpecifiedHigherUsageOccurrence {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_SpecifiedHigherUsageOccurrence {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_Tangent;
class StepRepr_Tangent : public StepRepr_DerivedShapeAspect {
	public:
		%feature("compactdefaultargs") StepRepr_Tangent;
		%feature("autodoc", "	:rtype: None
") StepRepr_Tangent;
		 StepRepr_Tangent ();
};


%extend StepRepr_Tangent {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_Tangent(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_Tangent::Handle_StepRepr_Tangent %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_Tangent;
class Handle_StepRepr_Tangent : public Handle_StepRepr_DerivedShapeAspect {

    public:
        // constructors
        Handle_StepRepr_Tangent();
        Handle_StepRepr_Tangent(const Handle_StepRepr_Tangent &aHandle);
        Handle_StepRepr_Tangent(const StepRepr_Tangent *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_Tangent DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_Tangent {
    StepRepr_Tangent* _get_reference() {
    return (StepRepr_Tangent*)$self->get();
    }
};

%extend Handle_StepRepr_Tangent {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_Tangent {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ValueRange;
class StepRepr_ValueRange : public StepRepr_CompoundRepresentationItem {
	public:
		%feature("compactdefaultargs") StepRepr_ValueRange;
		%feature("autodoc", "	:rtype: None
") StepRepr_ValueRange;
		 StepRepr_ValueRange ();
};


%extend StepRepr_ValueRange {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ValueRange(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ValueRange::Handle_StepRepr_ValueRange %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ValueRange;
class Handle_StepRepr_ValueRange : public Handle_StepRepr_CompoundRepresentationItem {

    public:
        // constructors
        Handle_StepRepr_ValueRange();
        Handle_StepRepr_ValueRange(const Handle_StepRepr_ValueRange &aHandle);
        Handle_StepRepr_ValueRange(const StepRepr_ValueRange *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ValueRange DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ValueRange {
    StepRepr_ValueRange* _get_reference() {
    return (StepRepr_ValueRange*)$self->get();
    }
};

%extend Handle_StepRepr_ValueRange {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ValueRange {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_AllAroundShapeAspect;
class StepRepr_AllAroundShapeAspect : public StepRepr_ContinuosShapeAspect {
	public:
		%feature("compactdefaultargs") StepRepr_AllAroundShapeAspect;
		%feature("autodoc", "	:rtype: None
") StepRepr_AllAroundShapeAspect;
		 StepRepr_AllAroundShapeAspect ();
};


%extend StepRepr_AllAroundShapeAspect {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_AllAroundShapeAspect(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_AllAroundShapeAspect::Handle_StepRepr_AllAroundShapeAspect %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_AllAroundShapeAspect;
class Handle_StepRepr_AllAroundShapeAspect : public Handle_StepRepr_ContinuosShapeAspect {

    public:
        // constructors
        Handle_StepRepr_AllAroundShapeAspect();
        Handle_StepRepr_AllAroundShapeAspect(const Handle_StepRepr_AllAroundShapeAspect &aHandle);
        Handle_StepRepr_AllAroundShapeAspect(const StepRepr_AllAroundShapeAspect *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_AllAroundShapeAspect DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_AllAroundShapeAspect {
    StepRepr_AllAroundShapeAspect* _get_reference() {
    return (StepRepr_AllAroundShapeAspect*)$self->get();
    }
};

%extend Handle_StepRepr_AllAroundShapeAspect {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_AllAroundShapeAspect {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_BetweenShapeAspect;
class StepRepr_BetweenShapeAspect : public StepRepr_ContinuosShapeAspect {
	public:
		%feature("compactdefaultargs") StepRepr_BetweenShapeAspect;
		%feature("autodoc", "	:rtype: None
") StepRepr_BetweenShapeAspect;
		 StepRepr_BetweenShapeAspect ();
};


%extend StepRepr_BetweenShapeAspect {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_BetweenShapeAspect(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_BetweenShapeAspect::Handle_StepRepr_BetweenShapeAspect %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_BetweenShapeAspect;
class Handle_StepRepr_BetweenShapeAspect : public Handle_StepRepr_ContinuosShapeAspect {

    public:
        // constructors
        Handle_StepRepr_BetweenShapeAspect();
        Handle_StepRepr_BetweenShapeAspect(const Handle_StepRepr_BetweenShapeAspect &aHandle);
        Handle_StepRepr_BetweenShapeAspect(const StepRepr_BetweenShapeAspect *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_BetweenShapeAspect DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_BetweenShapeAspect {
    StepRepr_BetweenShapeAspect* _get_reference() {
    return (StepRepr_BetweenShapeAspect*)$self->get();
    }
};

%extend Handle_StepRepr_BetweenShapeAspect {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_BetweenShapeAspect {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI;
class StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI : public StepRepr_ReprItemAndMeasureWithUnitAndQRI {
	public:
		%feature("compactdefaultargs") StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI;
		%feature("autodoc", "	:rtype: None
") StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI;
		 StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI ();
		%feature("compactdefaultargs") SetLengthMeasureWithUnit;
		%feature("autodoc", "	:param aLMWU:
	:type aLMWU: Handle_StepBasic_LengthMeasureWithUnit &
	:rtype: None
") SetLengthMeasureWithUnit;
		void SetLengthMeasureWithUnit (const Handle_StepBasic_LengthMeasureWithUnit & aLMWU);
		%feature("compactdefaultargs") GetLengthMeasureWithUnit;
		%feature("autodoc", "	:rtype: Handle_StepBasic_LengthMeasureWithUnit
") GetLengthMeasureWithUnit;
		Handle_StepBasic_LengthMeasureWithUnit GetLengthMeasureWithUnit ();
};


%extend StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI::Handle_StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI;
class Handle_StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI : public Handle_StepRepr_ReprItemAndMeasureWithUnitAndQRI {

    public:
        // constructors
        Handle_StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI();
        Handle_StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI(const Handle_StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI &aHandle);
        Handle_StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI(const StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI {
    StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI* _get_reference() {
    return (StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI*)$self->get();
    }
};

%extend Handle_StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI;
class StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI : public StepRepr_ReprItemAndMeasureWithUnitAndQRI {
	public:
		%feature("compactdefaultargs") StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI;
		%feature("autodoc", "	:rtype: None
") StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI;
		 StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI ();
		%feature("compactdefaultargs") SetPlaneAngleMeasureWithUnit;
		%feature("autodoc", "	:param aLMWU:
	:type aLMWU: Handle_StepBasic_PlaneAngleMeasureWithUnit &
	:rtype: None
") SetPlaneAngleMeasureWithUnit;
		void SetPlaneAngleMeasureWithUnit (const Handle_StepBasic_PlaneAngleMeasureWithUnit & aLMWU);
		%feature("compactdefaultargs") GetPlaneAngleMeasureWithUnit;
		%feature("autodoc", "	:rtype: Handle_StepBasic_PlaneAngleMeasureWithUnit
") GetPlaneAngleMeasureWithUnit;
		Handle_StepBasic_PlaneAngleMeasureWithUnit GetPlaneAngleMeasureWithUnit ();
};


%extend StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI::Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI;
class Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI : public Handle_StepRepr_ReprItemAndMeasureWithUnitAndQRI {

    public:
        // constructors
        Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI();
        Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI(const Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI &aHandle);
        Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI(const StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI {
    StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI* _get_reference() {
    return (StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI*)$self->get();
    }
};

%extend Handle_StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ReprItemAndPlaneAngleMeasureWithUnitAndQRI {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepRepr_ShapeRepresentationRelationshipWithTransformation;
class StepRepr_ShapeRepresentationRelationshipWithTransformation : public StepRepr_RepresentationRelationshipWithTransformation {
	public:
		%feature("compactdefaultargs") StepRepr_ShapeRepresentationRelationshipWithTransformation;
		%feature("autodoc", "	:rtype: None
") StepRepr_ShapeRepresentationRelationshipWithTransformation;
		 StepRepr_ShapeRepresentationRelationshipWithTransformation ();
};


%extend StepRepr_ShapeRepresentationRelationshipWithTransformation {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation::Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation;
class Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation : public Handle_StepRepr_RepresentationRelationshipWithTransformation {

    public:
        // constructors
        Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation();
        Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation(const Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation &aHandle);
        Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation(const StepRepr_ShapeRepresentationRelationshipWithTransformation *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation {
    StepRepr_ShapeRepresentationRelationshipWithTransformation* _get_reference() {
    return (StepRepr_ShapeRepresentationRelationshipWithTransformation*)$self->get();
    }
};

%extend Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepRepr_ShapeRepresentationRelationshipWithTransformation {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
