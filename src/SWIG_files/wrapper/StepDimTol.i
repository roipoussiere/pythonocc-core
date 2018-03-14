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
%define STEPDIMTOLDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=STEPDIMTOLDOCSTRING) StepDimTol

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


%include StepDimTol_headers.i


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
/* end typedefs declaration */

/* templates */
%define Handle(Class) opencascade::handle<Class>
%enddef
%template(StepDimTol_Array1OfDatumReference) NCollection_Array1 <Handle(StepDimTol_DatumReference)>;
%template(StepDimTol_Array1OfDatumReferenceModifier) NCollection_Array1 <StepDimTol_DatumReferenceModifier>;
%template(StepDimTol_Array1OfDatumReferenceElement) NCollection_Array1 <Handle(StepDimTol_DatumReferenceElement)>;
%template(StepDimTol_Array1OfDatumReferenceCompartment) NCollection_Array1 <Handle(StepDimTol_DatumReferenceCompartment)>;
%template(StepDimTol_Array1OfDatumSystemOrReference) NCollection_Array1 <StepDimTol_DatumSystemOrReference>;
%template(StepDimTol_Array1OfToleranceZoneTarget) NCollection_Array1 <StepDimTol_ToleranceZoneTarget>;
%template(StepDimTol_Array1OfGeometricToleranceModifier) NCollection_Array1 <StepDimTol_GeometricToleranceModifier>;
/* end templates declaration */

/* public enums */
enum StepDimTol_LimitCondition {
	StepDimTol_MaximumMaterialCondition = 0,
	StepDimTol_LeastMaterialCondition = 1,
	StepDimTol_RegardlessOfFeatureSize = 2,
};

enum StepDimTol_GeometricToleranceType {
	StepDimTol_GTTAngularityTolerance = 0,
	StepDimTol_GTTCircularRunoutTolerance = 1,
	StepDimTol_GTTCoaxialityTolerance = 2,
	StepDimTol_GTTConcentricityTolerance = 3,
	StepDimTol_GTTCylindricityTolerance = 4,
	StepDimTol_GTTFlatnessTolerance = 5,
	StepDimTol_GTTLineProfileTolerance = 6,
	StepDimTol_GTTParallelismTolerance = 7,
	StepDimTol_GTTPerpendicularityTolerance = 8,
	StepDimTol_GTTPositionTolerance = 9,
	StepDimTol_GTTRoundnessTolerance = 10,
	StepDimTol_GTTStraightnessTolerance = 11,
	StepDimTol_GTTSurfaceProfileTolerance = 12,
	StepDimTol_GTTSymmetryTolerance = 13,
	StepDimTol_GTTTotalRunoutTolerance = 14,
};

enum StepDimTol_DatumReferenceModifierType {
	StepDimTol_CircularOrCylindrical = 0,
	StepDimTol_Distance = 1,
	StepDimTol_Projected = 2,
	StepDimTol_Spherical = 3,
};

enum StepDimTol_SimpleDatumReferenceModifier {
	StepDimTol_SDRMAnyCrossSection = 0,
	StepDimTol_SDRMAnyLongitudinalSection = 1,
	StepDimTol_SDRMBasic = 2,
	StepDimTol_SDRMContactingFeature = 3,
	StepDimTol_SDRMDegreeOfFreedomConstraintU = 4,
	StepDimTol_SDRMDegreeOfFreedomConstraintV = 5,
	StepDimTol_SDRMDegreeOfFreedomConstraintW = 6,
	StepDimTol_SDRMDegreeOfFreedomConstraintX = 7,
	StepDimTol_SDRMDegreeOfFreedomConstraintY = 8,
	StepDimTol_SDRMDegreeOfFreedomConstraintZ = 9,
	StepDimTol_SDRMDistanceVariable = 10,
	StepDimTol_SDRMFreeState = 11,
	StepDimTol_SDRMLeastMaterialRequirement = 12,
	StepDimTol_SDRMLine = 13,
	StepDimTol_SDRMMajorDiameter = 14,
	StepDimTol_SDRMMaximumMaterialRequirement = 15,
	StepDimTol_SDRMMinorDiameter = 16,
	StepDimTol_SDRMOrientation = 17,
	StepDimTol_SDRMPitchDiameter = 18,
	StepDimTol_SDRMPlane = 19,
	StepDimTol_SDRMPoint = 20,
	StepDimTol_SDRMTranslation = 21,
};

enum StepDimTol_AreaUnitType {
	StepDimTol_Circular = 0,
	StepDimTol_Rectangular = 1,
	StepDimTol_Square = 2,
};

enum StepDimTol_GeometricToleranceModifier {
	StepDimTol_GTMAnyCrossSection = 0,
	StepDimTol_GTMCommonZone = 1,
	StepDimTol_GTMEachRadialElement = 2,
	StepDimTol_GTMFreeState = 3,
	StepDimTol_GTMLeastMaterialRequirement = 4,
	StepDimTol_GTMLineElement = 5,
	StepDimTol_GTMMajorDiameter = 6,
	StepDimTol_GTMMaximumMaterialRequirement = 7,
	StepDimTol_GTMMinorDiameter = 8,
	StepDimTol_GTMNotConvex = 9,
	StepDimTol_GTMPitchDiameter = 10,
	StepDimTol_GTMReciprocityRequirement = 11,
	StepDimTol_GTMSeparateRequirement = 12,
	StepDimTol_GTMStatisticalTolerance = 13,
	StepDimTol_GTMTangentPlane = 14,
};

/* end public enums declaration */

