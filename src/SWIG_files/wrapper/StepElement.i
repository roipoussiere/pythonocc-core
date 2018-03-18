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
%define STEPELEMENTDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=STEPELEMENTDOCSTRING) StepElement

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


%include StepElement_headers.i


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
%template(StepElement_Array1OfHSequenceOfSurfaceElementPurposeMember) NCollection_Array1 <Handle(StepElement_HSequenceOfSurfaceElementPurposeMember)>;
%template(StepElement_SequenceOfSurfaceElementPurposeMember) NCollection_Sequence <Handle(StepElement_SurfaceElementPurposeMember)>;
%template(StepElement_SequenceOfCurveElementPurposeMember) NCollection_Sequence <Handle(StepElement_CurveElementPurposeMember)>;
%template(StepElement_Array1OfVolumeElementPurpose) NCollection_Array1 <StepElement_VolumeElementPurpose>;
%template(StepElement_Array1OfMeasureOrUnspecifiedValue) NCollection_Array1 <StepElement_MeasureOrUnspecifiedValue>;
%template(StepElement_Array1OfSurfaceSection) NCollection_Array1 <Handle(StepElement_SurfaceSection)>;
%template(StepElement_Array2OfSurfaceElementPurpose) NCollection_Array2 <StepElement_SurfaceElementPurpose>;
%template(StepElement_SequenceOfCurveElementSectionDefinition) NCollection_Sequence <Handle(StepElement_CurveElementSectionDefinition)>;
%template(StepElement_Array1OfVolumeElementPurposeMember) NCollection_Array1 <Handle(StepElement_VolumeElementPurposeMember)>;
%template(StepElement_Array1OfHSequenceOfCurveElementPurposeMember) NCollection_Array1 <Handle(StepElement_HSequenceOfCurveElementPurposeMember)>;
%template(StepElement_Array2OfSurfaceElementPurposeMember) NCollection_Array2 <Handle(StepElement_SurfaceElementPurposeMember)>;
%template(StepElement_Array1OfCurveElementSectionDefinition) NCollection_Array1 <Handle(StepElement_CurveElementSectionDefinition)>;
%template(StepElement_SequenceOfElementMaterial) NCollection_Sequence <Handle(StepElement_ElementMaterial)>;
%template(StepElement_Array2OfCurveElementPurposeMember) NCollection_Array2 <Handle(StepElement_CurveElementPurposeMember)>;
%template(StepElement_Array1OfCurveElementEndReleasePacket) NCollection_Array1 <Handle(StepElement_CurveElementEndReleasePacket)>;
/* end templates declaration */

/* end templates declaration */

/* typedefs */
typedef NCollection_Array1 <Handle_StepElement_HSequenceOfSurfaceElementPurposeMember> StepElement_Array1OfHSequenceOfSurfaceElementPurposeMember;
typedef NCollection_Sequence <Handle_StepElement_SurfaceElementPurposeMember> StepElement_SequenceOfSurfaceElementPurposeMember;
typedef NCollection_Sequence <Handle_StepElement_CurveElementPurposeMember> StepElement_SequenceOfCurveElementPurposeMember;
typedef NCollection_Array1 <StepElement_VolumeElementPurpose> StepElement_Array1OfVolumeElementPurpose;
typedef NCollection_Array1 <StepElement_MeasureOrUnspecifiedValue> StepElement_Array1OfMeasureOrUnspecifiedValue;
typedef NCollection_Array1 <Handle_StepElement_SurfaceSection> StepElement_Array1OfSurfaceSection;
typedef NCollection_Array2 <StepElement_SurfaceElementPurpose> StepElement_Array2OfSurfaceElementPurpose;
typedef NCollection_Sequence <Handle_StepElement_CurveElementSectionDefinition> StepElement_SequenceOfCurveElementSectionDefinition;
typedef NCollection_Array1 <Handle_StepElement_VolumeElementPurposeMember> StepElement_Array1OfVolumeElementPurposeMember;
typedef NCollection_Array1 <Handle_StepElement_HSequenceOfCurveElementPurposeMember> StepElement_Array1OfHSequenceOfCurveElementPurposeMember;
typedef NCollection_Array2 <Handle_StepElement_SurfaceElementPurposeMember> StepElement_Array2OfSurfaceElementPurposeMember;
typedef NCollection_Array1 <Handle_StepElement_CurveElementSectionDefinition> StepElement_Array1OfCurveElementSectionDefinition;
typedef NCollection_Sequence <Handle_StepElement_ElementMaterial> StepElement_SequenceOfElementMaterial;
typedef NCollection_Array2 <Handle_StepElement_CurveElementPurposeMember> StepElement_Array2OfCurveElementPurposeMember;
typedef NCollection_Array1 <Handle_StepElement_CurveElementEndReleasePacket> StepElement_Array1OfCurveElementEndReleasePacket;
/* end typedefs declaration */

/* public enums */
enum StepElement_ElementVolume {
	StepElement_Volume = 0,
};

enum StepElement_CurveEdge {
	StepElement_ElementEdge = 0,
};

enum StepElement_Volume3dElementShape {
	StepElement_Hexahedron = 0,
	StepElement_Wedge = 1,
	StepElement_Tetrahedron = 2,
	StepElement_Pyramid = 3,
};

enum StepElement_ElementOrder {
	StepElement_Linear = 0,
	StepElement_Quadratic = 1,
	StepElement_Cubic = 2,
};

enum StepElement_Element2dShape {
	StepElement_Quadrilateral = 0,
	StepElement_Triangle = 1,
};

enum StepElement_EnumeratedCurveElementFreedom {
	StepElement_XTranslation = 0,
	StepElement_YTranslation = 1,
	StepElement_ZTranslation = 2,
	StepElement_XRotation = 3,
	StepElement_YRotation = 4,
	StepElement_ZRotation = 5,
	StepElement_Warp = 6,
	StepElement_None = 7,
};

enum StepElement_EnumeratedVolumeElementPurpose {
	StepElement_StressDisplacement = 0,
};

enum StepElement_EnumeratedSurfaceElementPurpose {
	StepElement_MembraneDirect = 0,
	StepElement_MembraneShear = 1,
	StepElement_BendingDirect = 2,
	StepElement_BendingTorsion = 3,
	StepElement_NormalToPlaneShear = 4,
};

enum StepElement_UnspecifiedValue {
	StepElement_Unspecified = 0,
};

enum StepElement_EnumeratedCurveElementPurpose {
	StepElement_Axial = 0,
	StepElement_YYBending = 1,
	StepElement_ZZBending = 2,
	StepElement_Torsion = 3,
	StepElement_XYShear = 4,
	StepElement_XZShear = 5,
	StepElement_Warping = 6,
};

/* end public enums declaration */

%nodefaultctor StepElement_AnalysisItemWithinRepresentation;
class StepElement_AnalysisItemWithinRepresentation : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepElement_AnalysisItemWithinRepresentation;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_AnalysisItemWithinRepresentation;
		 StepElement_AnalysisItemWithinRepresentation ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aItem:
	:type aItem: Handle_StepRepr_RepresentationItem &
	:param aRep:
	:type aRep: Handle_StepRepr_Representation &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription,const Handle_StepRepr_RepresentationItem & aItem,const Handle_StepRepr_Representation & aRep);
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
		%feature("compactdefaultargs") Item;
		%feature("autodoc", "	* Returns field Item

	:rtype: Handle_StepRepr_RepresentationItem
") Item;
		Handle_StepRepr_RepresentationItem Item ();
		%feature("compactdefaultargs") SetItem;
		%feature("autodoc", "	* Set field Item

	:param Item:
	:type Item: Handle_StepRepr_RepresentationItem &
	:rtype: None
") SetItem;
		void SetItem (const Handle_StepRepr_RepresentationItem & Item);
		%feature("compactdefaultargs") Rep;
		%feature("autodoc", "	* Returns field Rep

	:rtype: Handle_StepRepr_Representation
") Rep;
		Handle_StepRepr_Representation Rep ();
		%feature("compactdefaultargs") SetRep;
		%feature("autodoc", "	* Set field Rep

	:param Rep:
	:type Rep: Handle_StepRepr_Representation &
	:rtype: None
") SetRep;
		void SetRep (const Handle_StepRepr_Representation & Rep);
};


%extend StepElement_AnalysisItemWithinRepresentation {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepElement_AnalysisItemWithinRepresentation(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepElement_AnalysisItemWithinRepresentation::Handle_StepElement_AnalysisItemWithinRepresentation %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepElement_AnalysisItemWithinRepresentation;
class Handle_StepElement_AnalysisItemWithinRepresentation : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepElement_AnalysisItemWithinRepresentation();
        Handle_StepElement_AnalysisItemWithinRepresentation(const Handle_StepElement_AnalysisItemWithinRepresentation &aHandle);
        Handle_StepElement_AnalysisItemWithinRepresentation(const StepElement_AnalysisItemWithinRepresentation *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepElement_AnalysisItemWithinRepresentation DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepElement_AnalysisItemWithinRepresentation {
    StepElement_AnalysisItemWithinRepresentation* _get_reference() {
    return (StepElement_AnalysisItemWithinRepresentation*)$self->get();
    }
};

%extend Handle_StepElement_AnalysisItemWithinRepresentation {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepElement_AnalysisItemWithinRepresentation {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_CurveElementEndReleasePacket;
class StepElement_CurveElementEndReleasePacket : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepElement_CurveElementEndReleasePacket;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_CurveElementEndReleasePacket;
		 StepElement_CurveElementEndReleasePacket ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aReleaseFreedom:
	:type aReleaseFreedom: StepElement_CurveElementFreedom &
	:param aReleaseStiffness:
	:type aReleaseStiffness: float
	:rtype: None
") Init;
		void Init (const StepElement_CurveElementFreedom & aReleaseFreedom,const Standard_Real aReleaseStiffness);
		%feature("compactdefaultargs") ReleaseFreedom;
		%feature("autodoc", "	* Returns field ReleaseFreedom

	:rtype: StepElement_CurveElementFreedom
") ReleaseFreedom;
		StepElement_CurveElementFreedom ReleaseFreedom ();
		%feature("compactdefaultargs") SetReleaseFreedom;
		%feature("autodoc", "	* Set field ReleaseFreedom

	:param ReleaseFreedom:
	:type ReleaseFreedom: StepElement_CurveElementFreedom &
	:rtype: None
") SetReleaseFreedom;
		void SetReleaseFreedom (const StepElement_CurveElementFreedom & ReleaseFreedom);
		%feature("compactdefaultargs") ReleaseStiffness;
		%feature("autodoc", "	* Returns field ReleaseStiffness

	:rtype: float
") ReleaseStiffness;
		Standard_Real ReleaseStiffness ();
		%feature("compactdefaultargs") SetReleaseStiffness;
		%feature("autodoc", "	* Set field ReleaseStiffness

	:param ReleaseStiffness:
	:type ReleaseStiffness: float
	:rtype: None
") SetReleaseStiffness;
		void SetReleaseStiffness (const Standard_Real ReleaseStiffness);
};


%extend StepElement_CurveElementEndReleasePacket {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepElement_CurveElementEndReleasePacket(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepElement_CurveElementEndReleasePacket::Handle_StepElement_CurveElementEndReleasePacket %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepElement_CurveElementEndReleasePacket;
class Handle_StepElement_CurveElementEndReleasePacket : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepElement_CurveElementEndReleasePacket();
        Handle_StepElement_CurveElementEndReleasePacket(const Handle_StepElement_CurveElementEndReleasePacket &aHandle);
        Handle_StepElement_CurveElementEndReleasePacket(const StepElement_CurveElementEndReleasePacket *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepElement_CurveElementEndReleasePacket DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepElement_CurveElementEndReleasePacket {
    StepElement_CurveElementEndReleasePacket* _get_reference() {
    return (StepElement_CurveElementEndReleasePacket*)$self->get();
    }
};

%extend Handle_StepElement_CurveElementEndReleasePacket {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepElement_CurveElementEndReleasePacket {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_CurveElementFreedom;
class StepElement_CurveElementFreedom : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepElement_CurveElementFreedom;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_CurveElementFreedom;
		 StepElement_CurveElementFreedom ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a kind of CurveElementFreedom select type return 0

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") CaseMem;
		%feature("autodoc", "	* Recognizes a items of select member CurveElementFreedomMember 1 -> EnumeratedCurveElementFreedom 2 -> ApplicationDefinedDegreeOfFreedom 0 else

	:param ent:
	:type ent: Handle_StepData_SelectMember &
	:rtype: int
") CaseMem;
		virtual Standard_Integer CaseMem (const Handle_StepData_SelectMember & ent);
		%feature("compactdefaultargs") NewMember;
		%feature("autodoc", "	* Returns a new select member the type CurveElementFreedomMember

	:rtype: Handle_StepData_SelectMember
") NewMember;
		virtual Handle_StepData_SelectMember NewMember ();
		%feature("compactdefaultargs") SetEnumeratedCurveElementFreedom;
		%feature("autodoc", "	* Set Value for EnumeratedCurveElementFreedom

	:param aVal:
	:type aVal: StepElement_EnumeratedCurveElementFreedom
	:rtype: None
") SetEnumeratedCurveElementFreedom;
		void SetEnumeratedCurveElementFreedom (const StepElement_EnumeratedCurveElementFreedom aVal);
		%feature("compactdefaultargs") EnumeratedCurveElementFreedom;
		%feature("autodoc", "	* Returns Value as EnumeratedCurveElementFreedom --or Null if another type--

	:rtype: StepElement_EnumeratedCurveElementFreedom
") EnumeratedCurveElementFreedom;
		StepElement_EnumeratedCurveElementFreedom EnumeratedCurveElementFreedom ();
		%feature("compactdefaultargs") SetApplicationDefinedDegreeOfFreedom;
		%feature("autodoc", "	* Set Value for ApplicationDefinedDegreeOfFreedom

	:param aVal:
	:type aVal: Handle_TCollection_HAsciiString &
	:rtype: None
") SetApplicationDefinedDegreeOfFreedom;
		void SetApplicationDefinedDegreeOfFreedom (const Handle_TCollection_HAsciiString & aVal);
		%feature("compactdefaultargs") ApplicationDefinedDegreeOfFreedom;
		%feature("autodoc", "	* Returns Value as ApplicationDefinedDegreeOfFreedom --or Null if another type--

	:rtype: Handle_TCollection_HAsciiString
") ApplicationDefinedDegreeOfFreedom;
		Handle_TCollection_HAsciiString ApplicationDefinedDegreeOfFreedom ();
};


%extend StepElement_CurveElementFreedom {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_CurveElementFreedomMember;
class StepElement_CurveElementFreedomMember : public StepData_SelectNamed {
	public:
		%feature("compactdefaultargs") StepElement_CurveElementFreedomMember;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_CurveElementFreedomMember;
		 StepElement_CurveElementFreedomMember ();
		%feature("compactdefaultargs") HasName;
		%feature("autodoc", "	* Returns True if has name

	:rtype: bool
") HasName;
		virtual Standard_Boolean HasName ();
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	* Returns set name

	:rtype: char *
") Name;
		virtual const char * Name ();
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	* Set name

	:param name:
	:type name: char *
	:rtype: bool
") SetName;
		virtual Standard_Boolean SetName (const char * name);
		%feature("compactdefaultargs") Matches;
		%feature("autodoc", "	* Tells if the name of a SelectMember matches a given one;

	:param name:
	:type name: char *
	:rtype: bool
") Matches;
		virtual Standard_Boolean Matches (const char * name);
};


%extend StepElement_CurveElementFreedomMember {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepElement_CurveElementFreedomMember(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepElement_CurveElementFreedomMember::Handle_StepElement_CurveElementFreedomMember %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepElement_CurveElementFreedomMember;
class Handle_StepElement_CurveElementFreedomMember : public Handle_StepData_SelectNamed {

    public:
        // constructors
        Handle_StepElement_CurveElementFreedomMember();
        Handle_StepElement_CurveElementFreedomMember(const Handle_StepElement_CurveElementFreedomMember &aHandle);
        Handle_StepElement_CurveElementFreedomMember(const StepElement_CurveElementFreedomMember *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepElement_CurveElementFreedomMember DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepElement_CurveElementFreedomMember {
    StepElement_CurveElementFreedomMember* _get_reference() {
    return (StepElement_CurveElementFreedomMember*)$self->get();
    }
};

%extend Handle_StepElement_CurveElementFreedomMember {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepElement_CurveElementFreedomMember {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_CurveElementPurpose;
class StepElement_CurveElementPurpose : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepElement_CurveElementPurpose;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_CurveElementPurpose;
		 StepElement_CurveElementPurpose ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a kind of CurveElementPurpose select type return 0

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") CaseMem;
		%feature("autodoc", "	* Recognizes a items of select member CurveElementPurposeMember 1 -> EnumeratedCurveElementPurpose 2 -> ApplicationDefinedElementPurpose 0 else

	:param ent:
	:type ent: Handle_StepData_SelectMember &
	:rtype: int
") CaseMem;
		virtual Standard_Integer CaseMem (const Handle_StepData_SelectMember & ent);
		%feature("compactdefaultargs") NewMember;
		%feature("autodoc", "	* Returns a new select member the type CurveElementPurposeMember

	:rtype: Handle_StepData_SelectMember
") NewMember;
		virtual Handle_StepData_SelectMember NewMember ();
		%feature("compactdefaultargs") SetEnumeratedCurveElementPurpose;
		%feature("autodoc", "	* Set Value for EnumeratedCurveElementPurpose

	:param aVal:
	:type aVal: StepElement_EnumeratedCurveElementPurpose
	:rtype: None
") SetEnumeratedCurveElementPurpose;
		void SetEnumeratedCurveElementPurpose (const StepElement_EnumeratedCurveElementPurpose aVal);
		%feature("compactdefaultargs") EnumeratedCurveElementPurpose;
		%feature("autodoc", "	* Returns Value as EnumeratedCurveElementPurpose --or Null if another type--

	:rtype: StepElement_EnumeratedCurveElementPurpose
") EnumeratedCurveElementPurpose;
		StepElement_EnumeratedCurveElementPurpose EnumeratedCurveElementPurpose ();
		%feature("compactdefaultargs") SetApplicationDefinedElementPurpose;
		%feature("autodoc", "	* Set Value for ApplicationDefinedElementPurpose

	:param aVal:
	:type aVal: Handle_TCollection_HAsciiString &
	:rtype: None
") SetApplicationDefinedElementPurpose;
		void SetApplicationDefinedElementPurpose (const Handle_TCollection_HAsciiString & aVal);
		%feature("compactdefaultargs") ApplicationDefinedElementPurpose;
		%feature("autodoc", "	* Returns Value as ApplicationDefinedElementPurpose --or Null if another type--

	:rtype: Handle_TCollection_HAsciiString
") ApplicationDefinedElementPurpose;
		Handle_TCollection_HAsciiString ApplicationDefinedElementPurpose ();
};


%extend StepElement_CurveElementPurpose {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_CurveElementPurposeMember;
class StepElement_CurveElementPurposeMember : public StepData_SelectNamed {
	public:
		%feature("compactdefaultargs") StepElement_CurveElementPurposeMember;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_CurveElementPurposeMember;
		 StepElement_CurveElementPurposeMember ();
		%feature("compactdefaultargs") HasName;
		%feature("autodoc", "	* Returns True if has name

	:rtype: bool
") HasName;
		virtual Standard_Boolean HasName ();
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	* Returns set name

	:rtype: char *
") Name;
		virtual const char * Name ();
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	* Set name

	:param name:
	:type name: char *
	:rtype: bool
") SetName;
		virtual Standard_Boolean SetName (const char * name);
		%feature("compactdefaultargs") Matches;
		%feature("autodoc", "	* Tells if the name of a SelectMember matches a given one;

	:param name:
	:type name: char *
	:rtype: bool
") Matches;
		virtual Standard_Boolean Matches (const char * name);
};


%extend StepElement_CurveElementPurposeMember {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepElement_CurveElementPurposeMember(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepElement_CurveElementPurposeMember::Handle_StepElement_CurveElementPurposeMember %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepElement_CurveElementPurposeMember;
class Handle_StepElement_CurveElementPurposeMember : public Handle_StepData_SelectNamed {

    public:
        // constructors
        Handle_StepElement_CurveElementPurposeMember();
        Handle_StepElement_CurveElementPurposeMember(const Handle_StepElement_CurveElementPurposeMember &aHandle);
        Handle_StepElement_CurveElementPurposeMember(const StepElement_CurveElementPurposeMember *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepElement_CurveElementPurposeMember DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepElement_CurveElementPurposeMember {
    StepElement_CurveElementPurposeMember* _get_reference() {
    return (StepElement_CurveElementPurposeMember*)$self->get();
    }
};

%extend Handle_StepElement_CurveElementPurposeMember {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepElement_CurveElementPurposeMember {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_CurveElementSectionDefinition;
class StepElement_CurveElementSectionDefinition : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepElement_CurveElementSectionDefinition;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_CurveElementSectionDefinition;
		 StepElement_CurveElementSectionDefinition ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aSectionAngle:
	:type aSectionAngle: float
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aDescription,const Standard_Real aSectionAngle);
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
		%feature("compactdefaultargs") SectionAngle;
		%feature("autodoc", "	* Returns field SectionAngle

	:rtype: float
") SectionAngle;
		Standard_Real SectionAngle ();
		%feature("compactdefaultargs") SetSectionAngle;
		%feature("autodoc", "	* Set field SectionAngle

	:param SectionAngle:
	:type SectionAngle: float
	:rtype: None
") SetSectionAngle;
		void SetSectionAngle (const Standard_Real SectionAngle);
};


%extend StepElement_CurveElementSectionDefinition {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepElement_CurveElementSectionDefinition(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepElement_CurveElementSectionDefinition::Handle_StepElement_CurveElementSectionDefinition %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepElement_CurveElementSectionDefinition;
class Handle_StepElement_CurveElementSectionDefinition : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepElement_CurveElementSectionDefinition();
        Handle_StepElement_CurveElementSectionDefinition(const Handle_StepElement_CurveElementSectionDefinition &aHandle);
        Handle_StepElement_CurveElementSectionDefinition(const StepElement_CurveElementSectionDefinition *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepElement_CurveElementSectionDefinition DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepElement_CurveElementSectionDefinition {
    StepElement_CurveElementSectionDefinition* _get_reference() {
    return (StepElement_CurveElementSectionDefinition*)$self->get();
    }
};

%extend Handle_StepElement_CurveElementSectionDefinition {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepElement_CurveElementSectionDefinition {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_ElementAspect;
class StepElement_ElementAspect : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepElement_ElementAspect;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_ElementAspect;
		 StepElement_ElementAspect ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a kind of ElementAspect select type return 0

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") CaseMem;
		%feature("autodoc", "	* Recognizes a items of select member ElementAspectMember 1 -> ElementVolume 2 -> Volume3dFace 3 -> Volume2dFace 4 -> Volume3dEdge 5 -> Volume2dEdge 6 -> Surface3dFace 7 -> Surface2dFace 8 -> Surface3dEdge 9 -> Surface2dEdge 10 -> CurveEdge 0 else

	:param ent:
	:type ent: Handle_StepData_SelectMember &
	:rtype: int
") CaseMem;
		virtual Standard_Integer CaseMem (const Handle_StepData_SelectMember & ent);
		%feature("compactdefaultargs") NewMember;
		%feature("autodoc", "	* Returns a new select member the type ElementAspectMember

	:rtype: Handle_StepData_SelectMember
") NewMember;
		virtual Handle_StepData_SelectMember NewMember ();
		%feature("compactdefaultargs") SetElementVolume;
		%feature("autodoc", "	* Set Value for ElementVolume

	:param aVal:
	:type aVal: StepElement_ElementVolume
	:rtype: None
") SetElementVolume;
		void SetElementVolume (const StepElement_ElementVolume aVal);
		%feature("compactdefaultargs") ElementVolume;
		%feature("autodoc", "	* Returns Value as ElementVolume --or Null if another type--

	:rtype: StepElement_ElementVolume
") ElementVolume;
		StepElement_ElementVolume ElementVolume ();
		%feature("compactdefaultargs") SetVolume3dFace;
		%feature("autodoc", "	* Set Value for Volume3dFace

	:param aVal:
	:type aVal: int
	:rtype: None
") SetVolume3dFace;
		void SetVolume3dFace (const Standard_Integer aVal);
		%feature("compactdefaultargs") Volume3dFace;
		%feature("autodoc", "	* Returns Value as Volume3dFace --or Null if another type--

	:rtype: int
") Volume3dFace;
		Standard_Integer Volume3dFace ();
		%feature("compactdefaultargs") SetVolume2dFace;
		%feature("autodoc", "	* Set Value for Volume2dFace

	:param aVal:
	:type aVal: int
	:rtype: None
") SetVolume2dFace;
		void SetVolume2dFace (const Standard_Integer aVal);
		%feature("compactdefaultargs") Volume2dFace;
		%feature("autodoc", "	* Returns Value as Volume2dFace --or Null if another type--

	:rtype: int
") Volume2dFace;
		Standard_Integer Volume2dFace ();
		%feature("compactdefaultargs") SetVolume3dEdge;
		%feature("autodoc", "	* Set Value for Volume3dEdge

	:param aVal:
	:type aVal: int
	:rtype: None
") SetVolume3dEdge;
		void SetVolume3dEdge (const Standard_Integer aVal);
		%feature("compactdefaultargs") Volume3dEdge;
		%feature("autodoc", "	* Returns Value as Volume3dEdge --or Null if another type--

	:rtype: int
") Volume3dEdge;
		Standard_Integer Volume3dEdge ();
		%feature("compactdefaultargs") SetVolume2dEdge;
		%feature("autodoc", "	* Set Value for Volume2dEdge

	:param aVal:
	:type aVal: int
	:rtype: None
") SetVolume2dEdge;
		void SetVolume2dEdge (const Standard_Integer aVal);
		%feature("compactdefaultargs") Volume2dEdge;
		%feature("autodoc", "	* Returns Value as Volume2dEdge --or Null if another type--

	:rtype: int
") Volume2dEdge;
		Standard_Integer Volume2dEdge ();
		%feature("compactdefaultargs") SetSurface3dFace;
		%feature("autodoc", "	* Set Value for Surface3dFace

	:param aVal:
	:type aVal: int
	:rtype: None
") SetSurface3dFace;
		void SetSurface3dFace (const Standard_Integer aVal);
		%feature("compactdefaultargs") Surface3dFace;
		%feature("autodoc", "	* Returns Value as Surface3dFace --or Null if another type--

	:rtype: int
") Surface3dFace;
		Standard_Integer Surface3dFace ();
		%feature("compactdefaultargs") SetSurface2dFace;
		%feature("autodoc", "	* Set Value for Surface2dFace

	:param aVal:
	:type aVal: int
	:rtype: None
") SetSurface2dFace;
		void SetSurface2dFace (const Standard_Integer aVal);
		%feature("compactdefaultargs") Surface2dFace;
		%feature("autodoc", "	* Returns Value as Surface2dFace --or Null if another type--

	:rtype: int
") Surface2dFace;
		Standard_Integer Surface2dFace ();
		%feature("compactdefaultargs") SetSurface3dEdge;
		%feature("autodoc", "	* Set Value for Surface3dEdge

	:param aVal:
	:type aVal: int
	:rtype: None
") SetSurface3dEdge;
		void SetSurface3dEdge (const Standard_Integer aVal);
		%feature("compactdefaultargs") Surface3dEdge;
		%feature("autodoc", "	* Returns Value as Surface3dEdge --or Null if another type--

	:rtype: int
") Surface3dEdge;
		Standard_Integer Surface3dEdge ();
		%feature("compactdefaultargs") SetSurface2dEdge;
		%feature("autodoc", "	* Set Value for Surface2dEdge

	:param aVal:
	:type aVal: int
	:rtype: None
") SetSurface2dEdge;
		void SetSurface2dEdge (const Standard_Integer aVal);
		%feature("compactdefaultargs") Surface2dEdge;
		%feature("autodoc", "	* Returns Value as Surface2dEdge --or Null if another type--

	:rtype: int
") Surface2dEdge;
		Standard_Integer Surface2dEdge ();
		%feature("compactdefaultargs") SetCurveEdge;
		%feature("autodoc", "	* Set Value for CurveEdge

	:param aVal:
	:type aVal: StepElement_CurveEdge
	:rtype: None
") SetCurveEdge;
		void SetCurveEdge (const StepElement_CurveEdge aVal);
		%feature("compactdefaultargs") CurveEdge;
		%feature("autodoc", "	* Returns Value as CurveEdge --or Null if another type--

	:rtype: StepElement_CurveEdge
") CurveEdge;
		StepElement_CurveEdge CurveEdge ();
};


%extend StepElement_ElementAspect {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_ElementAspectMember;
class StepElement_ElementAspectMember : public StepData_SelectNamed {
	public:
		%feature("compactdefaultargs") StepElement_ElementAspectMember;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_ElementAspectMember;
		 StepElement_ElementAspectMember ();
		%feature("compactdefaultargs") HasName;
		%feature("autodoc", "	* Returns True if has name

	:rtype: bool
") HasName;
		virtual Standard_Boolean HasName ();
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	* Returns set name

	:rtype: char *
") Name;
		virtual const char * Name ();
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	* Set name

	:param name:
	:type name: char *
	:rtype: bool
") SetName;
		virtual Standard_Boolean SetName (const char * name);
		%feature("compactdefaultargs") Matches;
		%feature("autodoc", "	* Tells if the name of a SelectMember matches a given one;

	:param name:
	:type name: char *
	:rtype: bool
") Matches;
		virtual Standard_Boolean Matches (const char * name);
};


%extend StepElement_ElementAspectMember {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepElement_ElementAspectMember(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepElement_ElementAspectMember::Handle_StepElement_ElementAspectMember %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepElement_ElementAspectMember;
class Handle_StepElement_ElementAspectMember : public Handle_StepData_SelectNamed {

    public:
        // constructors
        Handle_StepElement_ElementAspectMember();
        Handle_StepElement_ElementAspectMember(const Handle_StepElement_ElementAspectMember &aHandle);
        Handle_StepElement_ElementAspectMember(const StepElement_ElementAspectMember *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepElement_ElementAspectMember DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepElement_ElementAspectMember {
    StepElement_ElementAspectMember* _get_reference() {
    return (StepElement_ElementAspectMember*)$self->get();
    }
};

%extend Handle_StepElement_ElementAspectMember {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepElement_ElementAspectMember {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_ElementDescriptor;
class StepElement_ElementDescriptor : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepElement_ElementDescriptor;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_ElementDescriptor;
		 StepElement_ElementDescriptor ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aTopologyOrder:
	:type aTopologyOrder: StepElement_ElementOrder
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:rtype: None
") Init;
		void Init (const StepElement_ElementOrder aTopologyOrder,const Handle_TCollection_HAsciiString & aDescription);
		%feature("compactdefaultargs") TopologyOrder;
		%feature("autodoc", "	* Returns field TopologyOrder

	:rtype: StepElement_ElementOrder
") TopologyOrder;
		StepElement_ElementOrder TopologyOrder ();
		%feature("compactdefaultargs") SetTopologyOrder;
		%feature("autodoc", "	* Set field TopologyOrder

	:param TopologyOrder:
	:type TopologyOrder: StepElement_ElementOrder
	:rtype: None
") SetTopologyOrder;
		void SetTopologyOrder (const StepElement_ElementOrder TopologyOrder);
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
};


%extend StepElement_ElementDescriptor {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepElement_ElementDescriptor(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepElement_ElementDescriptor::Handle_StepElement_ElementDescriptor %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepElement_ElementDescriptor;
class Handle_StepElement_ElementDescriptor : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepElement_ElementDescriptor();
        Handle_StepElement_ElementDescriptor(const Handle_StepElement_ElementDescriptor &aHandle);
        Handle_StepElement_ElementDescriptor(const StepElement_ElementDescriptor *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepElement_ElementDescriptor DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepElement_ElementDescriptor {
    StepElement_ElementDescriptor* _get_reference() {
    return (StepElement_ElementDescriptor*)$self->get();
    }
};

%extend Handle_StepElement_ElementDescriptor {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepElement_ElementDescriptor {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_ElementMaterial;
class StepElement_ElementMaterial : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepElement_ElementMaterial;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_ElementMaterial;
		 StepElement_ElementMaterial ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aMaterialId:
	:type aMaterialId: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aProperties:
	:type aProperties: Handle_StepRepr_HArray1OfMaterialPropertyRepresentation &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aMaterialId,const Handle_TCollection_HAsciiString & aDescription,const Handle_StepRepr_HArray1OfMaterialPropertyRepresentation & aProperties);
		%feature("compactdefaultargs") MaterialId;
		%feature("autodoc", "	* Returns field MaterialId

	:rtype: Handle_TCollection_HAsciiString
") MaterialId;
		Handle_TCollection_HAsciiString MaterialId ();
		%feature("compactdefaultargs") SetMaterialId;
		%feature("autodoc", "	* Set field MaterialId

	:param MaterialId:
	:type MaterialId: Handle_TCollection_HAsciiString &
	:rtype: None
") SetMaterialId;
		void SetMaterialId (const Handle_TCollection_HAsciiString & MaterialId);
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
		%feature("compactdefaultargs") Properties;
		%feature("autodoc", "	* Returns field Properties

	:rtype: Handle_StepRepr_HArray1OfMaterialPropertyRepresentation
") Properties;
		Handle_StepRepr_HArray1OfMaterialPropertyRepresentation Properties ();
		%feature("compactdefaultargs") SetProperties;
		%feature("autodoc", "	* Set field Properties

	:param Properties:
	:type Properties: Handle_StepRepr_HArray1OfMaterialPropertyRepresentation &
	:rtype: None
") SetProperties;
		void SetProperties (const Handle_StepRepr_HArray1OfMaterialPropertyRepresentation & Properties);
};


%extend StepElement_ElementMaterial {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepElement_ElementMaterial(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepElement_ElementMaterial::Handle_StepElement_ElementMaterial %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepElement_ElementMaterial;
class Handle_StepElement_ElementMaterial : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepElement_ElementMaterial();
        Handle_StepElement_ElementMaterial(const Handle_StepElement_ElementMaterial &aHandle);
        Handle_StepElement_ElementMaterial(const StepElement_ElementMaterial *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepElement_ElementMaterial DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepElement_ElementMaterial {
    StepElement_ElementMaterial* _get_reference() {
    return (StepElement_ElementMaterial*)$self->get();
    }
};

%extend Handle_StepElement_ElementMaterial {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepElement_ElementMaterial {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_MeasureOrUnspecifiedValue;
class StepElement_MeasureOrUnspecifiedValue : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepElement_MeasureOrUnspecifiedValue;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_MeasureOrUnspecifiedValue;
		 StepElement_MeasureOrUnspecifiedValue ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a kind of MeasureOrUnspecifiedValue select type return 0

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") CaseMem;
		%feature("autodoc", "	* Recognizes a items of select member MeasureOrUnspecifiedValueMember 1 -> ContextDependentMeasure 2 -> UnspecifiedValue 0 else

	:param ent:
	:type ent: Handle_StepData_SelectMember &
	:rtype: int
") CaseMem;
		virtual Standard_Integer CaseMem (const Handle_StepData_SelectMember & ent);
		%feature("compactdefaultargs") NewMember;
		%feature("autodoc", "	* Returns a new select member the type MeasureOrUnspecifiedValueMember

	:rtype: Handle_StepData_SelectMember
") NewMember;
		virtual Handle_StepData_SelectMember NewMember ();
		%feature("compactdefaultargs") SetContextDependentMeasure;
		%feature("autodoc", "	* Set Value for ContextDependentMeasure

	:param aVal:
	:type aVal: float
	:rtype: None
") SetContextDependentMeasure;
		void SetContextDependentMeasure (const Standard_Real aVal);
		%feature("compactdefaultargs") ContextDependentMeasure;
		%feature("autodoc", "	* Returns Value as ContextDependentMeasure --or Null if another type--

	:rtype: float
") ContextDependentMeasure;
		Standard_Real ContextDependentMeasure ();
		%feature("compactdefaultargs") SetUnspecifiedValue;
		%feature("autodoc", "	* Set Value for UnspecifiedValue

	:param aVal:
	:type aVal: StepElement_UnspecifiedValue
	:rtype: None
") SetUnspecifiedValue;
		void SetUnspecifiedValue (const StepElement_UnspecifiedValue aVal);
		%feature("compactdefaultargs") UnspecifiedValue;
		%feature("autodoc", "	* Returns Value as UnspecifiedValue --or Null if another type--

	:rtype: StepElement_UnspecifiedValue
") UnspecifiedValue;
		StepElement_UnspecifiedValue UnspecifiedValue ();
};


%extend StepElement_MeasureOrUnspecifiedValue {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_MeasureOrUnspecifiedValueMember;
class StepElement_MeasureOrUnspecifiedValueMember : public StepData_SelectNamed {
	public:
		%feature("compactdefaultargs") StepElement_MeasureOrUnspecifiedValueMember;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_MeasureOrUnspecifiedValueMember;
		 StepElement_MeasureOrUnspecifiedValueMember ();
		%feature("compactdefaultargs") HasName;
		%feature("autodoc", "	* Returns True if has name

	:rtype: bool
") HasName;
		virtual Standard_Boolean HasName ();
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	* Returns set name

	:rtype: char *
") Name;
		virtual const char * Name ();
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	* Set name

	:param name:
	:type name: char *
	:rtype: bool
") SetName;
		virtual Standard_Boolean SetName (const char * name);
		%feature("compactdefaultargs") Matches;
		%feature("autodoc", "	* Tells if the name of a SelectMember matches a given one;

	:param name:
	:type name: char *
	:rtype: bool
") Matches;
		virtual Standard_Boolean Matches (const char * name);
};


%extend StepElement_MeasureOrUnspecifiedValueMember {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepElement_MeasureOrUnspecifiedValueMember(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepElement_MeasureOrUnspecifiedValueMember::Handle_StepElement_MeasureOrUnspecifiedValueMember %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepElement_MeasureOrUnspecifiedValueMember;
class Handle_StepElement_MeasureOrUnspecifiedValueMember : public Handle_StepData_SelectNamed {

    public:
        // constructors
        Handle_StepElement_MeasureOrUnspecifiedValueMember();
        Handle_StepElement_MeasureOrUnspecifiedValueMember(const Handle_StepElement_MeasureOrUnspecifiedValueMember &aHandle);
        Handle_StepElement_MeasureOrUnspecifiedValueMember(const StepElement_MeasureOrUnspecifiedValueMember *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepElement_MeasureOrUnspecifiedValueMember DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepElement_MeasureOrUnspecifiedValueMember {
    StepElement_MeasureOrUnspecifiedValueMember* _get_reference() {
    return (StepElement_MeasureOrUnspecifiedValueMember*)$self->get();
    }
};

%extend Handle_StepElement_MeasureOrUnspecifiedValueMember {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepElement_MeasureOrUnspecifiedValueMember {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_SurfaceElementProperty;
class StepElement_SurfaceElementProperty : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepElement_SurfaceElementProperty;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_SurfaceElementProperty;
		 StepElement_SurfaceElementProperty ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aPropertyId:
	:type aPropertyId: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aSection:
	:type aSection: Handle_StepElement_SurfaceSectionField &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aPropertyId,const Handle_TCollection_HAsciiString & aDescription,const Handle_StepElement_SurfaceSectionField & aSection);
		%feature("compactdefaultargs") PropertyId;
		%feature("autodoc", "	* Returns field PropertyId

	:rtype: Handle_TCollection_HAsciiString
") PropertyId;
		Handle_TCollection_HAsciiString PropertyId ();
		%feature("compactdefaultargs") SetPropertyId;
		%feature("autodoc", "	* Set field PropertyId

	:param PropertyId:
	:type PropertyId: Handle_TCollection_HAsciiString &
	:rtype: None
") SetPropertyId;
		void SetPropertyId (const Handle_TCollection_HAsciiString & PropertyId);
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
		%feature("compactdefaultargs") Section;
		%feature("autodoc", "	* Returns field Section

	:rtype: Handle_StepElement_SurfaceSectionField
") Section;
		Handle_StepElement_SurfaceSectionField Section ();
		%feature("compactdefaultargs") SetSection;
		%feature("autodoc", "	* Set field Section

	:param Section:
	:type Section: Handle_StepElement_SurfaceSectionField &
	:rtype: None
") SetSection;
		void SetSection (const Handle_StepElement_SurfaceSectionField & Section);
};


%extend StepElement_SurfaceElementProperty {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepElement_SurfaceElementProperty(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepElement_SurfaceElementProperty::Handle_StepElement_SurfaceElementProperty %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepElement_SurfaceElementProperty;
class Handle_StepElement_SurfaceElementProperty : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepElement_SurfaceElementProperty();
        Handle_StepElement_SurfaceElementProperty(const Handle_StepElement_SurfaceElementProperty &aHandle);
        Handle_StepElement_SurfaceElementProperty(const StepElement_SurfaceElementProperty *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepElement_SurfaceElementProperty DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepElement_SurfaceElementProperty {
    StepElement_SurfaceElementProperty* _get_reference() {
    return (StepElement_SurfaceElementProperty*)$self->get();
    }
};

%extend Handle_StepElement_SurfaceElementProperty {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepElement_SurfaceElementProperty {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_SurfaceElementPurpose;
class StepElement_SurfaceElementPurpose : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepElement_SurfaceElementPurpose;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_SurfaceElementPurpose;
		 StepElement_SurfaceElementPurpose ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a kind of SurfaceElementPurpose select type return 0

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") CaseMem;
		%feature("autodoc", "	* Recognizes a items of select member SurfaceElementPurposeMember 1 -> EnumeratedSurfaceElementPurpose 2 -> ApplicationDefinedElementPurpose 0 else

	:param ent:
	:type ent: Handle_StepData_SelectMember &
	:rtype: int
") CaseMem;
		virtual Standard_Integer CaseMem (const Handle_StepData_SelectMember & ent);
		%feature("compactdefaultargs") NewMember;
		%feature("autodoc", "	* Returns a new select member the type SurfaceElementPurposeMember

	:rtype: Handle_StepData_SelectMember
") NewMember;
		virtual Handle_StepData_SelectMember NewMember ();
		%feature("compactdefaultargs") SetEnumeratedSurfaceElementPurpose;
		%feature("autodoc", "	* Set Value for EnumeratedSurfaceElementPurpose

	:param aVal:
	:type aVal: StepElement_EnumeratedSurfaceElementPurpose
	:rtype: None
") SetEnumeratedSurfaceElementPurpose;
		void SetEnumeratedSurfaceElementPurpose (const StepElement_EnumeratedSurfaceElementPurpose aVal);
		%feature("compactdefaultargs") EnumeratedSurfaceElementPurpose;
		%feature("autodoc", "	* Returns Value as EnumeratedSurfaceElementPurpose --or Null if another type--

	:rtype: StepElement_EnumeratedSurfaceElementPurpose
") EnumeratedSurfaceElementPurpose;
		StepElement_EnumeratedSurfaceElementPurpose EnumeratedSurfaceElementPurpose ();
		%feature("compactdefaultargs") SetApplicationDefinedElementPurpose;
		%feature("autodoc", "	* Set Value for ApplicationDefinedElementPurpose

	:param aVal:
	:type aVal: Handle_TCollection_HAsciiString &
	:rtype: None
") SetApplicationDefinedElementPurpose;
		void SetApplicationDefinedElementPurpose (const Handle_TCollection_HAsciiString & aVal);
		%feature("compactdefaultargs") ApplicationDefinedElementPurpose;
		%feature("autodoc", "	* Returns Value as ApplicationDefinedElementPurpose --or Null if another type--

	:rtype: Handle_TCollection_HAsciiString
") ApplicationDefinedElementPurpose;
		Handle_TCollection_HAsciiString ApplicationDefinedElementPurpose ();
};


%extend StepElement_SurfaceElementPurpose {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_SurfaceElementPurposeMember;
class StepElement_SurfaceElementPurposeMember : public StepData_SelectNamed {
	public:
		%feature("compactdefaultargs") StepElement_SurfaceElementPurposeMember;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_SurfaceElementPurposeMember;
		 StepElement_SurfaceElementPurposeMember ();
		%feature("compactdefaultargs") HasName;
		%feature("autodoc", "	* Returns True if has name

	:rtype: bool
") HasName;
		virtual Standard_Boolean HasName ();
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	* Returns set name

	:rtype: char *
") Name;
		virtual const char * Name ();
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	* Set name

	:param name:
	:type name: char *
	:rtype: bool
") SetName;
		virtual Standard_Boolean SetName (const char * name);
		%feature("compactdefaultargs") Matches;
		%feature("autodoc", "	* Tells if the name of a SelectMember matches a given one;

	:param name:
	:type name: char *
	:rtype: bool
") Matches;
		virtual Standard_Boolean Matches (const char * name);
};


%extend StepElement_SurfaceElementPurposeMember {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepElement_SurfaceElementPurposeMember(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepElement_SurfaceElementPurposeMember::Handle_StepElement_SurfaceElementPurposeMember %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepElement_SurfaceElementPurposeMember;
class Handle_StepElement_SurfaceElementPurposeMember : public Handle_StepData_SelectNamed {

    public:
        // constructors
        Handle_StepElement_SurfaceElementPurposeMember();
        Handle_StepElement_SurfaceElementPurposeMember(const Handle_StepElement_SurfaceElementPurposeMember &aHandle);
        Handle_StepElement_SurfaceElementPurposeMember(const StepElement_SurfaceElementPurposeMember *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepElement_SurfaceElementPurposeMember DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepElement_SurfaceElementPurposeMember {
    StepElement_SurfaceElementPurposeMember* _get_reference() {
    return (StepElement_SurfaceElementPurposeMember*)$self->get();
    }
};

%extend Handle_StepElement_SurfaceElementPurposeMember {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepElement_SurfaceElementPurposeMember {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_SurfaceSection;
class StepElement_SurfaceSection : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepElement_SurfaceSection;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_SurfaceSection;
		 StepElement_SurfaceSection ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aOffset:
	:type aOffset: StepElement_MeasureOrUnspecifiedValue &
	:param aNonStructuralMass:
	:type aNonStructuralMass: StepElement_MeasureOrUnspecifiedValue &
	:param aNonStructuralMassOffset:
	:type aNonStructuralMassOffset: StepElement_MeasureOrUnspecifiedValue &
	:rtype: None
") Init;
		void Init (const StepElement_MeasureOrUnspecifiedValue & aOffset,const StepElement_MeasureOrUnspecifiedValue & aNonStructuralMass,const StepElement_MeasureOrUnspecifiedValue & aNonStructuralMassOffset);
		%feature("compactdefaultargs") Offset;
		%feature("autodoc", "	* Returns field Offset

	:rtype: StepElement_MeasureOrUnspecifiedValue
") Offset;
		StepElement_MeasureOrUnspecifiedValue Offset ();
		%feature("compactdefaultargs") SetOffset;
		%feature("autodoc", "	* Set field Offset

	:param Offset:
	:type Offset: StepElement_MeasureOrUnspecifiedValue &
	:rtype: None
") SetOffset;
		void SetOffset (const StepElement_MeasureOrUnspecifiedValue & Offset);
		%feature("compactdefaultargs") NonStructuralMass;
		%feature("autodoc", "	* Returns field NonStructuralMass

	:rtype: StepElement_MeasureOrUnspecifiedValue
") NonStructuralMass;
		StepElement_MeasureOrUnspecifiedValue NonStructuralMass ();
		%feature("compactdefaultargs") SetNonStructuralMass;
		%feature("autodoc", "	* Set field NonStructuralMass

	:param NonStructuralMass:
	:type NonStructuralMass: StepElement_MeasureOrUnspecifiedValue &
	:rtype: None
") SetNonStructuralMass;
		void SetNonStructuralMass (const StepElement_MeasureOrUnspecifiedValue & NonStructuralMass);
		%feature("compactdefaultargs") NonStructuralMassOffset;
		%feature("autodoc", "	* Returns field NonStructuralMassOffset

	:rtype: StepElement_MeasureOrUnspecifiedValue
") NonStructuralMassOffset;
		StepElement_MeasureOrUnspecifiedValue NonStructuralMassOffset ();
		%feature("compactdefaultargs") SetNonStructuralMassOffset;
		%feature("autodoc", "	* Set field NonStructuralMassOffset

	:param NonStructuralMassOffset:
	:type NonStructuralMassOffset: StepElement_MeasureOrUnspecifiedValue &
	:rtype: None
") SetNonStructuralMassOffset;
		void SetNonStructuralMassOffset (const StepElement_MeasureOrUnspecifiedValue & NonStructuralMassOffset);
};


%extend StepElement_SurfaceSection {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepElement_SurfaceSection(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepElement_SurfaceSection::Handle_StepElement_SurfaceSection %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepElement_SurfaceSection;
class Handle_StepElement_SurfaceSection : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepElement_SurfaceSection();
        Handle_StepElement_SurfaceSection(const Handle_StepElement_SurfaceSection &aHandle);
        Handle_StepElement_SurfaceSection(const StepElement_SurfaceSection *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepElement_SurfaceSection DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepElement_SurfaceSection {
    StepElement_SurfaceSection* _get_reference() {
    return (StepElement_SurfaceSection*)$self->get();
    }
};

%extend Handle_StepElement_SurfaceSection {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepElement_SurfaceSection {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_SurfaceSectionField;
class StepElement_SurfaceSectionField : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepElement_SurfaceSectionField;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_SurfaceSectionField;
		 StepElement_SurfaceSectionField ();
};


%extend StepElement_SurfaceSectionField {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepElement_SurfaceSectionField(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepElement_SurfaceSectionField::Handle_StepElement_SurfaceSectionField %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepElement_SurfaceSectionField;
class Handle_StepElement_SurfaceSectionField : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepElement_SurfaceSectionField();
        Handle_StepElement_SurfaceSectionField(const Handle_StepElement_SurfaceSectionField &aHandle);
        Handle_StepElement_SurfaceSectionField(const StepElement_SurfaceSectionField *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepElement_SurfaceSectionField DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepElement_SurfaceSectionField {
    StepElement_SurfaceSectionField* _get_reference() {
    return (StepElement_SurfaceSectionField*)$self->get();
    }
};

%extend Handle_StepElement_SurfaceSectionField {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepElement_SurfaceSectionField {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_VolumeElementPurpose;
class StepElement_VolumeElementPurpose : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepElement_VolumeElementPurpose;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_VolumeElementPurpose;
		 StepElement_VolumeElementPurpose ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a kind of VolumeElementPurpose select type return 0

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") CaseMem;
		%feature("autodoc", "	* Recognizes a items of select member VolumeElementPurposeMember 1 -> EnumeratedVolumeElementPurpose 2 -> ApplicationDefinedElementPurpose 0 else

	:param ent:
	:type ent: Handle_StepData_SelectMember &
	:rtype: int
") CaseMem;
		virtual Standard_Integer CaseMem (const Handle_StepData_SelectMember & ent);
		%feature("compactdefaultargs") NewMember;
		%feature("autodoc", "	* Returns a new select member the type VolumeElementPurposeMember

	:rtype: Handle_StepData_SelectMember
") NewMember;
		virtual Handle_StepData_SelectMember NewMember ();
		%feature("compactdefaultargs") SetEnumeratedVolumeElementPurpose;
		%feature("autodoc", "	* Set Value for EnumeratedVolumeElementPurpose

	:param aVal:
	:type aVal: StepElement_EnumeratedVolumeElementPurpose
	:rtype: None
") SetEnumeratedVolumeElementPurpose;
		void SetEnumeratedVolumeElementPurpose (const StepElement_EnumeratedVolumeElementPurpose aVal);
		%feature("compactdefaultargs") EnumeratedVolumeElementPurpose;
		%feature("autodoc", "	* Returns Value as EnumeratedVolumeElementPurpose --or Null if another type--

	:rtype: StepElement_EnumeratedVolumeElementPurpose
") EnumeratedVolumeElementPurpose;
		StepElement_EnumeratedVolumeElementPurpose EnumeratedVolumeElementPurpose ();
		%feature("compactdefaultargs") SetApplicationDefinedElementPurpose;
		%feature("autodoc", "	* Set Value for ApplicationDefinedElementPurpose

	:param aVal:
	:type aVal: Handle_TCollection_HAsciiString &
	:rtype: None
") SetApplicationDefinedElementPurpose;
		void SetApplicationDefinedElementPurpose (const Handle_TCollection_HAsciiString & aVal);
		%feature("compactdefaultargs") ApplicationDefinedElementPurpose;
		%feature("autodoc", "	* Returns Value as ApplicationDefinedElementPurpose --or Null if another type--

	:rtype: Handle_TCollection_HAsciiString
") ApplicationDefinedElementPurpose;
		Handle_TCollection_HAsciiString ApplicationDefinedElementPurpose ();
};


%extend StepElement_VolumeElementPurpose {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_VolumeElementPurposeMember;
class StepElement_VolumeElementPurposeMember : public StepData_SelectNamed {
	public:
		%feature("compactdefaultargs") StepElement_VolumeElementPurposeMember;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_VolumeElementPurposeMember;
		 StepElement_VolumeElementPurposeMember ();
		%feature("compactdefaultargs") HasName;
		%feature("autodoc", "	* Returns True if has name

	:rtype: bool
") HasName;
		virtual Standard_Boolean HasName ();
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	* Returns set name

	:rtype: char *
") Name;
		virtual const char * Name ();
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	* Set name

	:param name:
	:type name: char *
	:rtype: bool
") SetName;
		virtual Standard_Boolean SetName (const char * name);
		%feature("compactdefaultargs") Matches;
		%feature("autodoc", "	* Tells if the name of a SelectMember matches a given one;

	:param name:
	:type name: char *
	:rtype: bool
") Matches;
		virtual Standard_Boolean Matches (const char * name);
};


%extend StepElement_VolumeElementPurposeMember {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepElement_VolumeElementPurposeMember(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepElement_VolumeElementPurposeMember::Handle_StepElement_VolumeElementPurposeMember %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepElement_VolumeElementPurposeMember;
class Handle_StepElement_VolumeElementPurposeMember : public Handle_StepData_SelectNamed {

    public:
        // constructors
        Handle_StepElement_VolumeElementPurposeMember();
        Handle_StepElement_VolumeElementPurposeMember(const Handle_StepElement_VolumeElementPurposeMember &aHandle);
        Handle_StepElement_VolumeElementPurposeMember(const StepElement_VolumeElementPurposeMember *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepElement_VolumeElementPurposeMember DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepElement_VolumeElementPurposeMember {
    StepElement_VolumeElementPurposeMember* _get_reference() {
    return (StepElement_VolumeElementPurposeMember*)$self->get();
    }
};

%extend Handle_StepElement_VolumeElementPurposeMember {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepElement_VolumeElementPurposeMember {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_Curve3dElementDescriptor;
class StepElement_Curve3dElementDescriptor : public StepElement_ElementDescriptor {
	public:
		%feature("compactdefaultargs") StepElement_Curve3dElementDescriptor;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_Curve3dElementDescriptor;
		 StepElement_Curve3dElementDescriptor ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aElementDescriptor_TopologyOrder:
	:type aElementDescriptor_TopologyOrder: StepElement_ElementOrder
	:param aElementDescriptor_Description:
	:type aElementDescriptor_Description: Handle_TCollection_HAsciiString &
	:param aPurpose:
	:type aPurpose: Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember &
	:rtype: None
") Init;
		void Init (const StepElement_ElementOrder aElementDescriptor_TopologyOrder,const Handle_TCollection_HAsciiString & aElementDescriptor_Description,const Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember & aPurpose);
		%feature("compactdefaultargs") Purpose;
		%feature("autodoc", "	* Returns field Purpose

	:rtype: Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember
") Purpose;
		Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember Purpose ();
		%feature("compactdefaultargs") SetPurpose;
		%feature("autodoc", "	* Set field Purpose

	:param Purpose:
	:type Purpose: Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember &
	:rtype: None
") SetPurpose;
		void SetPurpose (const Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember & Purpose);
};


%extend StepElement_Curve3dElementDescriptor {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepElement_Curve3dElementDescriptor(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepElement_Curve3dElementDescriptor::Handle_StepElement_Curve3dElementDescriptor %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepElement_Curve3dElementDescriptor;
class Handle_StepElement_Curve3dElementDescriptor : public Handle_StepElement_ElementDescriptor {

    public:
        // constructors
        Handle_StepElement_Curve3dElementDescriptor();
        Handle_StepElement_Curve3dElementDescriptor(const Handle_StepElement_Curve3dElementDescriptor &aHandle);
        Handle_StepElement_Curve3dElementDescriptor(const StepElement_Curve3dElementDescriptor *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepElement_Curve3dElementDescriptor DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepElement_Curve3dElementDescriptor {
    StepElement_Curve3dElementDescriptor* _get_reference() {
    return (StepElement_Curve3dElementDescriptor*)$self->get();
    }
};

%extend Handle_StepElement_Curve3dElementDescriptor {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepElement_Curve3dElementDescriptor {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_CurveElementSectionDerivedDefinitions;
class StepElement_CurveElementSectionDerivedDefinitions : public StepElement_CurveElementSectionDefinition {
	public:
		%feature("compactdefaultargs") StepElement_CurveElementSectionDerivedDefinitions;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_CurveElementSectionDerivedDefinitions;
		 StepElement_CurveElementSectionDerivedDefinitions ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aCurveElementSectionDefinition_Description:
	:type aCurveElementSectionDefinition_Description: Handle_TCollection_HAsciiString &
	:param aCurveElementSectionDefinition_SectionAngle:
	:type aCurveElementSectionDefinition_SectionAngle: float
	:param aCrossSectionalArea:
	:type aCrossSectionalArea: float
	:param aShearArea:
	:type aShearArea: Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue &
	:param aSecondMomentOfArea:
	:type aSecondMomentOfArea: Handle_TColStd_HArray1OfReal &
	:param aTorsionalConstant:
	:type aTorsionalConstant: float
	:param aWarpingConstant:
	:type aWarpingConstant: StepElement_MeasureOrUnspecifiedValue &
	:param aLocationOfCentroid:
	:type aLocationOfCentroid: Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue &
	:param aLocationOfShearCentre:
	:type aLocationOfShearCentre: Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue &
	:param aLocationOfNonStructuralMass:
	:type aLocationOfNonStructuralMass: Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue &
	:param aNonStructuralMass:
	:type aNonStructuralMass: StepElement_MeasureOrUnspecifiedValue &
	:param aPolarMoment:
	:type aPolarMoment: StepElement_MeasureOrUnspecifiedValue &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aCurveElementSectionDefinition_Description,const Standard_Real aCurveElementSectionDefinition_SectionAngle,const Standard_Real aCrossSectionalArea,const Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue & aShearArea,const Handle_TColStd_HArray1OfReal & aSecondMomentOfArea,const Standard_Real aTorsionalConstant,const StepElement_MeasureOrUnspecifiedValue & aWarpingConstant,const Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue & aLocationOfCentroid,const Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue & aLocationOfShearCentre,const Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue & aLocationOfNonStructuralMass,const StepElement_MeasureOrUnspecifiedValue & aNonStructuralMass,const StepElement_MeasureOrUnspecifiedValue & aPolarMoment);
		%feature("compactdefaultargs") CrossSectionalArea;
		%feature("autodoc", "	* Returns field CrossSectionalArea

	:rtype: float
") CrossSectionalArea;
		Standard_Real CrossSectionalArea ();
		%feature("compactdefaultargs") SetCrossSectionalArea;
		%feature("autodoc", "	* Set field CrossSectionalArea

	:param CrossSectionalArea:
	:type CrossSectionalArea: float
	:rtype: None
") SetCrossSectionalArea;
		void SetCrossSectionalArea (const Standard_Real CrossSectionalArea);
		%feature("compactdefaultargs") ShearArea;
		%feature("autodoc", "	* Returns field ShearArea

	:rtype: Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue
") ShearArea;
		Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue ShearArea ();
		%feature("compactdefaultargs") SetShearArea;
		%feature("autodoc", "	* Set field ShearArea

	:param ShearArea:
	:type ShearArea: Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue &
	:rtype: None
") SetShearArea;
		void SetShearArea (const Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue & ShearArea);
		%feature("compactdefaultargs") SecondMomentOfArea;
		%feature("autodoc", "	* Returns field SecondMomentOfArea

	:rtype: Handle_TColStd_HArray1OfReal
") SecondMomentOfArea;
		Handle_TColStd_HArray1OfReal SecondMomentOfArea ();
		%feature("compactdefaultargs") SetSecondMomentOfArea;
		%feature("autodoc", "	* Set field SecondMomentOfArea

	:param SecondMomentOfArea:
	:type SecondMomentOfArea: Handle_TColStd_HArray1OfReal &
	:rtype: None
") SetSecondMomentOfArea;
		void SetSecondMomentOfArea (const Handle_TColStd_HArray1OfReal & SecondMomentOfArea);
		%feature("compactdefaultargs") TorsionalConstant;
		%feature("autodoc", "	* Returns field TorsionalConstant

	:rtype: float
") TorsionalConstant;
		Standard_Real TorsionalConstant ();
		%feature("compactdefaultargs") SetTorsionalConstant;
		%feature("autodoc", "	* Set field TorsionalConstant

	:param TorsionalConstant:
	:type TorsionalConstant: float
	:rtype: None
") SetTorsionalConstant;
		void SetTorsionalConstant (const Standard_Real TorsionalConstant);
		%feature("compactdefaultargs") WarpingConstant;
		%feature("autodoc", "	* Returns field WarpingConstant

	:rtype: StepElement_MeasureOrUnspecifiedValue
") WarpingConstant;
		StepElement_MeasureOrUnspecifiedValue WarpingConstant ();
		%feature("compactdefaultargs") SetWarpingConstant;
		%feature("autodoc", "	* Set field WarpingConstant

	:param WarpingConstant:
	:type WarpingConstant: StepElement_MeasureOrUnspecifiedValue &
	:rtype: None
") SetWarpingConstant;
		void SetWarpingConstant (const StepElement_MeasureOrUnspecifiedValue & WarpingConstant);
		%feature("compactdefaultargs") LocationOfCentroid;
		%feature("autodoc", "	* Returns field LocationOfCentroid

	:rtype: Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue
") LocationOfCentroid;
		Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue LocationOfCentroid ();
		%feature("compactdefaultargs") SetLocationOfCentroid;
		%feature("autodoc", "	* Set field LocationOfCentroid

	:param LocationOfCentroid:
	:type LocationOfCentroid: Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue &
	:rtype: None
") SetLocationOfCentroid;
		void SetLocationOfCentroid (const Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue & LocationOfCentroid);
		%feature("compactdefaultargs") LocationOfShearCentre;
		%feature("autodoc", "	* Returns field LocationOfShearCentre

	:rtype: Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue
") LocationOfShearCentre;
		Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue LocationOfShearCentre ();
		%feature("compactdefaultargs") SetLocationOfShearCentre;
		%feature("autodoc", "	* Set field LocationOfShearCentre

	:param LocationOfShearCentre:
	:type LocationOfShearCentre: Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue &
	:rtype: None
") SetLocationOfShearCentre;
		void SetLocationOfShearCentre (const Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue & LocationOfShearCentre);
		%feature("compactdefaultargs") LocationOfNonStructuralMass;
		%feature("autodoc", "	* Returns field LocationOfNonStructuralMass

	:rtype: Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue
") LocationOfNonStructuralMass;
		Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue LocationOfNonStructuralMass ();
		%feature("compactdefaultargs") SetLocationOfNonStructuralMass;
		%feature("autodoc", "	* Set field LocationOfNonStructuralMass

	:param LocationOfNonStructuralMass:
	:type LocationOfNonStructuralMass: Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue &
	:rtype: None
") SetLocationOfNonStructuralMass;
		void SetLocationOfNonStructuralMass (const Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue & LocationOfNonStructuralMass);
		%feature("compactdefaultargs") NonStructuralMass;
		%feature("autodoc", "	* Returns field NonStructuralMass

	:rtype: StepElement_MeasureOrUnspecifiedValue
") NonStructuralMass;
		StepElement_MeasureOrUnspecifiedValue NonStructuralMass ();
		%feature("compactdefaultargs") SetNonStructuralMass;
		%feature("autodoc", "	* Set field NonStructuralMass

	:param NonStructuralMass:
	:type NonStructuralMass: StepElement_MeasureOrUnspecifiedValue &
	:rtype: None
") SetNonStructuralMass;
		void SetNonStructuralMass (const StepElement_MeasureOrUnspecifiedValue & NonStructuralMass);
		%feature("compactdefaultargs") PolarMoment;
		%feature("autodoc", "	* Returns field PolarMoment

	:rtype: StepElement_MeasureOrUnspecifiedValue
") PolarMoment;
		StepElement_MeasureOrUnspecifiedValue PolarMoment ();
		%feature("compactdefaultargs") SetPolarMoment;
		%feature("autodoc", "	* Set field PolarMoment

	:param PolarMoment:
	:type PolarMoment: StepElement_MeasureOrUnspecifiedValue &
	:rtype: None
") SetPolarMoment;
		void SetPolarMoment (const StepElement_MeasureOrUnspecifiedValue & PolarMoment);
};


%extend StepElement_CurveElementSectionDerivedDefinitions {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepElement_CurveElementSectionDerivedDefinitions(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepElement_CurveElementSectionDerivedDefinitions::Handle_StepElement_CurveElementSectionDerivedDefinitions %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepElement_CurveElementSectionDerivedDefinitions;
class Handle_StepElement_CurveElementSectionDerivedDefinitions : public Handle_StepElement_CurveElementSectionDefinition {

    public:
        // constructors
        Handle_StepElement_CurveElementSectionDerivedDefinitions();
        Handle_StepElement_CurveElementSectionDerivedDefinitions(const Handle_StepElement_CurveElementSectionDerivedDefinitions &aHandle);
        Handle_StepElement_CurveElementSectionDerivedDefinitions(const StepElement_CurveElementSectionDerivedDefinitions *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepElement_CurveElementSectionDerivedDefinitions DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepElement_CurveElementSectionDerivedDefinitions {
    StepElement_CurveElementSectionDerivedDefinitions* _get_reference() {
    return (StepElement_CurveElementSectionDerivedDefinitions*)$self->get();
    }
};

%extend Handle_StepElement_CurveElementSectionDerivedDefinitions {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepElement_CurveElementSectionDerivedDefinitions {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_Surface3dElementDescriptor;
class StepElement_Surface3dElementDescriptor : public StepElement_ElementDescriptor {
	public:
		%feature("compactdefaultargs") StepElement_Surface3dElementDescriptor;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_Surface3dElementDescriptor;
		 StepElement_Surface3dElementDescriptor ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aElementDescriptor_TopologyOrder:
	:type aElementDescriptor_TopologyOrder: StepElement_ElementOrder
	:param aElementDescriptor_Description:
	:type aElementDescriptor_Description: Handle_TCollection_HAsciiString &
	:param aPurpose:
	:type aPurpose: Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember &
	:param aShape:
	:type aShape: StepElement_Element2dShape
	:rtype: None
") Init;
		void Init (const StepElement_ElementOrder aElementDescriptor_TopologyOrder,const Handle_TCollection_HAsciiString & aElementDescriptor_Description,const Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember & aPurpose,const StepElement_Element2dShape aShape);
		%feature("compactdefaultargs") Purpose;
		%feature("autodoc", "	* Returns field Purpose

	:rtype: Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember
") Purpose;
		Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember Purpose ();
		%feature("compactdefaultargs") SetPurpose;
		%feature("autodoc", "	* Set field Purpose

	:param Purpose:
	:type Purpose: Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember &
	:rtype: None
") SetPurpose;
		void SetPurpose (const Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember & Purpose);
		%feature("compactdefaultargs") Shape;
		%feature("autodoc", "	* Returns field Shape

	:rtype: StepElement_Element2dShape
") Shape;
		StepElement_Element2dShape Shape ();
		%feature("compactdefaultargs") SetShape;
		%feature("autodoc", "	* Set field Shape

	:param Shape:
	:type Shape: StepElement_Element2dShape
	:rtype: None
") SetShape;
		void SetShape (const StepElement_Element2dShape Shape);
};


%extend StepElement_Surface3dElementDescriptor {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepElement_Surface3dElementDescriptor(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepElement_Surface3dElementDescriptor::Handle_StepElement_Surface3dElementDescriptor %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepElement_Surface3dElementDescriptor;
class Handle_StepElement_Surface3dElementDescriptor : public Handle_StepElement_ElementDescriptor {

    public:
        // constructors
        Handle_StepElement_Surface3dElementDescriptor();
        Handle_StepElement_Surface3dElementDescriptor(const Handle_StepElement_Surface3dElementDescriptor &aHandle);
        Handle_StepElement_Surface3dElementDescriptor(const StepElement_Surface3dElementDescriptor *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepElement_Surface3dElementDescriptor DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepElement_Surface3dElementDescriptor {
    StepElement_Surface3dElementDescriptor* _get_reference() {
    return (StepElement_Surface3dElementDescriptor*)$self->get();
    }
};

%extend Handle_StepElement_Surface3dElementDescriptor {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepElement_Surface3dElementDescriptor {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_SurfaceSectionFieldConstant;
class StepElement_SurfaceSectionFieldConstant : public StepElement_SurfaceSectionField {
	public:
		%feature("compactdefaultargs") StepElement_SurfaceSectionFieldConstant;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_SurfaceSectionFieldConstant;
		 StepElement_SurfaceSectionFieldConstant ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aDefinition:
	:type aDefinition: Handle_StepElement_SurfaceSection &
	:rtype: None
") Init;
		void Init (const Handle_StepElement_SurfaceSection & aDefinition);
		%feature("compactdefaultargs") Definition;
		%feature("autodoc", "	* Returns field Definition

	:rtype: Handle_StepElement_SurfaceSection
") Definition;
		Handle_StepElement_SurfaceSection Definition ();
		%feature("compactdefaultargs") SetDefinition;
		%feature("autodoc", "	* Set field Definition

	:param Definition:
	:type Definition: Handle_StepElement_SurfaceSection &
	:rtype: None
") SetDefinition;
		void SetDefinition (const Handle_StepElement_SurfaceSection & Definition);
};


%extend StepElement_SurfaceSectionFieldConstant {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepElement_SurfaceSectionFieldConstant(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepElement_SurfaceSectionFieldConstant::Handle_StepElement_SurfaceSectionFieldConstant %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepElement_SurfaceSectionFieldConstant;
class Handle_StepElement_SurfaceSectionFieldConstant : public Handle_StepElement_SurfaceSectionField {

    public:
        // constructors
        Handle_StepElement_SurfaceSectionFieldConstant();
        Handle_StepElement_SurfaceSectionFieldConstant(const Handle_StepElement_SurfaceSectionFieldConstant &aHandle);
        Handle_StepElement_SurfaceSectionFieldConstant(const StepElement_SurfaceSectionFieldConstant *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepElement_SurfaceSectionFieldConstant DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepElement_SurfaceSectionFieldConstant {
    StepElement_SurfaceSectionFieldConstant* _get_reference() {
    return (StepElement_SurfaceSectionFieldConstant*)$self->get();
    }
};

%extend Handle_StepElement_SurfaceSectionFieldConstant {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepElement_SurfaceSectionFieldConstant {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_SurfaceSectionFieldVarying;
class StepElement_SurfaceSectionFieldVarying : public StepElement_SurfaceSectionField {
	public:
		%feature("compactdefaultargs") StepElement_SurfaceSectionFieldVarying;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_SurfaceSectionFieldVarying;
		 StepElement_SurfaceSectionFieldVarying ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aDefinitions:
	:type aDefinitions: Handle_StepElement_HArray1OfSurfaceSection &
	:param aAdditionalNodeValues:
	:type aAdditionalNodeValues: bool
	:rtype: None
") Init;
		void Init (const Handle_StepElement_HArray1OfSurfaceSection & aDefinitions,const Standard_Boolean aAdditionalNodeValues);
		%feature("compactdefaultargs") Definitions;
		%feature("autodoc", "	* Returns field Definitions

	:rtype: Handle_StepElement_HArray1OfSurfaceSection
") Definitions;
		Handle_StepElement_HArray1OfSurfaceSection Definitions ();
		%feature("compactdefaultargs") SetDefinitions;
		%feature("autodoc", "	* Set field Definitions

	:param Definitions:
	:type Definitions: Handle_StepElement_HArray1OfSurfaceSection &
	:rtype: None
") SetDefinitions;
		void SetDefinitions (const Handle_StepElement_HArray1OfSurfaceSection & Definitions);
		%feature("compactdefaultargs") AdditionalNodeValues;
		%feature("autodoc", "	* Returns field AdditionalNodeValues

	:rtype: bool
") AdditionalNodeValues;
		Standard_Boolean AdditionalNodeValues ();
		%feature("compactdefaultargs") SetAdditionalNodeValues;
		%feature("autodoc", "	* Set field AdditionalNodeValues

	:param AdditionalNodeValues:
	:type AdditionalNodeValues: bool
	:rtype: None
") SetAdditionalNodeValues;
		void SetAdditionalNodeValues (const Standard_Boolean AdditionalNodeValues);
};


%extend StepElement_SurfaceSectionFieldVarying {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepElement_SurfaceSectionFieldVarying(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepElement_SurfaceSectionFieldVarying::Handle_StepElement_SurfaceSectionFieldVarying %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepElement_SurfaceSectionFieldVarying;
class Handle_StepElement_SurfaceSectionFieldVarying : public Handle_StepElement_SurfaceSectionField {

    public:
        // constructors
        Handle_StepElement_SurfaceSectionFieldVarying();
        Handle_StepElement_SurfaceSectionFieldVarying(const Handle_StepElement_SurfaceSectionFieldVarying &aHandle);
        Handle_StepElement_SurfaceSectionFieldVarying(const StepElement_SurfaceSectionFieldVarying *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepElement_SurfaceSectionFieldVarying DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepElement_SurfaceSectionFieldVarying {
    StepElement_SurfaceSectionFieldVarying* _get_reference() {
    return (StepElement_SurfaceSectionFieldVarying*)$self->get();
    }
};

%extend Handle_StepElement_SurfaceSectionFieldVarying {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepElement_SurfaceSectionFieldVarying {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_UniformSurfaceSection;
class StepElement_UniformSurfaceSection : public StepElement_SurfaceSection {
	public:
		%feature("compactdefaultargs") StepElement_UniformSurfaceSection;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_UniformSurfaceSection;
		 StepElement_UniformSurfaceSection ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aSurfaceSection_Offset:
	:type aSurfaceSection_Offset: StepElement_MeasureOrUnspecifiedValue &
	:param aSurfaceSection_NonStructuralMass:
	:type aSurfaceSection_NonStructuralMass: StepElement_MeasureOrUnspecifiedValue &
	:param aSurfaceSection_NonStructuralMassOffset:
	:type aSurfaceSection_NonStructuralMassOffset: StepElement_MeasureOrUnspecifiedValue &
	:param aThickness:
	:type aThickness: float
	:param aBendingThickness:
	:type aBendingThickness: StepElement_MeasureOrUnspecifiedValue &
	:param aShearThickness:
	:type aShearThickness: StepElement_MeasureOrUnspecifiedValue &
	:rtype: None
") Init;
		void Init (const StepElement_MeasureOrUnspecifiedValue & aSurfaceSection_Offset,const StepElement_MeasureOrUnspecifiedValue & aSurfaceSection_NonStructuralMass,const StepElement_MeasureOrUnspecifiedValue & aSurfaceSection_NonStructuralMassOffset,const Standard_Real aThickness,const StepElement_MeasureOrUnspecifiedValue & aBendingThickness,const StepElement_MeasureOrUnspecifiedValue & aShearThickness);
		%feature("compactdefaultargs") Thickness;
		%feature("autodoc", "	* Returns field Thickness

	:rtype: float
") Thickness;
		Standard_Real Thickness ();
		%feature("compactdefaultargs") SetThickness;
		%feature("autodoc", "	* Set field Thickness

	:param Thickness:
	:type Thickness: float
	:rtype: None
") SetThickness;
		void SetThickness (const Standard_Real Thickness);
		%feature("compactdefaultargs") BendingThickness;
		%feature("autodoc", "	* Returns field BendingThickness

	:rtype: StepElement_MeasureOrUnspecifiedValue
") BendingThickness;
		StepElement_MeasureOrUnspecifiedValue BendingThickness ();
		%feature("compactdefaultargs") SetBendingThickness;
		%feature("autodoc", "	* Set field BendingThickness

	:param BendingThickness:
	:type BendingThickness: StepElement_MeasureOrUnspecifiedValue &
	:rtype: None
") SetBendingThickness;
		void SetBendingThickness (const StepElement_MeasureOrUnspecifiedValue & BendingThickness);
		%feature("compactdefaultargs") ShearThickness;
		%feature("autodoc", "	* Returns field ShearThickness

	:rtype: StepElement_MeasureOrUnspecifiedValue
") ShearThickness;
		StepElement_MeasureOrUnspecifiedValue ShearThickness ();
		%feature("compactdefaultargs") SetShearThickness;
		%feature("autodoc", "	* Set field ShearThickness

	:param ShearThickness:
	:type ShearThickness: StepElement_MeasureOrUnspecifiedValue &
	:rtype: None
") SetShearThickness;
		void SetShearThickness (const StepElement_MeasureOrUnspecifiedValue & ShearThickness);
};


%extend StepElement_UniformSurfaceSection {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepElement_UniformSurfaceSection(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepElement_UniformSurfaceSection::Handle_StepElement_UniformSurfaceSection %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepElement_UniformSurfaceSection;
class Handle_StepElement_UniformSurfaceSection : public Handle_StepElement_SurfaceSection {

    public:
        // constructors
        Handle_StepElement_UniformSurfaceSection();
        Handle_StepElement_UniformSurfaceSection(const Handle_StepElement_UniformSurfaceSection &aHandle);
        Handle_StepElement_UniformSurfaceSection(const StepElement_UniformSurfaceSection *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepElement_UniformSurfaceSection DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepElement_UniformSurfaceSection {
    StepElement_UniformSurfaceSection* _get_reference() {
    return (StepElement_UniformSurfaceSection*)$self->get();
    }
};

%extend Handle_StepElement_UniformSurfaceSection {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepElement_UniformSurfaceSection {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepElement_Volume3dElementDescriptor;
class StepElement_Volume3dElementDescriptor : public StepElement_ElementDescriptor {
	public:
		%feature("compactdefaultargs") StepElement_Volume3dElementDescriptor;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepElement_Volume3dElementDescriptor;
		 StepElement_Volume3dElementDescriptor ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aElementDescriptor_TopologyOrder:
	:type aElementDescriptor_TopologyOrder: StepElement_ElementOrder
	:param aElementDescriptor_Description:
	:type aElementDescriptor_Description: Handle_TCollection_HAsciiString &
	:param aPurpose:
	:type aPurpose: Handle_StepElement_HArray1OfVolumeElementPurposeMember &
	:param aShape:
	:type aShape: StepElement_Volume3dElementShape
	:rtype: None
") Init;
		void Init (const StepElement_ElementOrder aElementDescriptor_TopologyOrder,const Handle_TCollection_HAsciiString & aElementDescriptor_Description,const Handle_StepElement_HArray1OfVolumeElementPurposeMember & aPurpose,const StepElement_Volume3dElementShape aShape);
		%feature("compactdefaultargs") Purpose;
		%feature("autodoc", "	* Returns field Purpose

	:rtype: Handle_StepElement_HArray1OfVolumeElementPurposeMember
") Purpose;
		Handle_StepElement_HArray1OfVolumeElementPurposeMember Purpose ();
		%feature("compactdefaultargs") SetPurpose;
		%feature("autodoc", "	* Set field Purpose

	:param Purpose:
	:type Purpose: Handle_StepElement_HArray1OfVolumeElementPurposeMember &
	:rtype: None
") SetPurpose;
		void SetPurpose (const Handle_StepElement_HArray1OfVolumeElementPurposeMember & Purpose);
		%feature("compactdefaultargs") Shape;
		%feature("autodoc", "	* Returns field Shape

	:rtype: StepElement_Volume3dElementShape
") Shape;
		StepElement_Volume3dElementShape Shape ();
		%feature("compactdefaultargs") SetShape;
		%feature("autodoc", "	* Set field Shape

	:param Shape:
	:type Shape: StepElement_Volume3dElementShape
	:rtype: None
") SetShape;
		void SetShape (const StepElement_Volume3dElementShape Shape);
};


%extend StepElement_Volume3dElementDescriptor {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepElement_Volume3dElementDescriptor(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepElement_Volume3dElementDescriptor::Handle_StepElement_Volume3dElementDescriptor %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepElement_Volume3dElementDescriptor;
class Handle_StepElement_Volume3dElementDescriptor : public Handle_StepElement_ElementDescriptor {

    public:
        // constructors
        Handle_StepElement_Volume3dElementDescriptor();
        Handle_StepElement_Volume3dElementDescriptor(const Handle_StepElement_Volume3dElementDescriptor &aHandle);
        Handle_StepElement_Volume3dElementDescriptor(const StepElement_Volume3dElementDescriptor *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepElement_Volume3dElementDescriptor DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepElement_Volume3dElementDescriptor {
    StepElement_Volume3dElementDescriptor* _get_reference() {
    return (StepElement_Volume3dElementDescriptor*)$self->get();
    }
};

%extend Handle_StepElement_Volume3dElementDescriptor {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepElement_Volume3dElementDescriptor {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