%nodefaultctor StepDimTol_CommonDatum;
class StepDimTol_CommonDatum : public StepRepr_CompositeShapeAspect {
	public:
		%feature("compactdefaultargs") StepDimTol_CommonDatum;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_CommonDatum;
		 StepDimTol_CommonDatum ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param theShapeAspect_Name:
	:type theShapeAspect_Name: Handle_TCollection_HAsciiString &
	:param theShapeAspect_Description:
	:type theShapeAspect_Description: Handle_TCollection_HAsciiString &
	:param theShapeAspect_OfShape:
	:type theShapeAspect_OfShape: Handle_StepRepr_ProductDefinitionShape &
	:param theShapeAspect_ProductDefinitional:
	:type theShapeAspect_ProductDefinitional: StepData_Logical
	:param theDatum_Name:
	:type theDatum_Name: Handle_TCollection_HAsciiString &
	:param theDatum_Description:
	:type theDatum_Description: Handle_TCollection_HAsciiString &
	:param theDatum_OfShape:
	:type theDatum_OfShape: Handle_StepRepr_ProductDefinitionShape &
	:param theDatum_ProductDefinitional:
	:type theDatum_ProductDefinitional: StepData_Logical
	:param theDatum_Identification:
	:type theDatum_Identification: Handle_TCollection_HAsciiString &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theShapeAspect_Name,const Handle_TCollection_HAsciiString & theShapeAspect_Description,const Handle_StepRepr_ProductDefinitionShape & theShapeAspect_OfShape,const StepData_Logical theShapeAspect_ProductDefinitional,const Handle_TCollection_HAsciiString & theDatum_Name,const Handle_TCollection_HAsciiString & theDatum_Description,const Handle_StepRepr_ProductDefinitionShape & theDatum_OfShape,const StepData_Logical theDatum_ProductDefinitional,const Handle_TCollection_HAsciiString & theDatum_Identification);
		%feature("compactdefaultargs") Datum;
		%feature("autodoc", "	* Returns data for supertype Datum

	:rtype: Handle_StepDimTol_Datum
") Datum;
		Handle_StepDimTol_Datum Datum ();
		%feature("compactdefaultargs") SetDatum;
		%feature("autodoc", "	* Set data for supertype Datum

	:param theDatum:
	:type theDatum: Handle_StepDimTol_Datum &
	:rtype: None
") SetDatum;
		void SetDatum (const Handle_StepDimTol_Datum & theDatum);
};


%extend StepDimTol_CommonDatum {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_CommonDatum(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_CommonDatum::Handle_StepDimTol_CommonDatum %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_CommonDatum;
class Handle_StepDimTol_CommonDatum : public Handle_StepRepr_CompositeShapeAspect {

    public:
        // constructors
        Handle_StepDimTol_CommonDatum();
        Handle_StepDimTol_CommonDatum(const Handle_StepDimTol_CommonDatum &aHandle);
        Handle_StepDimTol_CommonDatum(const StepDimTol_CommonDatum *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_CommonDatum DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_CommonDatum {
    StepDimTol_CommonDatum* _get_reference() {
    return (StepDimTol_CommonDatum*)$self->get();
    }
};

%extend Handle_StepDimTol_CommonDatum {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_CommonDatum {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_Datum;
class StepDimTol_Datum : public StepRepr_ShapeAspect {
	public:
		%feature("compactdefaultargs") StepDimTol_Datum;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_Datum;
		 StepDimTol_Datum ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param theShapeAspect_Name:
	:type theShapeAspect_Name: Handle_TCollection_HAsciiString &
	:param theShapeAspect_Description:
	:type theShapeAspect_Description: Handle_TCollection_HAsciiString &
	:param theShapeAspect_OfShape:
	:type theShapeAspect_OfShape: Handle_StepRepr_ProductDefinitionShape &
	:param theShapeAspect_ProductDefinitional:
	:type theShapeAspect_ProductDefinitional: StepData_Logical
	:param theIdentification:
	:type theIdentification: Handle_TCollection_HAsciiString &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theShapeAspect_Name,const Handle_TCollection_HAsciiString & theShapeAspect_Description,const Handle_StepRepr_ProductDefinitionShape & theShapeAspect_OfShape,const StepData_Logical theShapeAspect_ProductDefinitional,const Handle_TCollection_HAsciiString & theIdentification);
		%feature("compactdefaultargs") Identification;
		%feature("autodoc", "	* Returns field Identification

	:rtype: Handle_TCollection_HAsciiString
") Identification;
		Handle_TCollection_HAsciiString Identification ();
		%feature("compactdefaultargs") SetIdentification;
		%feature("autodoc", "	* Set field Identification

	:param theIdentification:
	:type theIdentification: Handle_TCollection_HAsciiString &
	:rtype: None
") SetIdentification;
		void SetIdentification (const Handle_TCollection_HAsciiString & theIdentification);
};


%extend StepDimTol_Datum {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_Datum(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_Datum::Handle_StepDimTol_Datum %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_Datum;
class Handle_StepDimTol_Datum : public Handle_StepRepr_ShapeAspect {

    public:
        // constructors
        Handle_StepDimTol_Datum();
        Handle_StepDimTol_Datum(const Handle_StepDimTol_Datum &aHandle);
        Handle_StepDimTol_Datum(const StepDimTol_Datum *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_Datum DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_Datum {
    StepDimTol_Datum* _get_reference() {
    return (StepDimTol_Datum*)$self->get();
    }
};

%extend Handle_StepDimTol_Datum {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_Datum {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_DatumFeature;
class StepDimTol_DatumFeature : public StepRepr_ShapeAspect {
	public:
		%feature("compactdefaultargs") StepDimTol_DatumFeature;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_DatumFeature;
		 StepDimTol_DatumFeature ();
};


%extend StepDimTol_DatumFeature {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_DatumFeature(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_DatumFeature::Handle_StepDimTol_DatumFeature %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_DatumFeature;
class Handle_StepDimTol_DatumFeature : public Handle_StepRepr_ShapeAspect {

    public:
        // constructors
        Handle_StepDimTol_DatumFeature();
        Handle_StepDimTol_DatumFeature(const Handle_StepDimTol_DatumFeature &aHandle);
        Handle_StepDimTol_DatumFeature(const StepDimTol_DatumFeature *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_DatumFeature DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_DatumFeature {
    StepDimTol_DatumFeature* _get_reference() {
    return (StepDimTol_DatumFeature*)$self->get();
    }
};

%extend Handle_StepDimTol_DatumFeature {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_DatumFeature {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_DatumOrCommonDatum;
class StepDimTol_DatumOrCommonDatum : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepDimTol_DatumOrCommonDatum;
		%feature("autodoc", "	* Returns a DatumOrCommonDatum select type

	:rtype: None
") StepDimTol_DatumOrCommonDatum;
		 StepDimTol_DatumOrCommonDatum ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a DatumOrCommonDatum Kind Entity that is : 1 -> Datum 2 -> CommonDatumList 0 else

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") Datum;
		%feature("autodoc", "	* returns Value as a Datum --Null if another type--

	:rtype: Handle_StepDimTol_Datum
") Datum;
		Handle_StepDimTol_Datum Datum ();
		%feature("compactdefaultargs") CommonDatumList;
		%feature("autodoc", "	* returns Value as a CommonDatumList --Null if another type--

	:rtype: Handle_StepDimTol_HArray1OfDatumReferenceElement
") CommonDatumList;
		Handle_StepDimTol_HArray1OfDatumReferenceElement CommonDatumList ();
};


%extend StepDimTol_DatumOrCommonDatum {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_DatumReference;
class StepDimTol_DatumReference : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepDimTol_DatumReference;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_DatumReference;
		 StepDimTol_DatumReference ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param thePrecedence:
	:type thePrecedence: int
	:param theReferencedDatum:
	:type theReferencedDatum: Handle_StepDimTol_Datum &
	:rtype: None
") Init;
		void Init (const Standard_Integer thePrecedence,const Handle_StepDimTol_Datum & theReferencedDatum);
		%feature("compactdefaultargs") Precedence;
		%feature("autodoc", "	* Returns field Precedence

	:rtype: int
") Precedence;
		Standard_Integer Precedence ();
		%feature("compactdefaultargs") SetPrecedence;
		%feature("autodoc", "	* Set field Precedence

	:param thePrecedence:
	:type thePrecedence: int
	:rtype: None
") SetPrecedence;
		void SetPrecedence (const Standard_Integer thePrecedence);
		%feature("compactdefaultargs") ReferencedDatum;
		%feature("autodoc", "	* Returns field ReferencedDatum

	:rtype: Handle_StepDimTol_Datum
") ReferencedDatum;
		Handle_StepDimTol_Datum ReferencedDatum ();
		%feature("compactdefaultargs") SetReferencedDatum;
		%feature("autodoc", "	* Set field ReferencedDatum

	:param theReferencedDatum:
	:type theReferencedDatum: Handle_StepDimTol_Datum &
	:rtype: None
") SetReferencedDatum;
		void SetReferencedDatum (const Handle_StepDimTol_Datum & theReferencedDatum);
};


%extend StepDimTol_DatumReference {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_DatumReference(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_DatumReference::Handle_StepDimTol_DatumReference %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_DatumReference;
class Handle_StepDimTol_DatumReference : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepDimTol_DatumReference();
        Handle_StepDimTol_DatumReference(const Handle_StepDimTol_DatumReference &aHandle);
        Handle_StepDimTol_DatumReference(const StepDimTol_DatumReference *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_DatumReference DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_DatumReference {
    StepDimTol_DatumReference* _get_reference() {
    return (StepDimTol_DatumReference*)$self->get();
    }
};

%extend Handle_StepDimTol_DatumReference {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_DatumReference {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_DatumReferenceModifier;
class StepDimTol_DatumReferenceModifier : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepDimTol_DatumReferenceModifier;
		%feature("autodoc", "	* Returns a DatumReferenceModifier select type

	:rtype: None
") StepDimTol_DatumReferenceModifier;
		 StepDimTol_DatumReferenceModifier ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a DatumReferenceModifier Kind Entity that is : 1 -> DatumReferenceModifierWithValue 2 -> SimpleDatumReferenceModifierMember 0 else

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") DatumReferenceModifierWithValue;
		%feature("autodoc", "	* returns Value as a DatumReferenceModifierWithValue --Null if another type--

	:rtype: Handle_StepDimTol_DatumReferenceModifierWithValue
") DatumReferenceModifierWithValue;
		Handle_StepDimTol_DatumReferenceModifierWithValue DatumReferenceModifierWithValue ();
		%feature("compactdefaultargs") SimpleDatumReferenceModifierMember;
		%feature("autodoc", "	* returns Value as a SimpleDatumReferenceModifierMember --Null if another type--

	:rtype: Handle_StepDimTol_SimpleDatumReferenceModifierMember
") SimpleDatumReferenceModifierMember;
		Handle_StepDimTol_SimpleDatumReferenceModifierMember SimpleDatumReferenceModifierMember ();
};


%extend StepDimTol_DatumReferenceModifier {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_DatumReferenceModifierWithValue;
class StepDimTol_DatumReferenceModifierWithValue : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepDimTol_DatumReferenceModifierWithValue;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_DatumReferenceModifierWithValue;
		 StepDimTol_DatumReferenceModifierWithValue ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param theModifierType:
	:type theModifierType: StepDimTol_DatumReferenceModifierType &
	:param theModifierValue:
	:type theModifierValue: Handle_StepBasic_LengthMeasureWithUnit &
	:rtype: None
") Init;
		void Init (const StepDimTol_DatumReferenceModifierType & theModifierType,const Handle_StepBasic_LengthMeasureWithUnit & theModifierValue);
		%feature("compactdefaultargs") ModifierType;
		%feature("autodoc", "	* Returns field ModifierType

	:rtype: inline StepDimTol_DatumReferenceModifierType
") ModifierType;
		inline StepDimTol_DatumReferenceModifierType ModifierType ();
		%feature("compactdefaultargs") SetModifierType;
		%feature("autodoc", "	* Set field ModifierType

	:param theModifierType:
	:type theModifierType: StepDimTol_DatumReferenceModifierType &
	:rtype: inline void
") SetModifierType;
		inline void SetModifierType (const StepDimTol_DatumReferenceModifierType & theModifierType);
		%feature("compactdefaultargs") ModifierValue;
		%feature("autodoc", "	* Returns field ModifierValue

	:rtype: inline Handle_StepBasic_LengthMeasureWithUnit
") ModifierValue;
		inline Handle_StepBasic_LengthMeasureWithUnit ModifierValue ();
		%feature("compactdefaultargs") SetModifierValue;
		%feature("autodoc", "	* Set field ModifierValue

	:param theModifierValue:
	:type theModifierValue: Handle_StepBasic_LengthMeasureWithUnit &
	:rtype: inline void
") SetModifierValue;
		inline void SetModifierValue (const Handle_StepBasic_LengthMeasureWithUnit & theModifierValue);
};


%extend StepDimTol_DatumReferenceModifierWithValue {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_DatumReferenceModifierWithValue(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_DatumReferenceModifierWithValue::Handle_StepDimTol_DatumReferenceModifierWithValue %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_DatumReferenceModifierWithValue;
class Handle_StepDimTol_DatumReferenceModifierWithValue : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepDimTol_DatumReferenceModifierWithValue();
        Handle_StepDimTol_DatumReferenceModifierWithValue(const Handle_StepDimTol_DatumReferenceModifierWithValue &aHandle);
        Handle_StepDimTol_DatumReferenceModifierWithValue(const StepDimTol_DatumReferenceModifierWithValue *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_DatumReferenceModifierWithValue DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_DatumReferenceModifierWithValue {
    StepDimTol_DatumReferenceModifierWithValue* _get_reference() {
    return (StepDimTol_DatumReferenceModifierWithValue*)$self->get();
    }
};

%extend Handle_StepDimTol_DatumReferenceModifierWithValue {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_DatumReferenceModifierWithValue {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_DatumSystem;
class StepDimTol_DatumSystem : public StepRepr_ShapeAspect {
	public:
		%feature("compactdefaultargs") StepDimTol_DatumSystem;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_DatumSystem;
		 StepDimTol_DatumSystem ();
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
	:param theConstituents:
	:type theConstituents: Handle_StepDimTol_HArray1OfDatumReferenceCompartment &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theName,const Handle_TCollection_HAsciiString & theDescription,const Handle_StepRepr_ProductDefinitionShape & theOfShape,const StepData_Logical theProductDefinitional,const Handle_StepDimTol_HArray1OfDatumReferenceCompartment & theConstituents);
		%feature("compactdefaultargs") Constituents;
		%feature("autodoc", "	* Returns field Constituents

	:rtype: inline Handle_StepDimTol_HArray1OfDatumReferenceCompartment
") Constituents;
		inline Handle_StepDimTol_HArray1OfDatumReferenceCompartment Constituents ();
		%feature("compactdefaultargs") SetConstituents;
		%feature("autodoc", "	* Set field Constituents

	:param theConstituents:
	:type theConstituents: Handle_StepDimTol_HArray1OfDatumReferenceCompartment &
	:rtype: inline void
") SetConstituents;
		inline void SetConstituents (const Handle_StepDimTol_HArray1OfDatumReferenceCompartment & theConstituents);
		%feature("compactdefaultargs") NbConstituents;
		%feature("autodoc", "	* Returns number of Constituents

	:rtype: inline int
") NbConstituents;
		inline Standard_Integer NbConstituents ();
		%feature("compactdefaultargs") ConstituentsValue;
		%feature("autodoc", "	* Returns Constituents with the given number

	:param num:
	:type num: int
	:rtype: inline Handle_StepDimTol_DatumReferenceCompartment
") ConstituentsValue;
		inline Handle_StepDimTol_DatumReferenceCompartment ConstituentsValue (const Standard_Integer num);
		%feature("compactdefaultargs") ConstituentsValue;
		%feature("autodoc", "	* Sets Constituents with given number

	:param num:
	:type num: int
	:param theItem:
	:type theItem: Handle_StepDimTol_DatumReferenceCompartment &
	:rtype: inline void
") ConstituentsValue;
		inline void ConstituentsValue (const Standard_Integer num,const Handle_StepDimTol_DatumReferenceCompartment & theItem);
};


%extend StepDimTol_DatumSystem {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_DatumSystem(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_DatumSystem::Handle_StepDimTol_DatumSystem %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_DatumSystem;
class Handle_StepDimTol_DatumSystem : public Handle_StepRepr_ShapeAspect {

    public:
        // constructors
        Handle_StepDimTol_DatumSystem();
        Handle_StepDimTol_DatumSystem(const Handle_StepDimTol_DatumSystem &aHandle);
        Handle_StepDimTol_DatumSystem(const StepDimTol_DatumSystem *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_DatumSystem DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_DatumSystem {
    StepDimTol_DatumSystem* _get_reference() {
    return (StepDimTol_DatumSystem*)$self->get();
    }
};

%extend Handle_StepDimTol_DatumSystem {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_DatumSystem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_DatumSystemOrReference;
class StepDimTol_DatumSystemOrReference : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepDimTol_DatumSystemOrReference;
		%feature("autodoc", "	* Returns a DatumSystemOrReference select type

	:rtype: None
") StepDimTol_DatumSystemOrReference;
		 StepDimTol_DatumSystemOrReference ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a DatumSystemOrReference Kind Entity that is : 1 -> DatumSystem 2 -> DatumReference 0 else

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") DatumSystem;
		%feature("autodoc", "	* returns Value as a DatumSystem --Null if another type--

	:rtype: Handle_StepDimTol_DatumSystem
") DatumSystem;
		Handle_StepDimTol_DatumSystem DatumSystem ();
		%feature("compactdefaultargs") DatumReference;
		%feature("autodoc", "	* returns Value as a DatumReference --Null if another type--

	:rtype: Handle_StepDimTol_DatumReference
") DatumReference;
		Handle_StepDimTol_DatumReference DatumReference ();
};


%extend StepDimTol_DatumSystemOrReference {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_DatumTarget;
class StepDimTol_DatumTarget : public StepRepr_ShapeAspect {
	public:
		%feature("compactdefaultargs") StepDimTol_DatumTarget;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_DatumTarget;
		 StepDimTol_DatumTarget ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param theShapeAspect_Name:
	:type theShapeAspect_Name: Handle_TCollection_HAsciiString &
	:param theShapeAspect_Description:
	:type theShapeAspect_Description: Handle_TCollection_HAsciiString &
	:param theShapeAspect_OfShape:
	:type theShapeAspect_OfShape: Handle_StepRepr_ProductDefinitionShape &
	:param theShapeAspect_ProductDefinitional:
	:type theShapeAspect_ProductDefinitional: StepData_Logical
	:param theTargetId:
	:type theTargetId: Handle_TCollection_HAsciiString &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theShapeAspect_Name,const Handle_TCollection_HAsciiString & theShapeAspect_Description,const Handle_StepRepr_ProductDefinitionShape & theShapeAspect_OfShape,const StepData_Logical theShapeAspect_ProductDefinitional,const Handle_TCollection_HAsciiString & theTargetId);
		%feature("compactdefaultargs") TargetId;
		%feature("autodoc", "	* Returns field TargetId

	:rtype: Handle_TCollection_HAsciiString
") TargetId;
		Handle_TCollection_HAsciiString TargetId ();
		%feature("compactdefaultargs") SetTargetId;
		%feature("autodoc", "	* Set field TargetId

	:param theTargetId:
	:type theTargetId: Handle_TCollection_HAsciiString &
	:rtype: None
") SetTargetId;
		void SetTargetId (const Handle_TCollection_HAsciiString & theTargetId);
};


%extend StepDimTol_DatumTarget {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_DatumTarget(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_DatumTarget::Handle_StepDimTol_DatumTarget %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_DatumTarget;
class Handle_StepDimTol_DatumTarget : public Handle_StepRepr_ShapeAspect {

    public:
        // constructors
        Handle_StepDimTol_DatumTarget();
        Handle_StepDimTol_DatumTarget(const Handle_StepDimTol_DatumTarget &aHandle);
        Handle_StepDimTol_DatumTarget(const StepDimTol_DatumTarget *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_DatumTarget DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_DatumTarget {
    StepDimTol_DatumTarget* _get_reference() {
    return (StepDimTol_DatumTarget*)$self->get();
    }
};

%extend Handle_StepDimTol_DatumTarget {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_DatumTarget {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_GeneralDatumReference;
class StepDimTol_GeneralDatumReference : public StepRepr_ShapeAspect {
	public:
		%feature("compactdefaultargs") StepDimTol_GeneralDatumReference;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_GeneralDatumReference;
		 StepDimTol_GeneralDatumReference ();
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
	:param theBase:
	:type theBase: StepDimTol_DatumOrCommonDatum &
	:param theHasModifiers:
	:type theHasModifiers: bool
	:param theModifiers:
	:type theModifiers: Handle_StepDimTol_HArray1OfDatumReferenceModifier &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theName,const Handle_TCollection_HAsciiString & theDescription,const Handle_StepRepr_ProductDefinitionShape & theOfShape,const StepData_Logical theProductDefinitional,const StepDimTol_DatumOrCommonDatum & theBase,const Standard_Boolean theHasModifiers,const Handle_StepDimTol_HArray1OfDatumReferenceModifier & theModifiers);
		%feature("compactdefaultargs") Base;
		%feature("autodoc", "	* Returns field Base

	:rtype: inline StepDimTol_DatumOrCommonDatum
") Base;
		inline StepDimTol_DatumOrCommonDatum Base ();
		%feature("compactdefaultargs") SetBase;
		%feature("autodoc", "	* Set field Base

	:param theBase:
	:type theBase: StepDimTol_DatumOrCommonDatum &
	:rtype: inline void
") SetBase;
		inline void SetBase (const StepDimTol_DatumOrCommonDatum & theBase);
		%feature("compactdefaultargs") HasModifiers;
		%feature("autodoc", "	* Indicates is field Modifiers exist

	:rtype: inline bool
") HasModifiers;
		inline Standard_Boolean HasModifiers ();
		%feature("compactdefaultargs") Modifiers;
		%feature("autodoc", "	* Returns field Modifiers

	:rtype: inline Handle_StepDimTol_HArray1OfDatumReferenceModifier
") Modifiers;
		inline Handle_StepDimTol_HArray1OfDatumReferenceModifier Modifiers ();
		%feature("compactdefaultargs") SetModifiers;
		%feature("autodoc", "	* Set field Modifiers

	:param theModifiers:
	:type theModifiers: Handle_StepDimTol_HArray1OfDatumReferenceModifier &
	:rtype: inline void
") SetModifiers;
		inline void SetModifiers (const Handle_StepDimTol_HArray1OfDatumReferenceModifier & theModifiers);
		%feature("compactdefaultargs") NbModifiers;
		%feature("autodoc", "	* Returns number of Modifiers

	:rtype: inline int
") NbModifiers;
		inline Standard_Integer NbModifiers ();
		%feature("compactdefaultargs") ModifiersValue;
		%feature("autodoc", "	* Returns Modifiers with the given number

	:param theNum:
	:type theNum: int
	:rtype: inline StepDimTol_DatumReferenceModifier
") ModifiersValue;
		inline StepDimTol_DatumReferenceModifier ModifiersValue (const Standard_Integer theNum);
		%feature("compactdefaultargs") ModifiersValue;
		%feature("autodoc", "	* Sets Modifiers with given number

	:param theNum:
	:type theNum: int
	:param theItem:
	:type theItem: StepDimTol_DatumReferenceModifier &
	:rtype: inline void
") ModifiersValue;
		inline void ModifiersValue (const Standard_Integer theNum,const StepDimTol_DatumReferenceModifier & theItem);
};


%extend StepDimTol_GeneralDatumReference {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_GeneralDatumReference(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_GeneralDatumReference::Handle_StepDimTol_GeneralDatumReference %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_GeneralDatumReference;
class Handle_StepDimTol_GeneralDatumReference : public Handle_StepRepr_ShapeAspect {

    public:
        // constructors
        Handle_StepDimTol_GeneralDatumReference();
        Handle_StepDimTol_GeneralDatumReference(const Handle_StepDimTol_GeneralDatumReference &aHandle);
        Handle_StepDimTol_GeneralDatumReference(const StepDimTol_GeneralDatumReference *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_GeneralDatumReference DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_GeneralDatumReference {
    StepDimTol_GeneralDatumReference* _get_reference() {
    return (StepDimTol_GeneralDatumReference*)$self->get();
    }
};

%extend Handle_StepDimTol_GeneralDatumReference {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_GeneralDatumReference {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_GeometricTolerance;
class StepDimTol_GeometricTolerance : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepDimTol_GeometricTolerance;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_GeometricTolerance;
		 StepDimTol_GeometricTolerance ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited-- AP214

	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:param theDescription:
	:type theDescription: Handle_TCollection_HAsciiString &
	:param theMagnitude:
	:type theMagnitude: Handle_StepBasic_MeasureWithUnit &
	:param theTolerancedShapeAspect:
	:type theTolerancedShapeAspect: Handle_StepRepr_ShapeAspect &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theName,const Handle_TCollection_HAsciiString & theDescription,const Handle_StepBasic_MeasureWithUnit & theMagnitude,const Handle_StepRepr_ShapeAspect & theTolerancedShapeAspect);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited-- AP242

	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:param theDescription:
	:type theDescription: Handle_TCollection_HAsciiString &
	:param theMagnitude:
	:type theMagnitude: Handle_StepBasic_MeasureWithUnit &
	:param theTolerancedShapeAspect:
	:type theTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theName,const Handle_TCollection_HAsciiString & theDescription,const Handle_StepBasic_MeasureWithUnit & theMagnitude,const StepDimTol_GeometricToleranceTarget & theTolerancedShapeAspect);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	* Returns field Name

	:rtype: Handle_TCollection_HAsciiString
") Name;
		Handle_TCollection_HAsciiString Name ();
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	* Set field Name

	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:rtype: None
") SetName;
		void SetName (const Handle_TCollection_HAsciiString & theName);
		%feature("compactdefaultargs") Description;
		%feature("autodoc", "	* Returns field Description

	:rtype: Handle_TCollection_HAsciiString
") Description;
		Handle_TCollection_HAsciiString Description ();
		%feature("compactdefaultargs") SetDescription;
		%feature("autodoc", "	* Set field Description

	:param theDescription:
	:type theDescription: Handle_TCollection_HAsciiString &
	:rtype: None
") SetDescription;
		void SetDescription (const Handle_TCollection_HAsciiString & theDescription);
		%feature("compactdefaultargs") Magnitude;
		%feature("autodoc", "	* Returns field Magnitude

	:rtype: Handle_StepBasic_MeasureWithUnit
") Magnitude;
		Handle_StepBasic_MeasureWithUnit Magnitude ();
		%feature("compactdefaultargs") SetMagnitude;
		%feature("autodoc", "	* Set field Magnitude

	:param theMagnitude:
	:type theMagnitude: Handle_StepBasic_MeasureWithUnit &
	:rtype: None
") SetMagnitude;
		void SetMagnitude (const Handle_StepBasic_MeasureWithUnit & theMagnitude);
		%feature("compactdefaultargs") TolerancedShapeAspect;
		%feature("autodoc", "	* Returns field TolerancedShapeAspect Note: in AP214--203-- type of this attribute can be only StepRepr_ShapeAspect

	:rtype: StepDimTol_GeometricToleranceTarget
") TolerancedShapeAspect;
		StepDimTol_GeometricToleranceTarget TolerancedShapeAspect ();
		%feature("compactdefaultargs") SetTolerancedShapeAspect;
		%feature("autodoc", "	* Set field TolerancedShapeAspect AP214

	:param theTolerancedShapeAspect:
	:type theTolerancedShapeAspect: Handle_StepRepr_ShapeAspect &
	:rtype: None
") SetTolerancedShapeAspect;
		void SetTolerancedShapeAspect (const Handle_StepRepr_ShapeAspect & theTolerancedShapeAspect);
		%feature("compactdefaultargs") SetTolerancedShapeAspect;
		%feature("autodoc", "	* Set field TolerancedShapeAspect AP242

	:param theTolerancedShapeAspect:
	:type theTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget &
	:rtype: None
") SetTolerancedShapeAspect;
		void SetTolerancedShapeAspect (const StepDimTol_GeometricToleranceTarget & theTolerancedShapeAspect);
};


%extend StepDimTol_GeometricTolerance {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_GeometricTolerance(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_GeometricTolerance::Handle_StepDimTol_GeometricTolerance %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_GeometricTolerance;
class Handle_StepDimTol_GeometricTolerance : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepDimTol_GeometricTolerance();
        Handle_StepDimTol_GeometricTolerance(const Handle_StepDimTol_GeometricTolerance &aHandle);
        Handle_StepDimTol_GeometricTolerance(const StepDimTol_GeometricTolerance *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_GeometricTolerance DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_GeometricTolerance {
    StepDimTol_GeometricTolerance* _get_reference() {
    return (StepDimTol_GeometricTolerance*)$self->get();
    }
};

%extend Handle_StepDimTol_GeometricTolerance {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_GeometricTolerance {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_GeometricToleranceRelationship;
class StepDimTol_GeometricToleranceRelationship : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepDimTol_GeometricToleranceRelationship;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_GeometricToleranceRelationship;
		 StepDimTol_GeometricToleranceRelationship ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:param theDescription:
	:type theDescription: Handle_TCollection_HAsciiString &
	:param theRelatingGeometricTolerance:
	:type theRelatingGeometricTolerance: Handle_StepDimTol_GeometricTolerance &
	:param theRelatedGeometricTolerance:
	:type theRelatedGeometricTolerance: Handle_StepDimTol_GeometricTolerance &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theName,const Handle_TCollection_HAsciiString & theDescription,const Handle_StepDimTol_GeometricTolerance & theRelatingGeometricTolerance,const Handle_StepDimTol_GeometricTolerance & theRelatedGeometricTolerance);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	* Returns field Name

	:rtype: Handle_TCollection_HAsciiString
") Name;
		Handle_TCollection_HAsciiString Name ();
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	* Set field Name

	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:rtype: None
") SetName;
		void SetName (const Handle_TCollection_HAsciiString & theName);
		%feature("compactdefaultargs") Description;
		%feature("autodoc", "	* Returns field Description

	:rtype: Handle_TCollection_HAsciiString
") Description;
		Handle_TCollection_HAsciiString Description ();
		%feature("compactdefaultargs") SetDescription;
		%feature("autodoc", "	* Set field Description

	:param theDescription:
	:type theDescription: Handle_TCollection_HAsciiString &
	:rtype: None
") SetDescription;
		void SetDescription (const Handle_TCollection_HAsciiString & theDescription);
		%feature("compactdefaultargs") RelatingGeometricTolerance;
		%feature("autodoc", "	* Returns field RelatingGeometricTolerance

	:rtype: Handle_StepDimTol_GeometricTolerance
") RelatingGeometricTolerance;
		Handle_StepDimTol_GeometricTolerance RelatingGeometricTolerance ();
		%feature("compactdefaultargs") SetRelatingGeometricTolerance;
		%feature("autodoc", "	* Set field RelatingGeometricTolerance

	:param theRelatingGeometricTolerance:
	:type theRelatingGeometricTolerance: Handle_StepDimTol_GeometricTolerance &
	:rtype: None
") SetRelatingGeometricTolerance;
		void SetRelatingGeometricTolerance (const Handle_StepDimTol_GeometricTolerance & theRelatingGeometricTolerance);
		%feature("compactdefaultargs") RelatedGeometricTolerance;
		%feature("autodoc", "	* Returns field RelatedGeometricTolerance

	:rtype: Handle_StepDimTol_GeometricTolerance
") RelatedGeometricTolerance;
		Handle_StepDimTol_GeometricTolerance RelatedGeometricTolerance ();
		%feature("compactdefaultargs") SetRelatedGeometricTolerance;
		%feature("autodoc", "	* Set field RelatedGeometricTolerance

	:param theRelatedGeometricTolerance:
	:type theRelatedGeometricTolerance: Handle_StepDimTol_GeometricTolerance &
	:rtype: None
") SetRelatedGeometricTolerance;
		void SetRelatedGeometricTolerance (const Handle_StepDimTol_GeometricTolerance & theRelatedGeometricTolerance);
};


%extend StepDimTol_GeometricToleranceRelationship {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_GeometricToleranceRelationship(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_GeometricToleranceRelationship::Handle_StepDimTol_GeometricToleranceRelationship %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_GeometricToleranceRelationship;
class Handle_StepDimTol_GeometricToleranceRelationship : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepDimTol_GeometricToleranceRelationship();
        Handle_StepDimTol_GeometricToleranceRelationship(const Handle_StepDimTol_GeometricToleranceRelationship &aHandle);
        Handle_StepDimTol_GeometricToleranceRelationship(const StepDimTol_GeometricToleranceRelationship *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_GeometricToleranceRelationship DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_GeometricToleranceRelationship {
    StepDimTol_GeometricToleranceRelationship* _get_reference() {
    return (StepDimTol_GeometricToleranceRelationship*)$self->get();
    }
};

%extend Handle_StepDimTol_GeometricToleranceRelationship {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_GeometricToleranceRelationship {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_GeometricToleranceTarget;
class StepDimTol_GeometricToleranceTarget : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepDimTol_GeometricToleranceTarget;
		%feature("autodoc", "	* Returns a GeometricToleranceTarget select type

	:rtype: None
") StepDimTol_GeometricToleranceTarget;
		 StepDimTol_GeometricToleranceTarget ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a GeometricToleranceTarget Kind Entity that is : 1 -> DimensionalLocation 2 -> DimensionalSize 3 -> ProductDefinitionShape 4 -> ShapeAspect 0 else

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") DimensionalLocation;
		%feature("autodoc", "	* returns Value as a DimensionalLocation --Null if another type--

	:rtype: Handle_StepShape_DimensionalLocation
") DimensionalLocation;
		Handle_StepShape_DimensionalLocation DimensionalLocation ();
		%feature("compactdefaultargs") DimensionalSize;
		%feature("autodoc", "	* returns Value as a DimensionalSize --Null if another type--

	:rtype: Handle_StepShape_DimensionalSize
") DimensionalSize;
		Handle_StepShape_DimensionalSize DimensionalSize ();
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
};


%extend StepDimTol_GeometricToleranceTarget {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_RunoutZoneOrientation;
class StepDimTol_RunoutZoneOrientation : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepDimTol_RunoutZoneOrientation;
		%feature("autodoc", "	:rtype: None
") StepDimTol_RunoutZoneOrientation;
		 StepDimTol_RunoutZoneOrientation ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Init all field own and inherited

	:param theAngle:
	:type theAngle: Handle_StepBasic_PlaneAngleMeasureWithUnit &
	:rtype: None
") Init;
		void Init (const Handle_StepBasic_PlaneAngleMeasureWithUnit & theAngle);
		%feature("compactdefaultargs") Angle;
		%feature("autodoc", "	* Returns field Angle

	:rtype: inline Handle_StepBasic_PlaneAngleMeasureWithUnit
") Angle;
		inline Handle_StepBasic_PlaneAngleMeasureWithUnit Angle ();
		%feature("compactdefaultargs") SetAngle;
		%feature("autodoc", "	* Set field Angle

	:param theAngle:
	:type theAngle: Handle_StepBasic_PlaneAngleMeasureWithUnit &
	:rtype: inline void
") SetAngle;
		inline void SetAngle (const Handle_StepBasic_PlaneAngleMeasureWithUnit & theAngle);
};


%extend StepDimTol_RunoutZoneOrientation {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_RunoutZoneOrientation(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_RunoutZoneOrientation::Handle_StepDimTol_RunoutZoneOrientation %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_RunoutZoneOrientation;
class Handle_StepDimTol_RunoutZoneOrientation : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepDimTol_RunoutZoneOrientation();
        Handle_StepDimTol_RunoutZoneOrientation(const Handle_StepDimTol_RunoutZoneOrientation &aHandle);
        Handle_StepDimTol_RunoutZoneOrientation(const StepDimTol_RunoutZoneOrientation *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_RunoutZoneOrientation DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_RunoutZoneOrientation {
    StepDimTol_RunoutZoneOrientation* _get_reference() {
    return (StepDimTol_RunoutZoneOrientation*)$self->get();
    }
};

%extend Handle_StepDimTol_RunoutZoneOrientation {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_RunoutZoneOrientation {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_ShapeToleranceSelect;
class StepDimTol_ShapeToleranceSelect : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepDimTol_ShapeToleranceSelect;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_ShapeToleranceSelect;
		 StepDimTol_ShapeToleranceSelect ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a kind of ShapeToleranceSelect select type 1 -> GeometricTolerance from StepDimTol 2 -> PlusMinusTolerance from StepShape 0 else

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") GeometricTolerance;
		%feature("autodoc", "	* Returns Value as GeometricTolerance --or Null if another type--

	:rtype: Handle_StepDimTol_GeometricTolerance
") GeometricTolerance;
		Handle_StepDimTol_GeometricTolerance GeometricTolerance ();
		%feature("compactdefaultargs") PlusMinusTolerance;
		%feature("autodoc", "	* Returns Value as PlusMinusTolerance --or Null if another type--

	:rtype: Handle_StepShape_PlusMinusTolerance
") PlusMinusTolerance;
		Handle_StepShape_PlusMinusTolerance PlusMinusTolerance ();
};


%extend StepDimTol_ShapeToleranceSelect {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_SimpleDatumReferenceModifierMember;
class StepDimTol_SimpleDatumReferenceModifierMember : public StepData_SelectInt {
	public:
		%feature("compactdefaultargs") StepDimTol_SimpleDatumReferenceModifierMember;
		%feature("autodoc", "	:rtype: None
") StepDimTol_SimpleDatumReferenceModifierMember;
		 StepDimTol_SimpleDatumReferenceModifierMember ();
		%feature("compactdefaultargs") HasName;
		%feature("autodoc", "	:rtype: bool
") HasName;
		Standard_Boolean HasName ();
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	:rtype: char *
") Name;
		const char * Name ();
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	:param Standard_CString:
	:type Standard_CString: 
	:rtype: bool
") SetName;
		Standard_Boolean SetName (const Standard_CString);
		%feature("compactdefaultargs") Kind;
		%feature("autodoc", "	:rtype: int
") Kind;
		Standard_Integer Kind ();
		%feature("compactdefaultargs") EnumText;
		%feature("autodoc", "	:rtype: char *
") EnumText;
		virtual const char * EnumText ();
		%feature("compactdefaultargs") SetEnumText;
		%feature("autodoc", "	:param theValue:
	:type theValue: int
	:param theText:
	:type theText: char *
	:rtype: void
") SetEnumText;
		virtual void SetEnumText (const Standard_Integer theValue,const char * theText);
		%feature("compactdefaultargs") SetValue;
		%feature("autodoc", "	:param theValue:
	:type theValue: StepDimTol_SimpleDatumReferenceModifier
	:rtype: None
") SetValue;
		void SetValue (const StepDimTol_SimpleDatumReferenceModifier theValue);
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "	:rtype: StepDimTol_SimpleDatumReferenceModifier
") Value;
		StepDimTol_SimpleDatumReferenceModifier Value ();
};


%extend StepDimTol_SimpleDatumReferenceModifierMember {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_SimpleDatumReferenceModifierMember(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_SimpleDatumReferenceModifierMember::Handle_StepDimTol_SimpleDatumReferenceModifierMember %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_SimpleDatumReferenceModifierMember;
class Handle_StepDimTol_SimpleDatumReferenceModifierMember : public Handle_StepData_SelectInt {

    public:
        // constructors
        Handle_StepDimTol_SimpleDatumReferenceModifierMember();
        Handle_StepDimTol_SimpleDatumReferenceModifierMember(const Handle_StepDimTol_SimpleDatumReferenceModifierMember &aHandle);
        Handle_StepDimTol_SimpleDatumReferenceModifierMember(const StepDimTol_SimpleDatumReferenceModifierMember *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_SimpleDatumReferenceModifierMember DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_SimpleDatumReferenceModifierMember {
    StepDimTol_SimpleDatumReferenceModifierMember* _get_reference() {
    return (StepDimTol_SimpleDatumReferenceModifierMember*)$self->get();
    }
};

%extend Handle_StepDimTol_SimpleDatumReferenceModifierMember {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_SimpleDatumReferenceModifierMember {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_ToleranceZone;
class StepDimTol_ToleranceZone : public StepRepr_ShapeAspect {
	public:
		%feature("compactdefaultargs") StepDimTol_ToleranceZone;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_ToleranceZone;
		 StepDimTol_ToleranceZone ();
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
	:param theDefiningTolerance:
	:type theDefiningTolerance: Handle_StepDimTol_HArray1OfToleranceZoneTarget &
	:param theForm:
	:type theForm: Handle_StepDimTol_ToleranceZoneForm &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theName,const Handle_TCollection_HAsciiString & theDescription,const Handle_StepRepr_ProductDefinitionShape & theOfShape,const StepData_Logical theProductDefinitional,const Handle_StepDimTol_HArray1OfToleranceZoneTarget & theDefiningTolerance,const Handle_StepDimTol_ToleranceZoneForm & theForm);
		%feature("compactdefaultargs") DefiningTolerance;
		%feature("autodoc", "	* Returns field DefiningTolerance

	:rtype: inline Handle_StepDimTol_HArray1OfToleranceZoneTarget
") DefiningTolerance;
		inline Handle_StepDimTol_HArray1OfToleranceZoneTarget DefiningTolerance ();
		%feature("compactdefaultargs") SetDefiningTolerance;
		%feature("autodoc", "	* Set field DefiningTolerance

	:param theDefiningTolerance:
	:type theDefiningTolerance: Handle_StepDimTol_HArray1OfToleranceZoneTarget &
	:rtype: inline void
") SetDefiningTolerance;
		inline void SetDefiningTolerance (const Handle_StepDimTol_HArray1OfToleranceZoneTarget & theDefiningTolerance);
		%feature("compactdefaultargs") NbDefiningTolerances;
		%feature("autodoc", "	* Returns number of Defining Tolerances

	:rtype: inline int
") NbDefiningTolerances;
		inline Standard_Integer NbDefiningTolerances ();
		%feature("compactdefaultargs") DefiningToleranceValue;
		%feature("autodoc", "	* Returns Defining Tolerance with the given number

	:param theNum:
	:type theNum: int
	:rtype: inline StepDimTol_ToleranceZoneTarget
") DefiningToleranceValue;
		inline StepDimTol_ToleranceZoneTarget DefiningToleranceValue (const Standard_Integer theNum);
		%feature("compactdefaultargs") SetDefiningToleranceValue;
		%feature("autodoc", "	* Sets Defining Tolerance with given number

	:param theNum:
	:type theNum: int
	:param theItem:
	:type theItem: StepDimTol_ToleranceZoneTarget &
	:rtype: inline void
") SetDefiningToleranceValue;
		inline void SetDefiningToleranceValue (const Standard_Integer theNum,const StepDimTol_ToleranceZoneTarget & theItem);
		%feature("compactdefaultargs") Form;
		%feature("autodoc", "	* Returns field Form

	:rtype: inline Handle_StepDimTol_ToleranceZoneForm
") Form;
		inline Handle_StepDimTol_ToleranceZoneForm Form ();
		%feature("compactdefaultargs") SetForm;
		%feature("autodoc", "	* Set field Form

	:param theForm:
	:type theForm: Handle_StepDimTol_ToleranceZoneForm &
	:rtype: inline void
") SetForm;
		inline void SetForm (const Handle_StepDimTol_ToleranceZoneForm & theForm);
};


%extend StepDimTol_ToleranceZone {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_ToleranceZone(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_ToleranceZone::Handle_StepDimTol_ToleranceZone %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_ToleranceZone;
class Handle_StepDimTol_ToleranceZone : public Handle_StepRepr_ShapeAspect {

    public:
        // constructors
        Handle_StepDimTol_ToleranceZone();
        Handle_StepDimTol_ToleranceZone(const Handle_StepDimTol_ToleranceZone &aHandle);
        Handle_StepDimTol_ToleranceZone(const StepDimTol_ToleranceZone *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_ToleranceZone DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_ToleranceZone {
    StepDimTol_ToleranceZone* _get_reference() {
    return (StepDimTol_ToleranceZone*)$self->get();
    }
};

%extend Handle_StepDimTol_ToleranceZone {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_ToleranceZone {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_ToleranceZoneDefinition;
class StepDimTol_ToleranceZoneDefinition : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepDimTol_ToleranceZoneDefinition;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_ToleranceZoneDefinition;
		 StepDimTol_ToleranceZoneDefinition ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param theZone:
	:type theZone: Handle_StepDimTol_ToleranceZone &
	:param theBoundaries:
	:type theBoundaries: Handle_StepRepr_HArray1OfShapeAspect &
	:rtype: None
") Init;
		void Init (const Handle_StepDimTol_ToleranceZone & theZone,const Handle_StepRepr_HArray1OfShapeAspect & theBoundaries);
		%feature("compactdefaultargs") Boundaries;
		%feature("autodoc", "	* Returns field Boundaries

	:rtype: inline Handle_StepRepr_HArray1OfShapeAspect
") Boundaries;
		inline Handle_StepRepr_HArray1OfShapeAspect Boundaries ();
		%feature("compactdefaultargs") SetBoundaries;
		%feature("autodoc", "	* Set field Boundaries

	:param theBoundaries:
	:type theBoundaries: Handle_StepRepr_HArray1OfShapeAspect &
	:rtype: inline void
") SetBoundaries;
		inline void SetBoundaries (const Handle_StepRepr_HArray1OfShapeAspect & theBoundaries);
		%feature("compactdefaultargs") NbBoundaries;
		%feature("autodoc", "	* Returns number of Boundaries

	:rtype: inline int
") NbBoundaries;
		inline Standard_Integer NbBoundaries ();
		%feature("compactdefaultargs") BoundariesValue;
		%feature("autodoc", "	* Returns Boundaries with the given number

	:param theNum:
	:type theNum: int
	:rtype: inline Handle_StepRepr_ShapeAspect
") BoundariesValue;
		inline Handle_StepRepr_ShapeAspect BoundariesValue (const Standard_Integer theNum);
		%feature("compactdefaultargs") SetBoundariesValue;
		%feature("autodoc", "	* Sets Boundaries with given number

	:param theNum:
	:type theNum: int
	:param theItem:
	:type theItem: Handle_StepRepr_ShapeAspect &
	:rtype: inline void
") SetBoundariesValue;
		inline void SetBoundariesValue (const Standard_Integer theNum,const Handle_StepRepr_ShapeAspect & theItem);
		%feature("compactdefaultargs") Zone;
		%feature("autodoc", "	* Returns field Zone

	:rtype: inline Handle_StepDimTol_ToleranceZone
") Zone;
		inline Handle_StepDimTol_ToleranceZone Zone ();
		%feature("compactdefaultargs") SetZone;
		%feature("autodoc", "	* Set field Zone

	:param theZone:
	:type theZone: Handle_StepDimTol_ToleranceZone &
	:rtype: inline void
") SetZone;
		inline void SetZone (const Handle_StepDimTol_ToleranceZone & theZone);
};


%extend StepDimTol_ToleranceZoneDefinition {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_ToleranceZoneDefinition(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_ToleranceZoneDefinition::Handle_StepDimTol_ToleranceZoneDefinition %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_ToleranceZoneDefinition;
class Handle_StepDimTol_ToleranceZoneDefinition : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepDimTol_ToleranceZoneDefinition();
        Handle_StepDimTol_ToleranceZoneDefinition(const Handle_StepDimTol_ToleranceZoneDefinition &aHandle);
        Handle_StepDimTol_ToleranceZoneDefinition(const StepDimTol_ToleranceZoneDefinition *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_ToleranceZoneDefinition DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_ToleranceZoneDefinition {
    StepDimTol_ToleranceZoneDefinition* _get_reference() {
    return (StepDimTol_ToleranceZoneDefinition*)$self->get();
    }
};

%extend Handle_StepDimTol_ToleranceZoneDefinition {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_ToleranceZoneDefinition {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_ToleranceZoneForm;
class StepDimTol_ToleranceZoneForm : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepDimTol_ToleranceZoneForm;
		%feature("autodoc", "	:rtype: None
") StepDimTol_ToleranceZoneForm;
		 StepDimTol_ToleranceZoneForm ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Init all field own and inherited

	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theName);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	* Returns field Name

	:rtype: inline Handle_TCollection_HAsciiString
") Name;
		inline Handle_TCollection_HAsciiString Name ();
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	* Set field Name

	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:rtype: inline void
") SetName;
		inline void SetName (const Handle_TCollection_HAsciiString & theName);
};


%extend StepDimTol_ToleranceZoneForm {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_ToleranceZoneForm(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_ToleranceZoneForm::Handle_StepDimTol_ToleranceZoneForm %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_ToleranceZoneForm;
class Handle_StepDimTol_ToleranceZoneForm : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_StepDimTol_ToleranceZoneForm();
        Handle_StepDimTol_ToleranceZoneForm(const Handle_StepDimTol_ToleranceZoneForm &aHandle);
        Handle_StepDimTol_ToleranceZoneForm(const StepDimTol_ToleranceZoneForm *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_ToleranceZoneForm DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_ToleranceZoneForm {
    StepDimTol_ToleranceZoneForm* _get_reference() {
    return (StepDimTol_ToleranceZoneForm*)$self->get();
    }
};

%extend Handle_StepDimTol_ToleranceZoneForm {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_ToleranceZoneForm {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_ToleranceZoneTarget;
class StepDimTol_ToleranceZoneTarget : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepDimTol_ToleranceZoneTarget;
		%feature("autodoc", "	* Returns a ToleranceZoneTarget select type

	:rtype: None
") StepDimTol_ToleranceZoneTarget;
		 StepDimTol_ToleranceZoneTarget ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a ToleranceZoneTarget Kind Entity that is : 1 -> DimensionalLocation 2 -> DimensionalSize 3 -> GeometricTolerance 4 -> GeneralDatumReference 0 else

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") DimensionalLocation;
		%feature("autodoc", "	* returns Value as a DimensionalLocation --Null if another type--

	:rtype: Handle_StepShape_DimensionalLocation
") DimensionalLocation;
		Handle_StepShape_DimensionalLocation DimensionalLocation ();
		%feature("compactdefaultargs") DimensionalSize;
		%feature("autodoc", "	* returns Value as a DimensionalSize --Null if another type--

	:rtype: Handle_StepShape_DimensionalSize
") DimensionalSize;
		Handle_StepShape_DimensionalSize DimensionalSize ();
		%feature("compactdefaultargs") GeometricTolerance;
		%feature("autodoc", "	* returns Value as a GeometricTolerance --Null if another type--

	:rtype: Handle_StepDimTol_GeometricTolerance
") GeometricTolerance;
		Handle_StepDimTol_GeometricTolerance GeometricTolerance ();
		%feature("compactdefaultargs") GeneralDatumReference;
		%feature("autodoc", "	* returns Value as a GeneralDatumReference --Null if another type--

	:rtype: Handle_StepDimTol_GeneralDatumReference
") GeneralDatumReference;
		Handle_StepDimTol_GeneralDatumReference GeneralDatumReference ();
};


%extend StepDimTol_ToleranceZoneTarget {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_CylindricityTolerance;
class StepDimTol_CylindricityTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("compactdefaultargs") StepDimTol_CylindricityTolerance;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_CylindricityTolerance;
		 StepDimTol_CylindricityTolerance ();
};


%extend StepDimTol_CylindricityTolerance {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_CylindricityTolerance(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_CylindricityTolerance::Handle_StepDimTol_CylindricityTolerance %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_CylindricityTolerance;
class Handle_StepDimTol_CylindricityTolerance : public Handle_StepDimTol_GeometricTolerance {

    public:
        // constructors
        Handle_StepDimTol_CylindricityTolerance();
        Handle_StepDimTol_CylindricityTolerance(const Handle_StepDimTol_CylindricityTolerance &aHandle);
        Handle_StepDimTol_CylindricityTolerance(const StepDimTol_CylindricityTolerance *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_CylindricityTolerance DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_CylindricityTolerance {
    StepDimTol_CylindricityTolerance* _get_reference() {
    return (StepDimTol_CylindricityTolerance*)$self->get();
    }
};

%extend Handle_StepDimTol_CylindricityTolerance {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_CylindricityTolerance {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_DatumReferenceCompartment;
class StepDimTol_DatumReferenceCompartment : public StepDimTol_GeneralDatumReference {
	public:
		%feature("compactdefaultargs") StepDimTol_DatumReferenceCompartment;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_DatumReferenceCompartment;
		 StepDimTol_DatumReferenceCompartment ();
};


%extend StepDimTol_DatumReferenceCompartment {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_DatumReferenceCompartment(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_DatumReferenceCompartment::Handle_StepDimTol_DatumReferenceCompartment %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_DatumReferenceCompartment;
class Handle_StepDimTol_DatumReferenceCompartment : public Handle_StepDimTol_GeneralDatumReference {

    public:
        // constructors
        Handle_StepDimTol_DatumReferenceCompartment();
        Handle_StepDimTol_DatumReferenceCompartment(const Handle_StepDimTol_DatumReferenceCompartment &aHandle);
        Handle_StepDimTol_DatumReferenceCompartment(const StepDimTol_DatumReferenceCompartment *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_DatumReferenceCompartment DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_DatumReferenceCompartment {
    StepDimTol_DatumReferenceCompartment* _get_reference() {
    return (StepDimTol_DatumReferenceCompartment*)$self->get();
    }
};

%extend Handle_StepDimTol_DatumReferenceCompartment {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_DatumReferenceCompartment {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_DatumReferenceElement;
class StepDimTol_DatumReferenceElement : public StepDimTol_GeneralDatumReference {
	public:
		%feature("compactdefaultargs") StepDimTol_DatumReferenceElement;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_DatumReferenceElement;
		 StepDimTol_DatumReferenceElement ();
};


%extend StepDimTol_DatumReferenceElement {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_DatumReferenceElement(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_DatumReferenceElement::Handle_StepDimTol_DatumReferenceElement %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_DatumReferenceElement;
class Handle_StepDimTol_DatumReferenceElement : public Handle_StepDimTol_GeneralDatumReference {

    public:
        // constructors
        Handle_StepDimTol_DatumReferenceElement();
        Handle_StepDimTol_DatumReferenceElement(const Handle_StepDimTol_DatumReferenceElement &aHandle);
        Handle_StepDimTol_DatumReferenceElement(const StepDimTol_DatumReferenceElement *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_DatumReferenceElement DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_DatumReferenceElement {
    StepDimTol_DatumReferenceElement* _get_reference() {
    return (StepDimTol_DatumReferenceElement*)$self->get();
    }
};

%extend Handle_StepDimTol_DatumReferenceElement {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_DatumReferenceElement {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_FlatnessTolerance;
class StepDimTol_FlatnessTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("compactdefaultargs") StepDimTol_FlatnessTolerance;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_FlatnessTolerance;
		 StepDimTol_FlatnessTolerance ();
};


%extend StepDimTol_FlatnessTolerance {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_FlatnessTolerance(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_FlatnessTolerance::Handle_StepDimTol_FlatnessTolerance %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_FlatnessTolerance;
class Handle_StepDimTol_FlatnessTolerance : public Handle_StepDimTol_GeometricTolerance {

    public:
        // constructors
        Handle_StepDimTol_FlatnessTolerance();
        Handle_StepDimTol_FlatnessTolerance(const Handle_StepDimTol_FlatnessTolerance &aHandle);
        Handle_StepDimTol_FlatnessTolerance(const StepDimTol_FlatnessTolerance *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_FlatnessTolerance DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_FlatnessTolerance {
    StepDimTol_FlatnessTolerance* _get_reference() {
    return (StepDimTol_FlatnessTolerance*)$self->get();
    }
};

%extend Handle_StepDimTol_FlatnessTolerance {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_FlatnessTolerance {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_GeoTolAndGeoTolWthDatRef;
class StepDimTol_GeoTolAndGeoTolWthDatRef : public StepDimTol_GeometricTolerance {
	public:
		%feature("compactdefaultargs") StepDimTol_GeoTolAndGeoTolWthDatRef;
		%feature("autodoc", "	:rtype: None
") StepDimTol_GeoTolAndGeoTolWthDatRef;
		 StepDimTol_GeoTolAndGeoTolWthDatRef ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:param theDescription:
	:type theDescription: Handle_TCollection_HAsciiString &
	:param theMagnitude:
	:type theMagnitude: Handle_StepBasic_MeasureWithUnit &
	:param theTolerancedShapeAspect:
	:type theTolerancedShapeAspect: Handle_StepRepr_ShapeAspect &
	:param theGTWDR:
	:type theGTWDR: Handle_StepDimTol_GeometricToleranceWithDatumReference &
	:param theType:
	:type theType: StepDimTol_GeometricToleranceType
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theName,const Handle_TCollection_HAsciiString & theDescription,const Handle_StepBasic_MeasureWithUnit & theMagnitude,const Handle_StepRepr_ShapeAspect & theTolerancedShapeAspect,const Handle_StepDimTol_GeometricToleranceWithDatumReference & theGTWDR,const StepDimTol_GeometricToleranceType theType);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aMagnitude:
	:type aMagnitude: Handle_StepBasic_MeasureWithUnit &
	:param aTolerancedShapeAspect:
	:type aTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget &
	:param aGTWDR:
	:type aGTWDR: Handle_StepDimTol_GeometricToleranceWithDatumReference &
	:param theType:
	:type theType: StepDimTol_GeometricToleranceType
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription,const Handle_StepBasic_MeasureWithUnit & aMagnitude,const StepDimTol_GeometricToleranceTarget & aTolerancedShapeAspect,const Handle_StepDimTol_GeometricToleranceWithDatumReference & aGTWDR,const StepDimTol_GeometricToleranceType theType);
		%feature("compactdefaultargs") SetGeometricToleranceWithDatumReference;
		%feature("autodoc", "	:param theGTWDR:
	:type theGTWDR: Handle_StepDimTol_GeometricToleranceWithDatumReference &
	:rtype: inline void
") SetGeometricToleranceWithDatumReference;
		inline void SetGeometricToleranceWithDatumReference (const Handle_StepDimTol_GeometricToleranceWithDatumReference & theGTWDR);
		%feature("compactdefaultargs") GetGeometricToleranceWithDatumReference;
		%feature("autodoc", "	:rtype: inline Handle_StepDimTol_GeometricToleranceWithDatumReference
") GetGeometricToleranceWithDatumReference;
		inline Handle_StepDimTol_GeometricToleranceWithDatumReference GetGeometricToleranceWithDatumReference ();
		%feature("compactdefaultargs") SetGeometricToleranceType;
		%feature("autodoc", "	:param theType:
	:type theType: StepDimTol_GeometricToleranceType
	:rtype: inline void
") SetGeometricToleranceType;
		inline void SetGeometricToleranceType (const StepDimTol_GeometricToleranceType theType);
		%feature("compactdefaultargs") GetToleranceType;
		%feature("autodoc", "	:rtype: StepDimTol_GeometricToleranceType
") GetToleranceType;
		StepDimTol_GeometricToleranceType GetToleranceType ();
};


%extend StepDimTol_GeoTolAndGeoTolWthDatRef {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_GeoTolAndGeoTolWthDatRef(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_GeoTolAndGeoTolWthDatRef::Handle_StepDimTol_GeoTolAndGeoTolWthDatRef %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_GeoTolAndGeoTolWthDatRef;
class Handle_StepDimTol_GeoTolAndGeoTolWthDatRef : public Handle_StepDimTol_GeometricTolerance {

    public:
        // constructors
        Handle_StepDimTol_GeoTolAndGeoTolWthDatRef();
        Handle_StepDimTol_GeoTolAndGeoTolWthDatRef(const Handle_StepDimTol_GeoTolAndGeoTolWthDatRef &aHandle);
        Handle_StepDimTol_GeoTolAndGeoTolWthDatRef(const StepDimTol_GeoTolAndGeoTolWthDatRef *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_GeoTolAndGeoTolWthDatRef DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_GeoTolAndGeoTolWthDatRef {
    StepDimTol_GeoTolAndGeoTolWthDatRef* _get_reference() {
    return (StepDimTol_GeoTolAndGeoTolWthDatRef*)$self->get();
    }
};

%extend Handle_StepDimTol_GeoTolAndGeoTolWthDatRef {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_GeoTolAndGeoTolWthDatRef {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod;
class StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod : public StepDimTol_GeometricTolerance {
	public:
		%feature("compactdefaultargs") StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod;
		%feature("autodoc", "	:rtype: None
") StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod;
		 StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:param theDescription:
	:type theDescription: Handle_TCollection_HAsciiString &
	:param theMagnitude:
	:type theMagnitude: Handle_StepBasic_MeasureWithUnit &
	:param theTolerancedShapeAspect:
	:type theTolerancedShapeAspect: Handle_StepRepr_ShapeAspect &
	:param theGTWDR:
	:type theGTWDR: Handle_StepDimTol_GeometricToleranceWithDatumReference &
	:param theGTWM:
	:type theGTWM: Handle_StepDimTol_GeometricToleranceWithModifiers &
	:param theType:
	:type theType: StepDimTol_GeometricToleranceType
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theName,const Handle_TCollection_HAsciiString & theDescription,const Handle_StepBasic_MeasureWithUnit & theMagnitude,const Handle_StepRepr_ShapeAspect & theTolerancedShapeAspect,const Handle_StepDimTol_GeometricToleranceWithDatumReference & theGTWDR,const Handle_StepDimTol_GeometricToleranceWithModifiers & theGTWM,const StepDimTol_GeometricToleranceType theType);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aMagnitude:
	:type aMagnitude: Handle_StepBasic_MeasureWithUnit &
	:param aTolerancedShapeAspect:
	:type aTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget &
	:param aGTWDR:
	:type aGTWDR: Handle_StepDimTol_GeometricToleranceWithDatumReference &
	:param aGTWM:
	:type aGTWM: Handle_StepDimTol_GeometricToleranceWithModifiers &
	:param theType:
	:type theType: StepDimTol_GeometricToleranceType
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription,const Handle_StepBasic_MeasureWithUnit & aMagnitude,const StepDimTol_GeometricToleranceTarget & aTolerancedShapeAspect,const Handle_StepDimTol_GeometricToleranceWithDatumReference & aGTWDR,const Handle_StepDimTol_GeometricToleranceWithModifiers & aGTWM,const StepDimTol_GeometricToleranceType theType);
		%feature("compactdefaultargs") SetGeometricToleranceWithDatumReference;
		%feature("autodoc", "	:param theGTWDR:
	:type theGTWDR: Handle_StepDimTol_GeometricToleranceWithDatumReference &
	:rtype: inline void
") SetGeometricToleranceWithDatumReference;
		inline void SetGeometricToleranceWithDatumReference (const Handle_StepDimTol_GeometricToleranceWithDatumReference & theGTWDR);
		%feature("compactdefaultargs") GetGeometricToleranceWithDatumReference;
		%feature("autodoc", "	:rtype: inline Handle_StepDimTol_GeometricToleranceWithDatumReference
") GetGeometricToleranceWithDatumReference;
		inline Handle_StepDimTol_GeometricToleranceWithDatumReference GetGeometricToleranceWithDatumReference ();
		%feature("compactdefaultargs") SetGeometricToleranceWithModifiers;
		%feature("autodoc", "	:param theGTWM:
	:type theGTWM: Handle_StepDimTol_GeometricToleranceWithModifiers &
	:rtype: inline void
") SetGeometricToleranceWithModifiers;
		inline void SetGeometricToleranceWithModifiers (const Handle_StepDimTol_GeometricToleranceWithModifiers & theGTWM);
		%feature("compactdefaultargs") GetGeometricToleranceWithModifiers;
		%feature("autodoc", "	:rtype: inline Handle_StepDimTol_GeometricToleranceWithModifiers
") GetGeometricToleranceWithModifiers;
		inline Handle_StepDimTol_GeometricToleranceWithModifiers GetGeometricToleranceWithModifiers ();
		%feature("compactdefaultargs") SetGeometricToleranceType;
		%feature("autodoc", "	:param theType:
	:type theType: StepDimTol_GeometricToleranceType
	:rtype: inline void
") SetGeometricToleranceType;
		inline void SetGeometricToleranceType (const StepDimTol_GeometricToleranceType theType);
		%feature("compactdefaultargs") GetToleranceType;
		%feature("autodoc", "	:rtype: StepDimTol_GeometricToleranceType
") GetToleranceType;
		StepDimTol_GeometricToleranceType GetToleranceType ();
};


%extend StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod::Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod;
class Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod : public Handle_StepDimTol_GeometricTolerance {

    public:
        // constructors
        Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod();
        Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod(const Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod &aHandle);
        Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod(const StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod {
    StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod* _get_reference() {
    return (StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod*)$self->get();
    }
};

%extend Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol;
class StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol : public StepDimTol_GeometricTolerance {
	public:
		%feature("compactdefaultargs") StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol;
		%feature("autodoc", "	:rtype: None
") StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol;
		 StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aMagnitude:
	:type aMagnitude: Handle_StepBasic_MeasureWithUnit &
	:param aTolerancedShapeAspect:
	:type aTolerancedShapeAspect: Handle_StepRepr_ShapeAspect &
	:param aGTWDR:
	:type aGTWDR: Handle_StepDimTol_GeometricToleranceWithDatumReference &
	:param aMGT:
	:type aMGT: Handle_StepDimTol_ModifiedGeometricTolerance &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription,const Handle_StepBasic_MeasureWithUnit & aMagnitude,const Handle_StepRepr_ShapeAspect & aTolerancedShapeAspect,const Handle_StepDimTol_GeometricToleranceWithDatumReference & aGTWDR,const Handle_StepDimTol_ModifiedGeometricTolerance & aMGT);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aMagnitude:
	:type aMagnitude: Handle_StepBasic_MeasureWithUnit &
	:param aTolerancedShapeAspect:
	:type aTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget &
	:param aGTWDR:
	:type aGTWDR: Handle_StepDimTol_GeometricToleranceWithDatumReference &
	:param aMGT:
	:type aMGT: Handle_StepDimTol_ModifiedGeometricTolerance &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription,const Handle_StepBasic_MeasureWithUnit & aMagnitude,const StepDimTol_GeometricToleranceTarget & aTolerancedShapeAspect,const Handle_StepDimTol_GeometricToleranceWithDatumReference & aGTWDR,const Handle_StepDimTol_ModifiedGeometricTolerance & aMGT);
		%feature("compactdefaultargs") SetGeometricToleranceWithDatumReference;
		%feature("autodoc", "	:param aGTWDR:
	:type aGTWDR: Handle_StepDimTol_GeometricToleranceWithDatumReference &
	:rtype: None
") SetGeometricToleranceWithDatumReference;
		void SetGeometricToleranceWithDatumReference (const Handle_StepDimTol_GeometricToleranceWithDatumReference & aGTWDR);
		%feature("compactdefaultargs") GetGeometricToleranceWithDatumReference;
		%feature("autodoc", "	:rtype: Handle_StepDimTol_GeometricToleranceWithDatumReference
") GetGeometricToleranceWithDatumReference;
		Handle_StepDimTol_GeometricToleranceWithDatumReference GetGeometricToleranceWithDatumReference ();
		%feature("compactdefaultargs") SetModifiedGeometricTolerance;
		%feature("autodoc", "	:param aMGT:
	:type aMGT: Handle_StepDimTol_ModifiedGeometricTolerance &
	:rtype: None
") SetModifiedGeometricTolerance;
		void SetModifiedGeometricTolerance (const Handle_StepDimTol_ModifiedGeometricTolerance & aMGT);
		%feature("compactdefaultargs") GetModifiedGeometricTolerance;
		%feature("autodoc", "	:rtype: Handle_StepDimTol_ModifiedGeometricTolerance
") GetModifiedGeometricTolerance;
		Handle_StepDimTol_ModifiedGeometricTolerance GetModifiedGeometricTolerance ();
		%feature("compactdefaultargs") SetPositionTolerance;
		%feature("autodoc", "	:param aPT:
	:type aPT: Handle_StepDimTol_PositionTolerance &
	:rtype: None
") SetPositionTolerance;
		void SetPositionTolerance (const Handle_StepDimTol_PositionTolerance & aPT);
		%feature("compactdefaultargs") GetPositionTolerance;
		%feature("autodoc", "	:rtype: Handle_StepDimTol_PositionTolerance
") GetPositionTolerance;
		Handle_StepDimTol_PositionTolerance GetPositionTolerance ();
};


%extend StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol::Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol;
class Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol : public Handle_StepDimTol_GeometricTolerance {

    public:
        // constructors
        Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol();
        Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol(const Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol &aHandle);
        Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol(const StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol {
    StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol* _get_reference() {
    return (StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol*)$self->get();
    }
};

%extend Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_GeoTolAndGeoTolWthMod;
class StepDimTol_GeoTolAndGeoTolWthMod : public StepDimTol_GeometricTolerance {
	public:
		%feature("compactdefaultargs") StepDimTol_GeoTolAndGeoTolWthMod;
		%feature("autodoc", "	:rtype: None
") StepDimTol_GeoTolAndGeoTolWthMod;
		 StepDimTol_GeoTolAndGeoTolWthMod ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:param theDescription:
	:type theDescription: Handle_TCollection_HAsciiString &
	:param theMagnitude:
	:type theMagnitude: Handle_StepBasic_MeasureWithUnit &
	:param theTolerancedShapeAspect:
	:type theTolerancedShapeAspect: Handle_StepRepr_ShapeAspect &
	:param theGTWM:
	:type theGTWM: Handle_StepDimTol_GeometricToleranceWithModifiers &
	:param theType:
	:type theType: StepDimTol_GeometricToleranceType
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theName,const Handle_TCollection_HAsciiString & theDescription,const Handle_StepBasic_MeasureWithUnit & theMagnitude,const Handle_StepRepr_ShapeAspect & theTolerancedShapeAspect,const Handle_StepDimTol_GeometricToleranceWithModifiers & theGTWM,const StepDimTol_GeometricToleranceType theType);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aMagnitude:
	:type aMagnitude: Handle_StepBasic_MeasureWithUnit &
	:param aTolerancedShapeAspect:
	:type aTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget &
	:param aGTWM:
	:type aGTWM: Handle_StepDimTol_GeometricToleranceWithModifiers &
	:param theType:
	:type theType: StepDimTol_GeometricToleranceType
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription,const Handle_StepBasic_MeasureWithUnit & aMagnitude,const StepDimTol_GeometricToleranceTarget & aTolerancedShapeAspect,const Handle_StepDimTol_GeometricToleranceWithModifiers & aGTWM,const StepDimTol_GeometricToleranceType theType);
		%feature("compactdefaultargs") SetGeometricToleranceWithModifiers;
		%feature("autodoc", "	:param theGTWM:
	:type theGTWM: Handle_StepDimTol_GeometricToleranceWithModifiers &
	:rtype: inline void
") SetGeometricToleranceWithModifiers;
		inline void SetGeometricToleranceWithModifiers (const Handle_StepDimTol_GeometricToleranceWithModifiers & theGTWM);
		%feature("compactdefaultargs") GetGeometricToleranceWithModifiers;
		%feature("autodoc", "	:rtype: inline Handle_StepDimTol_GeometricToleranceWithModifiers
") GetGeometricToleranceWithModifiers;
		inline Handle_StepDimTol_GeometricToleranceWithModifiers GetGeometricToleranceWithModifiers ();
		%feature("compactdefaultargs") SetGeometricToleranceType;
		%feature("autodoc", "	:param theType:
	:type theType: StepDimTol_GeometricToleranceType
	:rtype: inline void
") SetGeometricToleranceType;
		inline void SetGeometricToleranceType (const StepDimTol_GeometricToleranceType theType);
		%feature("compactdefaultargs") GetToleranceType;
		%feature("autodoc", "	:rtype: StepDimTol_GeometricToleranceType
") GetToleranceType;
		StepDimTol_GeometricToleranceType GetToleranceType ();
};


%extend StepDimTol_GeoTolAndGeoTolWthMod {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_GeoTolAndGeoTolWthMod(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_GeoTolAndGeoTolWthMod::Handle_StepDimTol_GeoTolAndGeoTolWthMod %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_GeoTolAndGeoTolWthMod;
class Handle_StepDimTol_GeoTolAndGeoTolWthMod : public Handle_StepDimTol_GeometricTolerance {

    public:
        // constructors
        Handle_StepDimTol_GeoTolAndGeoTolWthMod();
        Handle_StepDimTol_GeoTolAndGeoTolWthMod(const Handle_StepDimTol_GeoTolAndGeoTolWthMod &aHandle);
        Handle_StepDimTol_GeoTolAndGeoTolWthMod(const StepDimTol_GeoTolAndGeoTolWthMod *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_GeoTolAndGeoTolWthMod DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_GeoTolAndGeoTolWthMod {
    StepDimTol_GeoTolAndGeoTolWthMod* _get_reference() {
    return (StepDimTol_GeoTolAndGeoTolWthMod*)$self->get();
    }
};

%extend Handle_StepDimTol_GeoTolAndGeoTolWthMod {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_GeoTolAndGeoTolWthMod {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_GeometricToleranceWithDatumReference;
class StepDimTol_GeometricToleranceWithDatumReference : public StepDimTol_GeometricTolerance {
	public:
		%feature("compactdefaultargs") StepDimTol_GeometricToleranceWithDatumReference;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_GeometricToleranceWithDatumReference;
		 StepDimTol_GeometricToleranceWithDatumReference ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited-- AP214

	:param theGeometricTolerance_Name:
	:type theGeometricTolerance_Name: Handle_TCollection_HAsciiString &
	:param theGeometricTolerance_Description:
	:type theGeometricTolerance_Description: Handle_TCollection_HAsciiString &
	:param theGeometricTolerance_Magnitude:
	:type theGeometricTolerance_Magnitude: Handle_StepBasic_MeasureWithUnit &
	:param theGeometricTolerance_TolerancedShapeAspect:
	:type theGeometricTolerance_TolerancedShapeAspect: Handle_StepRepr_ShapeAspect &
	:param theDatumSystem:
	:type theDatumSystem: Handle_StepDimTol_HArray1OfDatumReference &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theGeometricTolerance_Name,const Handle_TCollection_HAsciiString & theGeometricTolerance_Description,const Handle_StepBasic_MeasureWithUnit & theGeometricTolerance_Magnitude,const Handle_StepRepr_ShapeAspect & theGeometricTolerance_TolerancedShapeAspect,const Handle_StepDimTol_HArray1OfDatumReference & theDatumSystem);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited-- AP242

	:param theGeometricTolerance_Name:
	:type theGeometricTolerance_Name: Handle_TCollection_HAsciiString &
	:param theGeometricTolerance_Description:
	:type theGeometricTolerance_Description: Handle_TCollection_HAsciiString &
	:param theGeometricTolerance_Magnitude:
	:type theGeometricTolerance_Magnitude: Handle_StepBasic_MeasureWithUnit &
	:param theGeometricTolerance_TolerancedShapeAspect:
	:type theGeometricTolerance_TolerancedShapeAspect: StepDimTol_GeometricToleranceTarget &
	:param theDatumSystem:
	:type theDatumSystem: Handle_StepDimTol_HArray1OfDatumSystemOrReference &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theGeometricTolerance_Name,const Handle_TCollection_HAsciiString & theGeometricTolerance_Description,const Handle_StepBasic_MeasureWithUnit & theGeometricTolerance_Magnitude,const StepDimTol_GeometricToleranceTarget & theGeometricTolerance_TolerancedShapeAspect,const Handle_StepDimTol_HArray1OfDatumSystemOrReference & theDatumSystem);
		%feature("compactdefaultargs") DatumSystem;
		%feature("autodoc", "	* Returns field DatumSystem AP214

	:rtype: Handle_StepDimTol_HArray1OfDatumReference
") DatumSystem;
		Handle_StepDimTol_HArray1OfDatumReference DatumSystem ();
		%feature("compactdefaultargs") DatumSystemAP242;
		%feature("autodoc", "	* Returns field DatumSystem AP242

	:rtype: Handle_StepDimTol_HArray1OfDatumSystemOrReference
") DatumSystemAP242;
		Handle_StepDimTol_HArray1OfDatumSystemOrReference DatumSystemAP242 ();
		%feature("compactdefaultargs") SetDatumSystem;
		%feature("autodoc", "	* Set field DatumSystem AP214

	:param theDatumSystem:
	:type theDatumSystem: Handle_StepDimTol_HArray1OfDatumReference &
	:rtype: None
") SetDatumSystem;
		void SetDatumSystem (const Handle_StepDimTol_HArray1OfDatumReference & theDatumSystem);
		%feature("compactdefaultargs") SetDatumSystem;
		%feature("autodoc", "	* Set field DatumSystem AP242

	:param theDatumSystem:
	:type theDatumSystem: Handle_StepDimTol_HArray1OfDatumSystemOrReference &
	:rtype: None
") SetDatumSystem;
		void SetDatumSystem (const Handle_StepDimTol_HArray1OfDatumSystemOrReference & theDatumSystem);
};


%extend StepDimTol_GeometricToleranceWithDatumReference {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_GeometricToleranceWithDatumReference(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_GeometricToleranceWithDatumReference::Handle_StepDimTol_GeometricToleranceWithDatumReference %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_GeometricToleranceWithDatumReference;
class Handle_StepDimTol_GeometricToleranceWithDatumReference : public Handle_StepDimTol_GeometricTolerance {

    public:
        // constructors
        Handle_StepDimTol_GeometricToleranceWithDatumReference();
        Handle_StepDimTol_GeometricToleranceWithDatumReference(const Handle_StepDimTol_GeometricToleranceWithDatumReference &aHandle);
        Handle_StepDimTol_GeometricToleranceWithDatumReference(const StepDimTol_GeometricToleranceWithDatumReference *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_GeometricToleranceWithDatumReference DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_GeometricToleranceWithDatumReference {
    StepDimTol_GeometricToleranceWithDatumReference* _get_reference() {
    return (StepDimTol_GeometricToleranceWithDatumReference*)$self->get();
    }
};

%extend Handle_StepDimTol_GeometricToleranceWithDatumReference {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_GeometricToleranceWithDatumReference {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_GeometricToleranceWithDefinedUnit;
class StepDimTol_GeometricToleranceWithDefinedUnit : public StepDimTol_GeometricTolerance {
	public:
		%feature("compactdefaultargs") StepDimTol_GeometricToleranceWithDefinedUnit;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_GeometricToleranceWithDefinedUnit;
		 StepDimTol_GeometricToleranceWithDefinedUnit ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited-- AP214

	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:param theDescription:
	:type theDescription: Handle_TCollection_HAsciiString &
	:param theMagnitude:
	:type theMagnitude: Handle_StepBasic_MeasureWithUnit &
	:param theTolerancedShapeAspect:
	:type theTolerancedShapeAspect: Handle_StepRepr_ShapeAspect &
	:param theUnitSize:
	:type theUnitSize: Handle_StepBasic_LengthMeasureWithUnit &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theName,const Handle_TCollection_HAsciiString & theDescription,const Handle_StepBasic_MeasureWithUnit & theMagnitude,const Handle_StepRepr_ShapeAspect & theTolerancedShapeAspect,const Handle_StepBasic_LengthMeasureWithUnit & theUnitSize);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited-- AP242

	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:param theDescription:
	:type theDescription: Handle_TCollection_HAsciiString &
	:param theMagnitude:
	:type theMagnitude: Handle_StepBasic_MeasureWithUnit &
	:param theTolerancedShapeAspect:
	:type theTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget &
	:param theUnitSize:
	:type theUnitSize: Handle_StepBasic_LengthMeasureWithUnit &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theName,const Handle_TCollection_HAsciiString & theDescription,const Handle_StepBasic_MeasureWithUnit & theMagnitude,const StepDimTol_GeometricToleranceTarget & theTolerancedShapeAspect,const Handle_StepBasic_LengthMeasureWithUnit & theUnitSize);
		%feature("compactdefaultargs") UnitSize;
		%feature("autodoc", "	* Returns field UnitSize

	:rtype: inline Handle_StepBasic_LengthMeasureWithUnit
") UnitSize;
		inline Handle_StepBasic_LengthMeasureWithUnit UnitSize ();
		%feature("compactdefaultargs") SetUnitSize;
		%feature("autodoc", "	* Set field UnitSize

	:param theUnitSize:
	:type theUnitSize: Handle_StepBasic_LengthMeasureWithUnit &
	:rtype: inline void
") SetUnitSize;
		inline void SetUnitSize (const Handle_StepBasic_LengthMeasureWithUnit & theUnitSize);
};


%extend StepDimTol_GeometricToleranceWithDefinedUnit {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_GeometricToleranceWithDefinedUnit(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_GeometricToleranceWithDefinedUnit::Handle_StepDimTol_GeometricToleranceWithDefinedUnit %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_GeometricToleranceWithDefinedUnit;
class Handle_StepDimTol_GeometricToleranceWithDefinedUnit : public Handle_StepDimTol_GeometricTolerance {

    public:
        // constructors
        Handle_StepDimTol_GeometricToleranceWithDefinedUnit();
        Handle_StepDimTol_GeometricToleranceWithDefinedUnit(const Handle_StepDimTol_GeometricToleranceWithDefinedUnit &aHandle);
        Handle_StepDimTol_GeometricToleranceWithDefinedUnit(const StepDimTol_GeometricToleranceWithDefinedUnit *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_GeometricToleranceWithDefinedUnit DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_GeometricToleranceWithDefinedUnit {
    StepDimTol_GeometricToleranceWithDefinedUnit* _get_reference() {
    return (StepDimTol_GeometricToleranceWithDefinedUnit*)$self->get();
    }
};

%extend Handle_StepDimTol_GeometricToleranceWithDefinedUnit {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_GeometricToleranceWithDefinedUnit {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_GeometricToleranceWithModifiers;
class StepDimTol_GeometricToleranceWithModifiers : public StepDimTol_GeometricTolerance {
	public:
		%feature("compactdefaultargs") StepDimTol_GeometricToleranceWithModifiers;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_GeometricToleranceWithModifiers;
		 StepDimTol_GeometricToleranceWithModifiers ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:param theDescription:
	:type theDescription: Handle_TCollection_HAsciiString &
	:param theMagnitude:
	:type theMagnitude: Handle_StepBasic_MeasureWithUnit &
	:param theTolerancedShapeAspect:
	:type theTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget &
	:param theModifiers:
	:type theModifiers: Handle_StepDimTol_HArray1OfGeometricToleranceModifier &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theName,const Handle_TCollection_HAsciiString & theDescription,const Handle_StepBasic_MeasureWithUnit & theMagnitude,const StepDimTol_GeometricToleranceTarget & theTolerancedShapeAspect,const Handle_StepDimTol_HArray1OfGeometricToleranceModifier & theModifiers);
		%feature("compactdefaultargs") Modifiers;
		%feature("autodoc", "	* Returns field Modifiers

	:rtype: inline Handle_StepDimTol_HArray1OfGeometricToleranceModifier
") Modifiers;
		inline Handle_StepDimTol_HArray1OfGeometricToleranceModifier Modifiers ();
		%feature("compactdefaultargs") SetModifiers;
		%feature("autodoc", "	* Set field Modifiers

	:param theModifiers:
	:type theModifiers: Handle_StepDimTol_HArray1OfGeometricToleranceModifier &
	:rtype: inline void
") SetModifiers;
		inline void SetModifiers (const Handle_StepDimTol_HArray1OfGeometricToleranceModifier & theModifiers);
		%feature("compactdefaultargs") NbModifiers;
		%feature("autodoc", "	* Returns number of modifiers

	:rtype: inline int
") NbModifiers;
		inline Standard_Integer NbModifiers ();
		%feature("compactdefaultargs") ModifierValue;
		%feature("autodoc", "	* Returns modifier with the given number

	:param theNum:
	:type theNum: int
	:rtype: inline StepDimTol_GeometricToleranceModifier
") ModifierValue;
		inline StepDimTol_GeometricToleranceModifier ModifierValue (const Standard_Integer theNum);
		%feature("compactdefaultargs") SetModifierValue;
		%feature("autodoc", "	* Sets modifier with given number

	:param theNum:
	:type theNum: int
	:param theItem:
	:type theItem: StepDimTol_GeometricToleranceModifier
	:rtype: inline void
") SetModifierValue;
		inline void SetModifierValue (const Standard_Integer theNum,const StepDimTol_GeometricToleranceModifier theItem);
};


%extend StepDimTol_GeometricToleranceWithModifiers {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_GeometricToleranceWithModifiers(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_GeometricToleranceWithModifiers::Handle_StepDimTol_GeometricToleranceWithModifiers %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_GeometricToleranceWithModifiers;
class Handle_StepDimTol_GeometricToleranceWithModifiers : public Handle_StepDimTol_GeometricTolerance {

    public:
        // constructors
        Handle_StepDimTol_GeometricToleranceWithModifiers();
        Handle_StepDimTol_GeometricToleranceWithModifiers(const Handle_StepDimTol_GeometricToleranceWithModifiers &aHandle);
        Handle_StepDimTol_GeometricToleranceWithModifiers(const StepDimTol_GeometricToleranceWithModifiers *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_GeometricToleranceWithModifiers DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_GeometricToleranceWithModifiers {
    StepDimTol_GeometricToleranceWithModifiers* _get_reference() {
    return (StepDimTol_GeometricToleranceWithModifiers*)$self->get();
    }
};

%extend Handle_StepDimTol_GeometricToleranceWithModifiers {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_GeometricToleranceWithModifiers {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_LineProfileTolerance;
class StepDimTol_LineProfileTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("compactdefaultargs") StepDimTol_LineProfileTolerance;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_LineProfileTolerance;
		 StepDimTol_LineProfileTolerance ();
};


%extend StepDimTol_LineProfileTolerance {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_LineProfileTolerance(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_LineProfileTolerance::Handle_StepDimTol_LineProfileTolerance %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_LineProfileTolerance;
class Handle_StepDimTol_LineProfileTolerance : public Handle_StepDimTol_GeometricTolerance {

    public:
        // constructors
        Handle_StepDimTol_LineProfileTolerance();
        Handle_StepDimTol_LineProfileTolerance(const Handle_StepDimTol_LineProfileTolerance &aHandle);
        Handle_StepDimTol_LineProfileTolerance(const StepDimTol_LineProfileTolerance *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_LineProfileTolerance DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_LineProfileTolerance {
    StepDimTol_LineProfileTolerance* _get_reference() {
    return (StepDimTol_LineProfileTolerance*)$self->get();
    }
};

%extend Handle_StepDimTol_LineProfileTolerance {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_LineProfileTolerance {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_ModifiedGeometricTolerance;
class StepDimTol_ModifiedGeometricTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("compactdefaultargs") StepDimTol_ModifiedGeometricTolerance;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_ModifiedGeometricTolerance;
		 StepDimTol_ModifiedGeometricTolerance ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited-- AP214

	:param theGeometricTolerance_Name:
	:type theGeometricTolerance_Name: Handle_TCollection_HAsciiString &
	:param theGeometricTolerance_Description:
	:type theGeometricTolerance_Description: Handle_TCollection_HAsciiString &
	:param theGeometricTolerance_Magnitude:
	:type theGeometricTolerance_Magnitude: Handle_StepBasic_MeasureWithUnit &
	:param theGeometricTolerance_TolerancedShapeAspect:
	:type theGeometricTolerance_TolerancedShapeAspect: Handle_StepRepr_ShapeAspect &
	:param theModifier:
	:type theModifier: StepDimTol_LimitCondition
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theGeometricTolerance_Name,const Handle_TCollection_HAsciiString & theGeometricTolerance_Description,const Handle_StepBasic_MeasureWithUnit & theGeometricTolerance_Magnitude,const Handle_StepRepr_ShapeAspect & theGeometricTolerance_TolerancedShapeAspect,const StepDimTol_LimitCondition theModifier);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited-- AP242

	:param theGeometricTolerance_Name:
	:type theGeometricTolerance_Name: Handle_TCollection_HAsciiString &
	:param theGeometricTolerance_Description:
	:type theGeometricTolerance_Description: Handle_TCollection_HAsciiString &
	:param theGeometricTolerance_Magnitude:
	:type theGeometricTolerance_Magnitude: Handle_StepBasic_MeasureWithUnit &
	:param theGeometricTolerance_TolerancedShapeAspect:
	:type theGeometricTolerance_TolerancedShapeAspect: StepDimTol_GeometricToleranceTarget &
	:param theModifier:
	:type theModifier: StepDimTol_LimitCondition
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theGeometricTolerance_Name,const Handle_TCollection_HAsciiString & theGeometricTolerance_Description,const Handle_StepBasic_MeasureWithUnit & theGeometricTolerance_Magnitude,const StepDimTol_GeometricToleranceTarget & theGeometricTolerance_TolerancedShapeAspect,const StepDimTol_LimitCondition theModifier);
		%feature("compactdefaultargs") Modifier;
		%feature("autodoc", "	* Returns field Modifier

	:rtype: StepDimTol_LimitCondition
") Modifier;
		StepDimTol_LimitCondition Modifier ();
		%feature("compactdefaultargs") SetModifier;
		%feature("autodoc", "	* Set field Modifier

	:param theModifier:
	:type theModifier: StepDimTol_LimitCondition
	:rtype: None
") SetModifier;
		void SetModifier (const StepDimTol_LimitCondition theModifier);
};


%extend StepDimTol_ModifiedGeometricTolerance {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_ModifiedGeometricTolerance(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_ModifiedGeometricTolerance::Handle_StepDimTol_ModifiedGeometricTolerance %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_ModifiedGeometricTolerance;
class Handle_StepDimTol_ModifiedGeometricTolerance : public Handle_StepDimTol_GeometricTolerance {

    public:
        // constructors
        Handle_StepDimTol_ModifiedGeometricTolerance();
        Handle_StepDimTol_ModifiedGeometricTolerance(const Handle_StepDimTol_ModifiedGeometricTolerance &aHandle);
        Handle_StepDimTol_ModifiedGeometricTolerance(const StepDimTol_ModifiedGeometricTolerance *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_ModifiedGeometricTolerance DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_ModifiedGeometricTolerance {
    StepDimTol_ModifiedGeometricTolerance* _get_reference() {
    return (StepDimTol_ModifiedGeometricTolerance*)$self->get();
    }
};

%extend Handle_StepDimTol_ModifiedGeometricTolerance {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_ModifiedGeometricTolerance {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_NonUniformZoneDefinition;
class StepDimTol_NonUniformZoneDefinition : public StepDimTol_ToleranceZoneDefinition {
	public:
		%feature("compactdefaultargs") StepDimTol_NonUniformZoneDefinition;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_NonUniformZoneDefinition;
		 StepDimTol_NonUniformZoneDefinition ();
};


%extend StepDimTol_NonUniformZoneDefinition {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_NonUniformZoneDefinition(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_NonUniformZoneDefinition::Handle_StepDimTol_NonUniformZoneDefinition %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_NonUniformZoneDefinition;
class Handle_StepDimTol_NonUniformZoneDefinition : public Handle_StepDimTol_ToleranceZoneDefinition {

    public:
        // constructors
        Handle_StepDimTol_NonUniformZoneDefinition();
        Handle_StepDimTol_NonUniformZoneDefinition(const Handle_StepDimTol_NonUniformZoneDefinition &aHandle);
        Handle_StepDimTol_NonUniformZoneDefinition(const StepDimTol_NonUniformZoneDefinition *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_NonUniformZoneDefinition DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_NonUniformZoneDefinition {
    StepDimTol_NonUniformZoneDefinition* _get_reference() {
    return (StepDimTol_NonUniformZoneDefinition*)$self->get();
    }
};

%extend Handle_StepDimTol_NonUniformZoneDefinition {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_NonUniformZoneDefinition {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_PlacedDatumTargetFeature;
class StepDimTol_PlacedDatumTargetFeature : public StepDimTol_DatumTarget {
	public:
		%feature("compactdefaultargs") StepDimTol_PlacedDatumTargetFeature;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_PlacedDatumTargetFeature;
		 StepDimTol_PlacedDatumTargetFeature ();
};


%extend StepDimTol_PlacedDatumTargetFeature {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_PlacedDatumTargetFeature(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_PlacedDatumTargetFeature::Handle_StepDimTol_PlacedDatumTargetFeature %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_PlacedDatumTargetFeature;
class Handle_StepDimTol_PlacedDatumTargetFeature : public Handle_StepDimTol_DatumTarget {

    public:
        // constructors
        Handle_StepDimTol_PlacedDatumTargetFeature();
        Handle_StepDimTol_PlacedDatumTargetFeature(const Handle_StepDimTol_PlacedDatumTargetFeature &aHandle);
        Handle_StepDimTol_PlacedDatumTargetFeature(const StepDimTol_PlacedDatumTargetFeature *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_PlacedDatumTargetFeature DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_PlacedDatumTargetFeature {
    StepDimTol_PlacedDatumTargetFeature* _get_reference() {
    return (StepDimTol_PlacedDatumTargetFeature*)$self->get();
    }
};

%extend Handle_StepDimTol_PlacedDatumTargetFeature {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_PlacedDatumTargetFeature {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_PositionTolerance;
class StepDimTol_PositionTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("compactdefaultargs") StepDimTol_PositionTolerance;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_PositionTolerance;
		 StepDimTol_PositionTolerance ();
};


%extend StepDimTol_PositionTolerance {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_PositionTolerance(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_PositionTolerance::Handle_StepDimTol_PositionTolerance %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_PositionTolerance;
class Handle_StepDimTol_PositionTolerance : public Handle_StepDimTol_GeometricTolerance {

    public:
        // constructors
        Handle_StepDimTol_PositionTolerance();
        Handle_StepDimTol_PositionTolerance(const Handle_StepDimTol_PositionTolerance &aHandle);
        Handle_StepDimTol_PositionTolerance(const StepDimTol_PositionTolerance *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_PositionTolerance DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_PositionTolerance {
    StepDimTol_PositionTolerance* _get_reference() {
    return (StepDimTol_PositionTolerance*)$self->get();
    }
};

%extend Handle_StepDimTol_PositionTolerance {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_PositionTolerance {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_ProjectedZoneDefinition;
class StepDimTol_ProjectedZoneDefinition : public StepDimTol_ToleranceZoneDefinition {
	public:
		%feature("compactdefaultargs") StepDimTol_ProjectedZoneDefinition;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_ProjectedZoneDefinition;
		 StepDimTol_ProjectedZoneDefinition ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param theZone:
	:type theZone: Handle_StepDimTol_ToleranceZone &
	:param theBoundaries:
	:type theBoundaries: Handle_StepRepr_HArray1OfShapeAspect &
	:param theProjectionEnd:
	:type theProjectionEnd: Handle_StepRepr_ShapeAspect &
	:param theProjectionLength:
	:type theProjectionLength: Handle_StepBasic_LengthMeasureWithUnit &
	:rtype: None
") Init;
		void Init (const Handle_StepDimTol_ToleranceZone & theZone,const Handle_StepRepr_HArray1OfShapeAspect & theBoundaries,const Handle_StepRepr_ShapeAspect & theProjectionEnd,const Handle_StepBasic_LengthMeasureWithUnit & theProjectionLength);
		%feature("compactdefaultargs") ProjectionEnd;
		%feature("autodoc", "	* Returns field ProjectionEnd

	:rtype: inline Handle_StepRepr_ShapeAspect
") ProjectionEnd;
		inline Handle_StepRepr_ShapeAspect ProjectionEnd ();
		%feature("compactdefaultargs") SetProjectionEnd;
		%feature("autodoc", "	* Set field ProjectionEnd

	:param theProjectionEnd:
	:type theProjectionEnd: Handle_StepRepr_ShapeAspect &
	:rtype: inline void
") SetProjectionEnd;
		inline void SetProjectionEnd (const Handle_StepRepr_ShapeAspect & theProjectionEnd);
		%feature("compactdefaultargs") ProjectionLength;
		%feature("autodoc", "	* Returns field ProjectionLength

	:rtype: inline Handle_StepBasic_LengthMeasureWithUnit
") ProjectionLength;
		inline Handle_StepBasic_LengthMeasureWithUnit ProjectionLength ();
		%feature("compactdefaultargs") SetProjectionLength;
		%feature("autodoc", "	* Set field ProjectionLength

	:param theProjectionLength:
	:type theProjectionLength: Handle_StepBasic_LengthMeasureWithUnit &
	:rtype: inline void
") SetProjectionLength;
		inline void SetProjectionLength (const Handle_StepBasic_LengthMeasureWithUnit & theProjectionLength);
};


%extend StepDimTol_ProjectedZoneDefinition {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_ProjectedZoneDefinition(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_ProjectedZoneDefinition::Handle_StepDimTol_ProjectedZoneDefinition %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_ProjectedZoneDefinition;
class Handle_StepDimTol_ProjectedZoneDefinition : public Handle_StepDimTol_ToleranceZoneDefinition {

    public:
        // constructors
        Handle_StepDimTol_ProjectedZoneDefinition();
        Handle_StepDimTol_ProjectedZoneDefinition(const Handle_StepDimTol_ProjectedZoneDefinition &aHandle);
        Handle_StepDimTol_ProjectedZoneDefinition(const StepDimTol_ProjectedZoneDefinition *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_ProjectedZoneDefinition DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_ProjectedZoneDefinition {
    StepDimTol_ProjectedZoneDefinition* _get_reference() {
    return (StepDimTol_ProjectedZoneDefinition*)$self->get();
    }
};

%extend Handle_StepDimTol_ProjectedZoneDefinition {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_ProjectedZoneDefinition {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_RoundnessTolerance;
class StepDimTol_RoundnessTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("compactdefaultargs") StepDimTol_RoundnessTolerance;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_RoundnessTolerance;
		 StepDimTol_RoundnessTolerance ();
};


%extend StepDimTol_RoundnessTolerance {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_RoundnessTolerance(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_RoundnessTolerance::Handle_StepDimTol_RoundnessTolerance %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_RoundnessTolerance;
class Handle_StepDimTol_RoundnessTolerance : public Handle_StepDimTol_GeometricTolerance {

    public:
        // constructors
        Handle_StepDimTol_RoundnessTolerance();
        Handle_StepDimTol_RoundnessTolerance(const Handle_StepDimTol_RoundnessTolerance &aHandle);
        Handle_StepDimTol_RoundnessTolerance(const StepDimTol_RoundnessTolerance *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_RoundnessTolerance DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_RoundnessTolerance {
    StepDimTol_RoundnessTolerance* _get_reference() {
    return (StepDimTol_RoundnessTolerance*)$self->get();
    }
};

%extend Handle_StepDimTol_RoundnessTolerance {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_RoundnessTolerance {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_RunoutZoneDefinition;
class StepDimTol_RunoutZoneDefinition : public StepDimTol_ToleranceZoneDefinition {
	public:
		%feature("compactdefaultargs") StepDimTol_RunoutZoneDefinition;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_RunoutZoneDefinition;
		 StepDimTol_RunoutZoneDefinition ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param theZone:
	:type theZone: Handle_StepDimTol_ToleranceZone &
	:param theBoundaries:
	:type theBoundaries: Handle_StepRepr_HArray1OfShapeAspect &
	:param theOrientation:
	:type theOrientation: Handle_StepDimTol_RunoutZoneOrientation &
	:rtype: None
") Init;
		void Init (const Handle_StepDimTol_ToleranceZone & theZone,const Handle_StepRepr_HArray1OfShapeAspect & theBoundaries,const Handle_StepDimTol_RunoutZoneOrientation & theOrientation);
		%feature("compactdefaultargs") Orientation;
		%feature("autodoc", "	* Returns field Orientation

	:rtype: inline Handle_StepDimTol_RunoutZoneOrientation
") Orientation;
		inline Handle_StepDimTol_RunoutZoneOrientation Orientation ();
		%feature("compactdefaultargs") SetOrientation;
		%feature("autodoc", "	* Set field Orientation

	:param theOrientation:
	:type theOrientation: Handle_StepDimTol_RunoutZoneOrientation &
	:rtype: inline void
") SetOrientation;
		inline void SetOrientation (const Handle_StepDimTol_RunoutZoneOrientation & theOrientation);
};


%extend StepDimTol_RunoutZoneDefinition {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_RunoutZoneDefinition(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_RunoutZoneDefinition::Handle_StepDimTol_RunoutZoneDefinition %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_RunoutZoneDefinition;
class Handle_StepDimTol_RunoutZoneDefinition : public Handle_StepDimTol_ToleranceZoneDefinition {

    public:
        // constructors
        Handle_StepDimTol_RunoutZoneDefinition();
        Handle_StepDimTol_RunoutZoneDefinition(const Handle_StepDimTol_RunoutZoneDefinition &aHandle);
        Handle_StepDimTol_RunoutZoneDefinition(const StepDimTol_RunoutZoneDefinition *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_RunoutZoneDefinition DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_RunoutZoneDefinition {
    StepDimTol_RunoutZoneDefinition* _get_reference() {
    return (StepDimTol_RunoutZoneDefinition*)$self->get();
    }
};

%extend Handle_StepDimTol_RunoutZoneDefinition {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_RunoutZoneDefinition {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_StraightnessTolerance;
class StepDimTol_StraightnessTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("compactdefaultargs") StepDimTol_StraightnessTolerance;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_StraightnessTolerance;
		 StepDimTol_StraightnessTolerance ();
};


%extend StepDimTol_StraightnessTolerance {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_StraightnessTolerance(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_StraightnessTolerance::Handle_StepDimTol_StraightnessTolerance %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_StraightnessTolerance;
class Handle_StepDimTol_StraightnessTolerance : public Handle_StepDimTol_GeometricTolerance {

    public:
        // constructors
        Handle_StepDimTol_StraightnessTolerance();
        Handle_StepDimTol_StraightnessTolerance(const Handle_StepDimTol_StraightnessTolerance &aHandle);
        Handle_StepDimTol_StraightnessTolerance(const StepDimTol_StraightnessTolerance *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_StraightnessTolerance DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_StraightnessTolerance {
    StepDimTol_StraightnessTolerance* _get_reference() {
    return (StepDimTol_StraightnessTolerance*)$self->get();
    }
};

%extend Handle_StepDimTol_StraightnessTolerance {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_StraightnessTolerance {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_SurfaceProfileTolerance;
class StepDimTol_SurfaceProfileTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("compactdefaultargs") StepDimTol_SurfaceProfileTolerance;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_SurfaceProfileTolerance;
		 StepDimTol_SurfaceProfileTolerance ();
};


%extend StepDimTol_SurfaceProfileTolerance {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_SurfaceProfileTolerance(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_SurfaceProfileTolerance::Handle_StepDimTol_SurfaceProfileTolerance %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_SurfaceProfileTolerance;
class Handle_StepDimTol_SurfaceProfileTolerance : public Handle_StepDimTol_GeometricTolerance {

    public:
        // constructors
        Handle_StepDimTol_SurfaceProfileTolerance();
        Handle_StepDimTol_SurfaceProfileTolerance(const Handle_StepDimTol_SurfaceProfileTolerance &aHandle);
        Handle_StepDimTol_SurfaceProfileTolerance(const StepDimTol_SurfaceProfileTolerance *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_SurfaceProfileTolerance DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_SurfaceProfileTolerance {
    StepDimTol_SurfaceProfileTolerance* _get_reference() {
    return (StepDimTol_SurfaceProfileTolerance*)$self->get();
    }
};

%extend Handle_StepDimTol_SurfaceProfileTolerance {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_SurfaceProfileTolerance {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_UnequallyDisposedGeometricTolerance;
class StepDimTol_UnequallyDisposedGeometricTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("compactdefaultargs") StepDimTol_UnequallyDisposedGeometricTolerance;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_UnequallyDisposedGeometricTolerance;
		 StepDimTol_UnequallyDisposedGeometricTolerance ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:param theDescription:
	:type theDescription: Handle_TCollection_HAsciiString &
	:param theMagnitude:
	:type theMagnitude: Handle_StepBasic_MeasureWithUnit &
	:param theTolerancedShapeAspect:
	:type theTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget &
	:param theDisplacement:
	:type theDisplacement: Handle_StepBasic_LengthMeasureWithUnit &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theName,const Handle_TCollection_HAsciiString & theDescription,const Handle_StepBasic_MeasureWithUnit & theMagnitude,const StepDimTol_GeometricToleranceTarget & theTolerancedShapeAspect,const Handle_StepBasic_LengthMeasureWithUnit & theDisplacement);
		%feature("compactdefaultargs") Displacement;
		%feature("autodoc", "	* Returns field Displacement

	:rtype: inline Handle_StepBasic_LengthMeasureWithUnit
") Displacement;
		inline Handle_StepBasic_LengthMeasureWithUnit Displacement ();
		%feature("compactdefaultargs") SetDisplacement;
		%feature("autodoc", "	* Set field Displacement

	:param theDisplacement:
	:type theDisplacement: Handle_StepBasic_LengthMeasureWithUnit &
	:rtype: inline void
") SetDisplacement;
		inline void SetDisplacement (const Handle_StepBasic_LengthMeasureWithUnit & theDisplacement);
};


%extend StepDimTol_UnequallyDisposedGeometricTolerance {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_UnequallyDisposedGeometricTolerance(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_UnequallyDisposedGeometricTolerance::Handle_StepDimTol_UnequallyDisposedGeometricTolerance %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_UnequallyDisposedGeometricTolerance;
class Handle_StepDimTol_UnequallyDisposedGeometricTolerance : public Handle_StepDimTol_GeometricTolerance {

    public:
        // constructors
        Handle_StepDimTol_UnequallyDisposedGeometricTolerance();
        Handle_StepDimTol_UnequallyDisposedGeometricTolerance(const Handle_StepDimTol_UnequallyDisposedGeometricTolerance &aHandle);
        Handle_StepDimTol_UnequallyDisposedGeometricTolerance(const StepDimTol_UnequallyDisposedGeometricTolerance *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_UnequallyDisposedGeometricTolerance DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_UnequallyDisposedGeometricTolerance {
    StepDimTol_UnequallyDisposedGeometricTolerance* _get_reference() {
    return (StepDimTol_UnequallyDisposedGeometricTolerance*)$self->get();
    }
};

%extend Handle_StepDimTol_UnequallyDisposedGeometricTolerance {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_UnequallyDisposedGeometricTolerance {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_AngularityTolerance;
class StepDimTol_AngularityTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("compactdefaultargs") StepDimTol_AngularityTolerance;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_AngularityTolerance;
		 StepDimTol_AngularityTolerance ();
};


%extend StepDimTol_AngularityTolerance {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_AngularityTolerance(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_AngularityTolerance::Handle_StepDimTol_AngularityTolerance %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_AngularityTolerance;
class Handle_StepDimTol_AngularityTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {

    public:
        // constructors
        Handle_StepDimTol_AngularityTolerance();
        Handle_StepDimTol_AngularityTolerance(const Handle_StepDimTol_AngularityTolerance &aHandle);
        Handle_StepDimTol_AngularityTolerance(const StepDimTol_AngularityTolerance *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_AngularityTolerance DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_AngularityTolerance {
    StepDimTol_AngularityTolerance* _get_reference() {
    return (StepDimTol_AngularityTolerance*)$self->get();
    }
};

%extend Handle_StepDimTol_AngularityTolerance {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_AngularityTolerance {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_CircularRunoutTolerance;
class StepDimTol_CircularRunoutTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("compactdefaultargs") StepDimTol_CircularRunoutTolerance;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_CircularRunoutTolerance;
		 StepDimTol_CircularRunoutTolerance ();
};


%extend StepDimTol_CircularRunoutTolerance {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_CircularRunoutTolerance(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_CircularRunoutTolerance::Handle_StepDimTol_CircularRunoutTolerance %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_CircularRunoutTolerance;
class Handle_StepDimTol_CircularRunoutTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {

    public:
        // constructors
        Handle_StepDimTol_CircularRunoutTolerance();
        Handle_StepDimTol_CircularRunoutTolerance(const Handle_StepDimTol_CircularRunoutTolerance &aHandle);
        Handle_StepDimTol_CircularRunoutTolerance(const StepDimTol_CircularRunoutTolerance *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_CircularRunoutTolerance DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_CircularRunoutTolerance {
    StepDimTol_CircularRunoutTolerance* _get_reference() {
    return (StepDimTol_CircularRunoutTolerance*)$self->get();
    }
};

%extend Handle_StepDimTol_CircularRunoutTolerance {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_CircularRunoutTolerance {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_CoaxialityTolerance;
class StepDimTol_CoaxialityTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("compactdefaultargs") StepDimTol_CoaxialityTolerance;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_CoaxialityTolerance;
		 StepDimTol_CoaxialityTolerance ();
};


%extend StepDimTol_CoaxialityTolerance {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_CoaxialityTolerance(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_CoaxialityTolerance::Handle_StepDimTol_CoaxialityTolerance %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_CoaxialityTolerance;
class Handle_StepDimTol_CoaxialityTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {

    public:
        // constructors
        Handle_StepDimTol_CoaxialityTolerance();
        Handle_StepDimTol_CoaxialityTolerance(const Handle_StepDimTol_CoaxialityTolerance &aHandle);
        Handle_StepDimTol_CoaxialityTolerance(const StepDimTol_CoaxialityTolerance *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_CoaxialityTolerance DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_CoaxialityTolerance {
    StepDimTol_CoaxialityTolerance* _get_reference() {
    return (StepDimTol_CoaxialityTolerance*)$self->get();
    }
};

%extend Handle_StepDimTol_CoaxialityTolerance {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_CoaxialityTolerance {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_ConcentricityTolerance;
class StepDimTol_ConcentricityTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("compactdefaultargs") StepDimTol_ConcentricityTolerance;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_ConcentricityTolerance;
		 StepDimTol_ConcentricityTolerance ();
};


%extend StepDimTol_ConcentricityTolerance {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_ConcentricityTolerance(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_ConcentricityTolerance::Handle_StepDimTol_ConcentricityTolerance %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_ConcentricityTolerance;
class Handle_StepDimTol_ConcentricityTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {

    public:
        // constructors
        Handle_StepDimTol_ConcentricityTolerance();
        Handle_StepDimTol_ConcentricityTolerance(const Handle_StepDimTol_ConcentricityTolerance &aHandle);
        Handle_StepDimTol_ConcentricityTolerance(const StepDimTol_ConcentricityTolerance *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_ConcentricityTolerance DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_ConcentricityTolerance {
    StepDimTol_ConcentricityTolerance* _get_reference() {
    return (StepDimTol_ConcentricityTolerance*)$self->get();
    }
};

%extend Handle_StepDimTol_ConcentricityTolerance {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_ConcentricityTolerance {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol;
class StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol : public StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod {
	public:
		%feature("compactdefaultargs") StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol;
		%feature("autodoc", "	:rtype: None
") StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol;
		 StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:param theDescription:
	:type theDescription: Handle_TCollection_HAsciiString &
	:param theMagnitude:
	:type theMagnitude: Handle_StepBasic_MeasureWithUnit &
	:param theTolerancedShapeAspect:
	:type theTolerancedShapeAspect: Handle_StepRepr_ShapeAspect &
	:param theGTWDR:
	:type theGTWDR: Handle_StepDimTol_GeometricToleranceWithDatumReference &
	:param theGTWM:
	:type theGTWM: Handle_StepDimTol_GeometricToleranceWithModifiers &
	:param theMaxTol:
	:type theMaxTol: Handle_StepBasic_LengthMeasureWithUnit &
	:param theType:
	:type theType: StepDimTol_GeometricToleranceType
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theName,const Handle_TCollection_HAsciiString & theDescription,const Handle_StepBasic_MeasureWithUnit & theMagnitude,const Handle_StepRepr_ShapeAspect & theTolerancedShapeAspect,const Handle_StepDimTol_GeometricToleranceWithDatumReference & theGTWDR,const Handle_StepDimTol_GeometricToleranceWithModifiers & theGTWM,const Handle_StepBasic_LengthMeasureWithUnit & theMaxTol,const StepDimTol_GeometricToleranceType theType);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aMagnitude:
	:type aMagnitude: Handle_StepBasic_MeasureWithUnit &
	:param aTolerancedShapeAspect:
	:type aTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget &
	:param aGTWDR:
	:type aGTWDR: Handle_StepDimTol_GeometricToleranceWithDatumReference &
	:param aGTWM:
	:type aGTWM: Handle_StepDimTol_GeometricToleranceWithModifiers &
	:param theMaxTol:
	:type theMaxTol: Handle_StepBasic_LengthMeasureWithUnit &
	:param theType:
	:type theType: StepDimTol_GeometricToleranceType
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription,const Handle_StepBasic_MeasureWithUnit & aMagnitude,const StepDimTol_GeometricToleranceTarget & aTolerancedShapeAspect,const Handle_StepDimTol_GeometricToleranceWithDatumReference & aGTWDR,const Handle_StepDimTol_GeometricToleranceWithModifiers & aGTWM,const Handle_StepBasic_LengthMeasureWithUnit & theMaxTol,const StepDimTol_GeometricToleranceType theType);
		%feature("compactdefaultargs") SetMaxTolerance;
		%feature("autodoc", "	:param theMaxTol:
	:type theMaxTol: Handle_StepBasic_LengthMeasureWithUnit &
	:rtype: inline void
") SetMaxTolerance;
		inline void SetMaxTolerance (Handle_StepBasic_LengthMeasureWithUnit & theMaxTol);
		%feature("compactdefaultargs") GetMaxTolerance;
		%feature("autodoc", "	:rtype: inline Handle_StepBasic_LengthMeasureWithUnit
") GetMaxTolerance;
		inline Handle_StepBasic_LengthMeasureWithUnit GetMaxTolerance ();
};


%extend StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol::Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol;
class Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol : public Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMod {

    public:
        // constructors
        Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol();
        Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol(const Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol &aHandle);
        Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol(const StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol {
    StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol* _get_reference() {
    return (StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol*)$self->get();
    }
};

%extend Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_GeoTolAndGeoTolWthDatRefAndGeoTolWthMaxTol {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol;
class StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol : public StepDimTol_GeoTolAndGeoTolWthDatRef {
	public:
		%feature("compactdefaultargs") StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol;
		%feature("autodoc", "	:rtype: None
") StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol;
		 StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:param theDescription:
	:type theDescription: Handle_TCollection_HAsciiString &
	:param theMagnitude:
	:type theMagnitude: Handle_StepBasic_MeasureWithUnit &
	:param theTolerancedShapeAspect:
	:type theTolerancedShapeAspect: Handle_StepRepr_ShapeAspect &
	:param theGTWDR:
	:type theGTWDR: Handle_StepDimTol_GeometricToleranceWithDatumReference &
	:param theType:
	:type theType: StepDimTol_GeometricToleranceType
	:param theUDGT:
	:type theUDGT: Handle_StepDimTol_UnequallyDisposedGeometricTolerance &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theName,const Handle_TCollection_HAsciiString & theDescription,const Handle_StepBasic_MeasureWithUnit & theMagnitude,const Handle_StepRepr_ShapeAspect & theTolerancedShapeAspect,const Handle_StepDimTol_GeometricToleranceWithDatumReference & theGTWDR,const StepDimTol_GeometricToleranceType theType,const Handle_StepDimTol_UnequallyDisposedGeometricTolerance & theUDGT);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aMagnitude:
	:type aMagnitude: Handle_StepBasic_MeasureWithUnit &
	:param aTolerancedShapeAspect:
	:type aTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget &
	:param aGTWDR:
	:type aGTWDR: Handle_StepDimTol_GeometricToleranceWithDatumReference &
	:param theType:
	:type theType: StepDimTol_GeometricToleranceType
	:param theUDGT:
	:type theUDGT: Handle_StepDimTol_UnequallyDisposedGeometricTolerance &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription,const Handle_StepBasic_MeasureWithUnit & aMagnitude,const StepDimTol_GeometricToleranceTarget & aTolerancedShapeAspect,const Handle_StepDimTol_GeometricToleranceWithDatumReference & aGTWDR,const StepDimTol_GeometricToleranceType theType,const Handle_StepDimTol_UnequallyDisposedGeometricTolerance & theUDGT);
		%feature("compactdefaultargs") SetUnequallyDisposedGeometricTolerance;
		%feature("autodoc", "	:param theUDGT:
	:type theUDGT: Handle_StepDimTol_UnequallyDisposedGeometricTolerance &
	:rtype: inline void
") SetUnequallyDisposedGeometricTolerance;
		inline void SetUnequallyDisposedGeometricTolerance (const Handle_StepDimTol_UnequallyDisposedGeometricTolerance & theUDGT);
		%feature("compactdefaultargs") GetUnequallyDisposedGeometricTolerance;
		%feature("autodoc", "	:rtype: inline Handle_StepDimTol_UnequallyDisposedGeometricTolerance
") GetUnequallyDisposedGeometricTolerance;
		inline Handle_StepDimTol_UnequallyDisposedGeometricTolerance GetUnequallyDisposedGeometricTolerance ();
};


%extend StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol::Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol;
class Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol : public Handle_StepDimTol_GeoTolAndGeoTolWthDatRef {

    public:
        // constructors
        Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol();
        Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol(const Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol &aHandle);
        Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol(const StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol {
    StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol* _get_reference() {
    return (StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol*)$self->get();
    }
};

%extend Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_GeoTolAndGeoTolWthDatRefAndUneqDisGeoTol {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_GeoTolAndGeoTolWthMaxTol;
class StepDimTol_GeoTolAndGeoTolWthMaxTol : public StepDimTol_GeoTolAndGeoTolWthMod {
	public:
		%feature("compactdefaultargs") StepDimTol_GeoTolAndGeoTolWthMaxTol;
		%feature("autodoc", "	:rtype: None
") StepDimTol_GeoTolAndGeoTolWthMaxTol;
		 StepDimTol_GeoTolAndGeoTolWthMaxTol ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:param theDescription:
	:type theDescription: Handle_TCollection_HAsciiString &
	:param theMagnitude:
	:type theMagnitude: Handle_StepBasic_MeasureWithUnit &
	:param theTolerancedShapeAspect:
	:type theTolerancedShapeAspect: Handle_StepRepr_ShapeAspect &
	:param theGTWM:
	:type theGTWM: Handle_StepDimTol_GeometricToleranceWithModifiers &
	:param theMaxTol:
	:type theMaxTol: Handle_StepBasic_LengthMeasureWithUnit &
	:param theType:
	:type theType: StepDimTol_GeometricToleranceType
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theName,const Handle_TCollection_HAsciiString & theDescription,const Handle_StepBasic_MeasureWithUnit & theMagnitude,const Handle_StepRepr_ShapeAspect & theTolerancedShapeAspect,const Handle_StepDimTol_GeometricToleranceWithModifiers & theGTWM,const Handle_StepBasic_LengthMeasureWithUnit & theMaxTol,const StepDimTol_GeometricToleranceType theType);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: Handle_TCollection_HAsciiString &
	:param aDescription:
	:type aDescription: Handle_TCollection_HAsciiString &
	:param aMagnitude:
	:type aMagnitude: Handle_StepBasic_MeasureWithUnit &
	:param aTolerancedShapeAspect:
	:type aTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget &
	:param aGTWM:
	:type aGTWM: Handle_StepDimTol_GeometricToleranceWithModifiers &
	:param theMaxTol:
	:type theMaxTol: Handle_StepBasic_LengthMeasureWithUnit &
	:param theType:
	:type theType: StepDimTol_GeometricToleranceType
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & aName,const Handle_TCollection_HAsciiString & aDescription,const Handle_StepBasic_MeasureWithUnit & aMagnitude,const StepDimTol_GeometricToleranceTarget & aTolerancedShapeAspect,const Handle_StepDimTol_GeometricToleranceWithModifiers & aGTWM,const Handle_StepBasic_LengthMeasureWithUnit & theMaxTol,const StepDimTol_GeometricToleranceType theType);
		%feature("compactdefaultargs") SetMaxTolerance;
		%feature("autodoc", "	:param theMaxTol:
	:type theMaxTol: Handle_StepBasic_LengthMeasureWithUnit &
	:rtype: inline void
") SetMaxTolerance;
		inline void SetMaxTolerance (Handle_StepBasic_LengthMeasureWithUnit & theMaxTol);
		%feature("compactdefaultargs") GetMaxTolerance;
		%feature("autodoc", "	:rtype: inline Handle_StepBasic_LengthMeasureWithUnit
") GetMaxTolerance;
		inline Handle_StepBasic_LengthMeasureWithUnit GetMaxTolerance ();
};


%extend StepDimTol_GeoTolAndGeoTolWthMaxTol {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_GeoTolAndGeoTolWthMaxTol(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_GeoTolAndGeoTolWthMaxTol::Handle_StepDimTol_GeoTolAndGeoTolWthMaxTol %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_GeoTolAndGeoTolWthMaxTol;
class Handle_StepDimTol_GeoTolAndGeoTolWthMaxTol : public Handle_StepDimTol_GeoTolAndGeoTolWthMod {

    public:
        // constructors
        Handle_StepDimTol_GeoTolAndGeoTolWthMaxTol();
        Handle_StepDimTol_GeoTolAndGeoTolWthMaxTol(const Handle_StepDimTol_GeoTolAndGeoTolWthMaxTol &aHandle);
        Handle_StepDimTol_GeoTolAndGeoTolWthMaxTol(const StepDimTol_GeoTolAndGeoTolWthMaxTol *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_GeoTolAndGeoTolWthMaxTol DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_GeoTolAndGeoTolWthMaxTol {
    StepDimTol_GeoTolAndGeoTolWthMaxTol* _get_reference() {
    return (StepDimTol_GeoTolAndGeoTolWthMaxTol*)$self->get();
    }
};

%extend Handle_StepDimTol_GeoTolAndGeoTolWthMaxTol {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_GeoTolAndGeoTolWthMaxTol {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_GeometricToleranceWithDefinedAreaUnit;
class StepDimTol_GeometricToleranceWithDefinedAreaUnit : public StepDimTol_GeometricToleranceWithDefinedUnit {
	public:
		%feature("compactdefaultargs") StepDimTol_GeometricToleranceWithDefinedAreaUnit;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_GeometricToleranceWithDefinedAreaUnit;
		 StepDimTol_GeometricToleranceWithDefinedAreaUnit ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:param theDescription:
	:type theDescription: Handle_TCollection_HAsciiString &
	:param theMagnitude:
	:type theMagnitude: Handle_StepBasic_MeasureWithUnit &
	:param theTolerancedShapeAspect:
	:type theTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget &
	:param theUnitSize:
	:type theUnitSize: Handle_StepBasic_LengthMeasureWithUnit &
	:param theAreaType:
	:type theAreaType: StepDimTol_AreaUnitType
	:param theHasSecondUnitSize:
	:type theHasSecondUnitSize: bool
	:param theSecondUnitSize:
	:type theSecondUnitSize: Handle_StepBasic_LengthMeasureWithUnit &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theName,const Handle_TCollection_HAsciiString & theDescription,const Handle_StepBasic_MeasureWithUnit & theMagnitude,const StepDimTol_GeometricToleranceTarget & theTolerancedShapeAspect,const Handle_StepBasic_LengthMeasureWithUnit & theUnitSize,const StepDimTol_AreaUnitType theAreaType,const Standard_Boolean theHasSecondUnitSize,const Handle_StepBasic_LengthMeasureWithUnit & theSecondUnitSize);
		%feature("compactdefaultargs") AreaType;
		%feature("autodoc", "	* Returns field AreaType

	:rtype: inline StepDimTol_AreaUnitType
") AreaType;
		inline StepDimTol_AreaUnitType AreaType ();
		%feature("compactdefaultargs") SetAreaType;
		%feature("autodoc", "	* Set field AreaType

	:param theAreaType:
	:type theAreaType: StepDimTol_AreaUnitType
	:rtype: inline void
") SetAreaType;
		inline void SetAreaType (const StepDimTol_AreaUnitType theAreaType);
		%feature("compactdefaultargs") SecondUnitSize;
		%feature("autodoc", "	* Returns field SecondUnitSize

	:rtype: inline Handle_StepBasic_LengthMeasureWithUnit
") SecondUnitSize;
		inline Handle_StepBasic_LengthMeasureWithUnit SecondUnitSize ();
		%feature("compactdefaultargs") SetSecondUnitSize;
		%feature("autodoc", "	* Set field SecondUnitSize

	:param theSecondUnitSize:
	:type theSecondUnitSize: Handle_StepBasic_LengthMeasureWithUnit &
	:rtype: inline void
") SetSecondUnitSize;
		inline void SetSecondUnitSize (const Handle_StepBasic_LengthMeasureWithUnit & theSecondUnitSize);
		%feature("compactdefaultargs") HasSecondUnitSize;
		%feature("autodoc", "	* Indicates if SecondUnitSize field exist

	:rtype: inline bool
") HasSecondUnitSize;
		inline Standard_Boolean HasSecondUnitSize ();
};


%extend StepDimTol_GeometricToleranceWithDefinedAreaUnit {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_GeometricToleranceWithDefinedAreaUnit(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_GeometricToleranceWithDefinedAreaUnit::Handle_StepDimTol_GeometricToleranceWithDefinedAreaUnit %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_GeometricToleranceWithDefinedAreaUnit;
class Handle_StepDimTol_GeometricToleranceWithDefinedAreaUnit : public Handle_StepDimTol_GeometricToleranceWithDefinedUnit {

    public:
        // constructors
        Handle_StepDimTol_GeometricToleranceWithDefinedAreaUnit();
        Handle_StepDimTol_GeometricToleranceWithDefinedAreaUnit(const Handle_StepDimTol_GeometricToleranceWithDefinedAreaUnit &aHandle);
        Handle_StepDimTol_GeometricToleranceWithDefinedAreaUnit(const StepDimTol_GeometricToleranceWithDefinedAreaUnit *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_GeometricToleranceWithDefinedAreaUnit DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_GeometricToleranceWithDefinedAreaUnit {
    StepDimTol_GeometricToleranceWithDefinedAreaUnit* _get_reference() {
    return (StepDimTol_GeometricToleranceWithDefinedAreaUnit*)$self->get();
    }
};

%extend Handle_StepDimTol_GeometricToleranceWithDefinedAreaUnit {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_GeometricToleranceWithDefinedAreaUnit {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_GeometricToleranceWithMaximumTolerance;
class StepDimTol_GeometricToleranceWithMaximumTolerance : public StepDimTol_GeometricToleranceWithModifiers {
	public:
		%feature("compactdefaultargs") StepDimTol_GeometricToleranceWithMaximumTolerance;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_GeometricToleranceWithMaximumTolerance;
		 StepDimTol_GeometricToleranceWithMaximumTolerance ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:param theDescription:
	:type theDescription: Handle_TCollection_HAsciiString &
	:param theMagnitude:
	:type theMagnitude: Handle_StepBasic_MeasureWithUnit &
	:param theTolerancedShapeAspect:
	:type theTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget &
	:param theModifiers:
	:type theModifiers: Handle_StepDimTol_HArray1OfGeometricToleranceModifier &
	:param theUnitSize:
	:type theUnitSize: Handle_StepBasic_LengthMeasureWithUnit &
	:rtype: None
") Init;
		void Init (const Handle_TCollection_HAsciiString & theName,const Handle_TCollection_HAsciiString & theDescription,const Handle_StepBasic_MeasureWithUnit & theMagnitude,const StepDimTol_GeometricToleranceTarget & theTolerancedShapeAspect,const Handle_StepDimTol_HArray1OfGeometricToleranceModifier & theModifiers,const Handle_StepBasic_LengthMeasureWithUnit & theUnitSize);
		%feature("compactdefaultargs") MaximumUpperTolerance;
		%feature("autodoc", "	* Returns field MaximumUpperTolerance

	:rtype: inline Handle_StepBasic_LengthMeasureWithUnit
") MaximumUpperTolerance;
		inline Handle_StepBasic_LengthMeasureWithUnit MaximumUpperTolerance ();
		%feature("compactdefaultargs") SetMaximumUpperTolerance;
		%feature("autodoc", "	* Set field MaximumUpperTolerance

	:param theMaximumUpperTolerance:
	:type theMaximumUpperTolerance: Handle_StepBasic_LengthMeasureWithUnit &
	:rtype: inline void
") SetMaximumUpperTolerance;
		inline void SetMaximumUpperTolerance (const Handle_StepBasic_LengthMeasureWithUnit & theMaximumUpperTolerance);
};


%extend StepDimTol_GeometricToleranceWithMaximumTolerance {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_GeometricToleranceWithMaximumTolerance(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_GeometricToleranceWithMaximumTolerance::Handle_StepDimTol_GeometricToleranceWithMaximumTolerance %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_GeometricToleranceWithMaximumTolerance;
class Handle_StepDimTol_GeometricToleranceWithMaximumTolerance : public Handle_StepDimTol_GeometricToleranceWithModifiers {

    public:
        // constructors
        Handle_StepDimTol_GeometricToleranceWithMaximumTolerance();
        Handle_StepDimTol_GeometricToleranceWithMaximumTolerance(const Handle_StepDimTol_GeometricToleranceWithMaximumTolerance &aHandle);
        Handle_StepDimTol_GeometricToleranceWithMaximumTolerance(const StepDimTol_GeometricToleranceWithMaximumTolerance *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_GeometricToleranceWithMaximumTolerance DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_GeometricToleranceWithMaximumTolerance {
    StepDimTol_GeometricToleranceWithMaximumTolerance* _get_reference() {
    return (StepDimTol_GeometricToleranceWithMaximumTolerance*)$self->get();
    }
};

%extend Handle_StepDimTol_GeometricToleranceWithMaximumTolerance {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_GeometricToleranceWithMaximumTolerance {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_ParallelismTolerance;
class StepDimTol_ParallelismTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("compactdefaultargs") StepDimTol_ParallelismTolerance;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_ParallelismTolerance;
		 StepDimTol_ParallelismTolerance ();
};


%extend StepDimTol_ParallelismTolerance {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_ParallelismTolerance(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_ParallelismTolerance::Handle_StepDimTol_ParallelismTolerance %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_ParallelismTolerance;
class Handle_StepDimTol_ParallelismTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {

    public:
        // constructors
        Handle_StepDimTol_ParallelismTolerance();
        Handle_StepDimTol_ParallelismTolerance(const Handle_StepDimTol_ParallelismTolerance &aHandle);
        Handle_StepDimTol_ParallelismTolerance(const StepDimTol_ParallelismTolerance *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_ParallelismTolerance DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_ParallelismTolerance {
    StepDimTol_ParallelismTolerance* _get_reference() {
    return (StepDimTol_ParallelismTolerance*)$self->get();
    }
};

%extend Handle_StepDimTol_ParallelismTolerance {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_ParallelismTolerance {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_PerpendicularityTolerance;
class StepDimTol_PerpendicularityTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("compactdefaultargs") StepDimTol_PerpendicularityTolerance;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_PerpendicularityTolerance;
		 StepDimTol_PerpendicularityTolerance ();
};


%extend StepDimTol_PerpendicularityTolerance {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_PerpendicularityTolerance(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_PerpendicularityTolerance::Handle_StepDimTol_PerpendicularityTolerance %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_PerpendicularityTolerance;
class Handle_StepDimTol_PerpendicularityTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {

    public:
        // constructors
        Handle_StepDimTol_PerpendicularityTolerance();
        Handle_StepDimTol_PerpendicularityTolerance(const Handle_StepDimTol_PerpendicularityTolerance &aHandle);
        Handle_StepDimTol_PerpendicularityTolerance(const StepDimTol_PerpendicularityTolerance *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_PerpendicularityTolerance DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_PerpendicularityTolerance {
    StepDimTol_PerpendicularityTolerance* _get_reference() {
    return (StepDimTol_PerpendicularityTolerance*)$self->get();
    }
};

%extend Handle_StepDimTol_PerpendicularityTolerance {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_PerpendicularityTolerance {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_SymmetryTolerance;
class StepDimTol_SymmetryTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("compactdefaultargs") StepDimTol_SymmetryTolerance;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_SymmetryTolerance;
		 StepDimTol_SymmetryTolerance ();
};


%extend StepDimTol_SymmetryTolerance {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_SymmetryTolerance(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_SymmetryTolerance::Handle_StepDimTol_SymmetryTolerance %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_SymmetryTolerance;
class Handle_StepDimTol_SymmetryTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {

    public:
        // constructors
        Handle_StepDimTol_SymmetryTolerance();
        Handle_StepDimTol_SymmetryTolerance(const Handle_StepDimTol_SymmetryTolerance &aHandle);
        Handle_StepDimTol_SymmetryTolerance(const StepDimTol_SymmetryTolerance *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_SymmetryTolerance DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_SymmetryTolerance {
    StepDimTol_SymmetryTolerance* _get_reference() {
    return (StepDimTol_SymmetryTolerance*)$self->get();
    }
};

%extend Handle_StepDimTol_SymmetryTolerance {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_SymmetryTolerance {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepDimTol_TotalRunoutTolerance;
class StepDimTol_TotalRunoutTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("compactdefaultargs") StepDimTol_TotalRunoutTolerance;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepDimTol_TotalRunoutTolerance;
		 StepDimTol_TotalRunoutTolerance ();
};


%extend StepDimTol_TotalRunoutTolerance {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepDimTol_TotalRunoutTolerance(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepDimTol_TotalRunoutTolerance::Handle_StepDimTol_TotalRunoutTolerance %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepDimTol_TotalRunoutTolerance;
class Handle_StepDimTol_TotalRunoutTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {

    public:
        // constructors
        Handle_StepDimTol_TotalRunoutTolerance();
        Handle_StepDimTol_TotalRunoutTolerance(const Handle_StepDimTol_TotalRunoutTolerance &aHandle);
        Handle_StepDimTol_TotalRunoutTolerance(const StepDimTol_TotalRunoutTolerance *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepDimTol_TotalRunoutTolerance DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepDimTol_TotalRunoutTolerance {
    StepDimTol_TotalRunoutTolerance* _get_reference() {
    return (StepDimTol_TotalRunoutTolerance*)$self->get();
    }
};

%extend Handle_StepDimTol_TotalRunoutTolerance {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepDimTol_TotalRunoutTolerance {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
