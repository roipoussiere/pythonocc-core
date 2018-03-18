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
%define STEPCAFCONTROLDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=STEPCAFCONTROLDOCSTRING) STEPCAFControl

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


%include STEPCAFControl_headers.i


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
%template(STEPCAFControl_DataMapOfLabelShape) NCollection_DataMap <TDF_Label , TopoDS_Shape , TDF_LabelMapHasher>;
%template(STEPCAFControl_DataMapOfPDExternFile) NCollection_DataMap <Handle(StepBasic_ProductDefinition) , Handle(STEPCAFControl_ExternFile) , TColStd_MapTransientHasher>;
%template(STEPCAFControl_DataMapOfShapePD) NCollection_DataMap <TopoDS_Shape , Handle(StepBasic_ProductDefinition) , TopTools_ShapeMapHasher>;
%template(STEPCAFControl_DataMapOfLabelExternFile) NCollection_DataMap <TDF_Label , Handle(STEPCAFControl_ExternFile) , TDF_LabelMapHasher>;
%template(STEPCAFControl_DataMapOfSDRExternFile) NCollection_DataMap <Handle(StepShape_ShapeDefinitionRepresentation) , Handle(STEPCAFControl_ExternFile) , TColStd_MapTransientHasher>;
%template(STEPCAFControl_DataMapOfShapeSDR) NCollection_DataMap <TopoDS_Shape , Handle(StepShape_ShapeDefinitionRepresentation) , TopTools_ShapeMapHasher>;
/* end templates declaration */

/* end templates declaration */

/* typedefs */
typedef NCollection_DataMap <TDF_Label , Handle_STEPCAFControl_ExternFile , TDF_LabelMapHasher>::Iterator STEPCAFControl_DataMapIteratorOfDataMapOfLabelExternFile;
typedef NCollection_DataMap <TDF_Label , TopoDS_Shape , TDF_LabelMapHasher>::Iterator STEPCAFControl_DataMapIteratorOfDataMapOfLabelShape;
typedef NCollection_DataMap <TDF_Label , TopoDS_Shape , TDF_LabelMapHasher> STEPCAFControl_DataMapOfLabelShape;
typedef NCollection_DataMap <TopoDS_Shape , Handle_StepBasic_ProductDefinition , TopTools_ShapeMapHasher>::Iterator STEPCAFControl_DataMapIteratorOfDataMapOfShapePD;
typedef NCollection_DataMap <TopoDS_Shape , Handle_StepShape_ShapeDefinitionRepresentation , TopTools_ShapeMapHasher>::Iterator STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR;
typedef NCollection_DataMap <Handle_StepBasic_ProductDefinition , Handle_STEPCAFControl_ExternFile , TColStd_MapTransientHasher> STEPCAFControl_DataMapOfPDExternFile;
typedef NCollection_DataMap <TopoDS_Shape , Handle_StepBasic_ProductDefinition , TopTools_ShapeMapHasher> STEPCAFControl_DataMapOfShapePD;
typedef NCollection_DataMap <TDF_Label , Handle_STEPCAFControl_ExternFile , TDF_LabelMapHasher> STEPCAFControl_DataMapOfLabelExternFile;
typedef NCollection_DataMap <Handle_StepShape_ShapeDefinitionRepresentation , Handle_STEPCAFControl_ExternFile , TColStd_MapTransientHasher>::Iterator STEPCAFControl_DataMapIteratorOfDataMapOfSDRExternFile;
typedef NCollection_DataMap <Handle_StepBasic_ProductDefinition , Handle_STEPCAFControl_ExternFile , TColStd_MapTransientHasher>::Iterator STEPCAFControl_DataMapIteratorOfDataMapOfPDExternFile;
typedef NCollection_DataMap <Handle_StepShape_ShapeDefinitionRepresentation , Handle_STEPCAFControl_ExternFile , TColStd_MapTransientHasher> STEPCAFControl_DataMapOfSDRExternFile;
typedef NCollection_DataMap <TopoDS_Shape , Handle_StepShape_ShapeDefinitionRepresentation , TopTools_ShapeMapHasher> STEPCAFControl_DataMapOfShapeSDR;
/* end typedefs declaration */

/* public enums */
/* end public enums declaration */

%nodefaultctor STEPCAFControl_ActorWrite;
class STEPCAFControl_ActorWrite : public STEPControl_ActorWrite {
	public:
		%feature("compactdefaultargs") STEPCAFControl_ActorWrite;
		%feature("autodoc", "	:rtype: None
") STEPCAFControl_ActorWrite;
		 STEPCAFControl_ActorWrite ();
		%feature("compactdefaultargs") IsAssembly;
		%feature("autodoc", "	* Check whether shape S is assembly Returns True if shape is registered in assemblies map

	:param S:
	:type S: TopoDS_Shape &
	:rtype: bool
") IsAssembly;
		virtual Standard_Boolean IsAssembly (TopoDS_Shape & S);
		%feature("compactdefaultargs") SetStdMode;
		%feature("autodoc", "	* Set standard mode of work In standard mode Actor --default-- behaves exactly as its ancestor, also map is cleared

	:param stdmode: default value is Standard_True
	:type stdmode: bool
	:rtype: None
") SetStdMode;
		void SetStdMode (const Standard_Boolean stdmode = Standard_True);
		%feature("compactdefaultargs") ClearMap;
		%feature("autodoc", "	* Clears map of shapes registered as assemblies

	:rtype: None
") ClearMap;
		void ClearMap ();
		%feature("compactdefaultargs") RegisterAssembly;
		%feature("autodoc", "	* Registers shape to be written as assembly The shape should be TopoDS_Compound --else does nothing--

	:param S:
	:type S: TopoDS_Shape &
	:rtype: None
") RegisterAssembly;
		void RegisterAssembly (const TopoDS_Shape & S);
};


%extend STEPCAFControl_ActorWrite {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_STEPCAFControl_ActorWrite(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_STEPCAFControl_ActorWrite::Handle_STEPCAFControl_ActorWrite %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_STEPCAFControl_ActorWrite;
class Handle_STEPCAFControl_ActorWrite : public Handle_STEPControl_ActorWrite {

    public:
        // constructors
        Handle_STEPCAFControl_ActorWrite();
        Handle_STEPCAFControl_ActorWrite(const Handle_STEPCAFControl_ActorWrite &aHandle);
        Handle_STEPCAFControl_ActorWrite(const STEPCAFControl_ActorWrite *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_STEPCAFControl_ActorWrite DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_STEPCAFControl_ActorWrite {
    STEPCAFControl_ActorWrite* _get_reference() {
    return (STEPCAFControl_ActorWrite*)$self->get();
    }
};

%extend Handle_STEPCAFControl_ActorWrite {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend STEPCAFControl_ActorWrite {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_Controller;
class STEPCAFControl_Controller : public STEPControl_Controller {
	public:
		%feature("compactdefaultargs") STEPCAFControl_Controller;
		%feature("autodoc", "	* Initializes the use of STEP Norm --the first time--

	:rtype: None
") STEPCAFControl_Controller;
		 STEPCAFControl_Controller ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Standard Initialisation. It creates a Controller for STEP-XCAF and records it to various names, available to select it later Returns True when done, False if could not be done

	:rtype: bool
") Init;
		static Standard_Boolean Init ();
};


%extend STEPCAFControl_Controller {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_STEPCAFControl_Controller(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_STEPCAFControl_Controller::Handle_STEPCAFControl_Controller %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_STEPCAFControl_Controller;
class Handle_STEPCAFControl_Controller : public Handle_STEPControl_Controller {

    public:
        // constructors
        Handle_STEPCAFControl_Controller();
        Handle_STEPCAFControl_Controller(const Handle_STEPCAFControl_Controller &aHandle);
        Handle_STEPCAFControl_Controller(const STEPCAFControl_Controller *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_STEPCAFControl_Controller DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_STEPCAFControl_Controller {
    STEPCAFControl_Controller* _get_reference() {
    return (STEPCAFControl_Controller*)$self->get();
    }
};

%extend Handle_STEPCAFControl_Controller {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend STEPCAFControl_Controller {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_ExternFile;
class STEPCAFControl_ExternFile : public Standard_Transient {
	public:
		%feature("compactdefaultargs") STEPCAFControl_ExternFile;
		%feature("autodoc", "	* Creates an empty structure

	:rtype: None
") STEPCAFControl_ExternFile;
		 STEPCAFControl_ExternFile ();
		%feature("compactdefaultargs") SetWS;
		%feature("autodoc", "	:param WS:
	:type WS: Handle_XSControl_WorkSession &
	:rtype: None
") SetWS;
		void SetWS (const Handle_XSControl_WorkSession & WS);
		%feature("compactdefaultargs") GetWS;
		%feature("autodoc", "	:rtype: Handle_XSControl_WorkSession
") GetWS;
		Handle_XSControl_WorkSession GetWS ();
		%feature("compactdefaultargs") SetLoadStatus;
		%feature("autodoc", "	:param stat:
	:type stat: IFSelect_ReturnStatus
	:rtype: None
") SetLoadStatus;
		void SetLoadStatus (const IFSelect_ReturnStatus stat);
		%feature("compactdefaultargs") GetLoadStatus;
		%feature("autodoc", "	:rtype: IFSelect_ReturnStatus
") GetLoadStatus;
		IFSelect_ReturnStatus GetLoadStatus ();
		%feature("compactdefaultargs") SetTransferStatus;
		%feature("autodoc", "	:param isok:
	:type isok: bool
	:rtype: None
") SetTransferStatus;
		void SetTransferStatus (const Standard_Boolean isok);
		%feature("compactdefaultargs") GetTransferStatus;
		%feature("autodoc", "	:rtype: bool
") GetTransferStatus;
		Standard_Boolean GetTransferStatus ();
		%feature("compactdefaultargs") SetWriteStatus;
		%feature("autodoc", "	:param stat:
	:type stat: IFSelect_ReturnStatus
	:rtype: None
") SetWriteStatus;
		void SetWriteStatus (const IFSelect_ReturnStatus stat);
		%feature("compactdefaultargs") GetWriteStatus;
		%feature("autodoc", "	:rtype: IFSelect_ReturnStatus
") GetWriteStatus;
		IFSelect_ReturnStatus GetWriteStatus ();
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	:param name:
	:type name: Handle_TCollection_HAsciiString &
	:rtype: None
") SetName;
		void SetName (const Handle_TCollection_HAsciiString & name);
		%feature("compactdefaultargs") GetName;
		%feature("autodoc", "	:rtype: Handle_TCollection_HAsciiString
") GetName;
		Handle_TCollection_HAsciiString GetName ();
		%feature("compactdefaultargs") SetLabel;
		%feature("autodoc", "	:param L:
	:type L: TDF_Label &
	:rtype: None
") SetLabel;
		void SetLabel (const TDF_Label & L);
		%feature("compactdefaultargs") GetLabel;
		%feature("autodoc", "	:rtype: TDF_Label
") GetLabel;
		TDF_Label GetLabel ();
};


%extend STEPCAFControl_ExternFile {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_STEPCAFControl_ExternFile(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_STEPCAFControl_ExternFile::Handle_STEPCAFControl_ExternFile %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_STEPCAFControl_ExternFile;
class Handle_STEPCAFControl_ExternFile : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_STEPCAFControl_ExternFile();
        Handle_STEPCAFControl_ExternFile(const Handle_STEPCAFControl_ExternFile &aHandle);
        Handle_STEPCAFControl_ExternFile(const STEPCAFControl_ExternFile *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_STEPCAFControl_ExternFile DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_STEPCAFControl_ExternFile {
    STEPCAFControl_ExternFile* _get_reference() {
    return (STEPCAFControl_ExternFile*)$self->get();
    }
};

%extend Handle_STEPCAFControl_ExternFile {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend STEPCAFControl_ExternFile {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_GDTProperty;
class STEPCAFControl_GDTProperty {
	public:
		%feature("compactdefaultargs") STEPCAFControl_GDTProperty;
		%feature("autodoc", "	:rtype: None
") STEPCAFControl_GDTProperty;
		 STEPCAFControl_GDTProperty ();
		%feature("compactdefaultargs") GetDimModifiers;
		%feature("autodoc", "	:param theCRI:
	:type theCRI: Handle_StepRepr_CompoundRepresentationItem &
	:param theModifiers:
	:type theModifiers: XCAFDimTolObjects_DimensionModifiersSequence &
	:rtype: void
") GetDimModifiers;
		static void GetDimModifiers (const Handle_StepRepr_CompoundRepresentationItem & theCRI,XCAFDimTolObjects_DimensionModifiersSequence & theModifiers);
		%feature("compactdefaultargs") GetDimClassOfTolerance;
		%feature("autodoc", "	:param theLAF:
	:type theLAF: Handle_StepShape_LimitsAndFits &
	:param theHolle:
	:type theHolle: bool
	:param theFV:
	:type theFV: XCAFDimTolObjects_DimensionFormVariance &
	:param theG:
	:type theG: XCAFDimTolObjects_DimensionGrade &
	:rtype: void
") GetDimClassOfTolerance;
		static void GetDimClassOfTolerance (const Handle_StepShape_LimitsAndFits & theLAF,Standard_Boolean &OutValue,XCAFDimTolObjects_DimensionFormVariance & theFV,XCAFDimTolObjects_DimensionGrade & theG);
		%feature("compactdefaultargs") GetDimType;
		%feature("autodoc", "	:param theName:
	:type theName: Handle_TCollection_HAsciiString &
	:param theType:
	:type theType: XCAFDimTolObjects_DimensionType &
	:rtype: bool
") GetDimType;
		static Standard_Boolean GetDimType (const Handle_TCollection_HAsciiString & theName,XCAFDimTolObjects_DimensionType & theType);
		%feature("compactdefaultargs") GetDatumTargetType;
		%feature("autodoc", "	:param theDescription:
	:type theDescription: Handle_TCollection_HAsciiString &
	:param theType:
	:type theType: XCAFDimTolObjects_DatumTargetType &
	:rtype: bool
") GetDatumTargetType;
		static Standard_Boolean GetDatumTargetType (const Handle_TCollection_HAsciiString & theDescription,XCAFDimTolObjects_DatumTargetType & theType);
		%feature("compactdefaultargs") GetDimQualifierType;
		%feature("autodoc", "	:param theDescription:
	:type theDescription: Handle_TCollection_HAsciiString &
	:param theType:
	:type theType: XCAFDimTolObjects_DimensionQualifier &
	:rtype: bool
") GetDimQualifierType;
		static Standard_Boolean GetDimQualifierType (const Handle_TCollection_HAsciiString & theDescription,XCAFDimTolObjects_DimensionQualifier & theType);
		%feature("compactdefaultargs") GetTolValueType;
		%feature("autodoc", "	:param theDescription:
	:type theDescription: Handle_TCollection_HAsciiString &
	:param theType:
	:type theType: XCAFDimTolObjects_GeomToleranceTypeValue &
	:rtype: bool
") GetTolValueType;
		static Standard_Boolean GetTolValueType (const Handle_TCollection_HAsciiString & theDescription,XCAFDimTolObjects_GeomToleranceTypeValue & theType);
		%feature("compactdefaultargs") GetTolValueType;
		%feature("autodoc", "	:param theType:
	:type theType: XCAFDimTolObjects_GeomToleranceTypeValue &
	:rtype: Handle_TCollection_HAsciiString
") GetTolValueType;
		static Handle_TCollection_HAsciiString GetTolValueType (const XCAFDimTolObjects_GeomToleranceTypeValue & theType);
		%feature("compactdefaultargs") GetDimTypeName;
		%feature("autodoc", "	:param theType:
	:type theType: XCAFDimTolObjects_DimensionType
	:rtype: Handle_TCollection_HAsciiString
") GetDimTypeName;
		static Handle_TCollection_HAsciiString GetDimTypeName (const XCAFDimTolObjects_DimensionType theType);
		%feature("compactdefaultargs") GetDimQualifierName;
		%feature("autodoc", "	:param theQualifier:
	:type theQualifier: XCAFDimTolObjects_DimensionQualifier
	:rtype: Handle_TCollection_HAsciiString
") GetDimQualifierName;
		static Handle_TCollection_HAsciiString GetDimQualifierName (const XCAFDimTolObjects_DimensionQualifier theQualifier);
		%feature("compactdefaultargs") GetDimModifierName;
		%feature("autodoc", "	:param theModifier:
	:type theModifier: XCAFDimTolObjects_DimensionModif
	:rtype: Handle_TCollection_HAsciiString
") GetDimModifierName;
		static Handle_TCollection_HAsciiString GetDimModifierName (const XCAFDimTolObjects_DimensionModif theModifier);
		%feature("compactdefaultargs") GetLimitsAndFits;
		%feature("autodoc", "	:param theHole:
	:type theHole: bool
	:param theFormVariance:
	:type theFormVariance: XCAFDimTolObjects_DimensionFormVariance
	:param theGrade:
	:type theGrade: XCAFDimTolObjects_DimensionGrade
	:rtype: Handle_StepShape_LimitsAndFits
") GetLimitsAndFits;
		static Handle_StepShape_LimitsAndFits GetLimitsAndFits (Standard_Boolean theHole,XCAFDimTolObjects_DimensionFormVariance theFormVariance,XCAFDimTolObjects_DimensionGrade theGrade);
		%feature("compactdefaultargs") GetDatumTargetName;
		%feature("autodoc", "	:param theDatumType:
	:type theDatumType: XCAFDimTolObjects_DatumTargetType
	:rtype: Handle_TCollection_HAsciiString
") GetDatumTargetName;
		static Handle_TCollection_HAsciiString GetDatumTargetName (const XCAFDimTolObjects_DatumTargetType theDatumType);
		%feature("compactdefaultargs") IsDimensionalLocation;
		%feature("autodoc", "	:param theType:
	:type theType: XCAFDimTolObjects_DimensionType
	:rtype: bool
") IsDimensionalLocation;
		static Standard_Boolean IsDimensionalLocation (const XCAFDimTolObjects_DimensionType theType);
		%feature("compactdefaultargs") IsDimensionalSize;
		%feature("autodoc", "	:param theType:
	:type theType: XCAFDimTolObjects_DimensionType
	:rtype: bool
") IsDimensionalSize;
		static Standard_Boolean IsDimensionalSize (const XCAFDimTolObjects_DimensionType theType);
		%feature("compactdefaultargs") GetGeomToleranceType;
		%feature("autodoc", "	:param theType:
	:type theType: XCAFDimTolObjects_GeomToleranceType
	:rtype: StepDimTol_GeometricToleranceType
") GetGeomToleranceType;
		static StepDimTol_GeometricToleranceType GetGeomToleranceType (const XCAFDimTolObjects_GeomToleranceType theType);
		%feature("compactdefaultargs") GetGeomToleranceType;
		%feature("autodoc", "	:param theType:
	:type theType: StepDimTol_GeometricToleranceType
	:rtype: XCAFDimTolObjects_GeomToleranceType
") GetGeomToleranceType;
		static XCAFDimTolObjects_GeomToleranceType GetGeomToleranceType (const StepDimTol_GeometricToleranceType theType);
		%feature("compactdefaultargs") GetGeomTolerance;
		%feature("autodoc", "	:param theType:
	:type theType: XCAFDimTolObjects_GeomToleranceType
	:rtype: Handle_StepDimTol_GeometricTolerance
") GetGeomTolerance;
		static Handle_StepDimTol_GeometricTolerance GetGeomTolerance (const XCAFDimTolObjects_GeomToleranceType theType);
		%feature("compactdefaultargs") GetGeomToleranceModifier;
		%feature("autodoc", "	:param theModifier:
	:type theModifier: XCAFDimTolObjects_GeomToleranceModif
	:rtype: StepDimTol_GeometricToleranceModifier
") GetGeomToleranceModifier;
		static StepDimTol_GeometricToleranceModifier GetGeomToleranceModifier (const XCAFDimTolObjects_GeomToleranceModif theModifier);
		%feature("compactdefaultargs") GetDatumRefModifiers;
		%feature("autodoc", "	:param theModifiers:
	:type theModifiers: XCAFDimTolObjects_DatumModifiersSequence
	:param theModifWithVal:
	:type theModifWithVal: XCAFDimTolObjects_DatumModifWithValue
	:param theValue:
	:type theValue: float
	:param theUnit:
	:type theUnit: StepBasic_Unit
	:rtype: Handle_StepDimTol_HArray1OfDatumReferenceModifier
") GetDatumRefModifiers;
		static Handle_StepDimTol_HArray1OfDatumReferenceModifier GetDatumRefModifiers (const XCAFDimTolObjects_DatumModifiersSequence theModifiers,const XCAFDimTolObjects_DatumModifWithValue theModifWithVal,const Standard_Real theValue,const StepBasic_Unit theUnit);
		%feature("compactdefaultargs") GetTessellation;
		%feature("autodoc", "	:param theShape:
	:type theShape: TopoDS_Shape
	:rtype: Handle_StepVisual_TessellatedGeometricSet
") GetTessellation;
		static Handle_StepVisual_TessellatedGeometricSet GetTessellation (const TopoDS_Shape theShape);
};


%extend STEPCAFControl_GDTProperty {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_Reader;
class STEPCAFControl_Reader {
	public:
		%feature("compactdefaultargs") STEPCAFControl_Reader;
		%feature("autodoc", "	* Creates a reader with an empty STEP model and sets ColorMode, LayerMode, NameMode and PropsMode to Standard_True.

	:rtype: None
") STEPCAFControl_Reader;
		 STEPCAFControl_Reader ();
		%feature("compactdefaultargs") STEPCAFControl_Reader;
		%feature("autodoc", "	* Creates a reader tool and attaches it to an already existing Session Clears the session if it was not yet set for STEP

	:param WS:
	:type WS: Handle_XSControl_WorkSession &
	:param scratch: default value is Standard_True
	:type scratch: bool
	:rtype: None
") STEPCAFControl_Reader;
		 STEPCAFControl_Reader (const Handle_XSControl_WorkSession & WS,const Standard_Boolean scratch = Standard_True);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Clears the internal data structures and attaches to a new session Clears the session if it was not yet set for STEP

	:param WS:
	:type WS: Handle_XSControl_WorkSession &
	:param scratch: default value is Standard_True
	:type scratch: bool
	:rtype: None
") Init;
		void Init (const Handle_XSControl_WorkSession & WS,const Standard_Boolean scratch = Standard_True);
		%feature("compactdefaultargs") ReadFile;
		%feature("autodoc", "	* Loads a file and returns the read status Provided for use like single-file reader

	:param filename:
	:type filename: char *
	:rtype: IFSelect_ReturnStatus
") ReadFile;
		IFSelect_ReturnStatus ReadFile (const char * filename);
		%feature("compactdefaultargs") NbRootsForTransfer;
		%feature("autodoc", "	* Returns number of roots recognized for transfer Shortcut for Reader----.NbRootsForTransfer----

	:rtype: int
") NbRootsForTransfer;
		Standard_Integer NbRootsForTransfer ();
		%feature("compactdefaultargs") TransferOneRoot;
		%feature("autodoc", "	* Translates currently loaded STEP file into the document Returns True if succeeded, and False in case of fail Provided for use like single-file reader

	:param num:
	:type num: int
	:param doc:
	:type doc: Handle_TDocStd_Document &
	:rtype: bool
") TransferOneRoot;
		Standard_Boolean TransferOneRoot (const Standard_Integer num,Handle_TDocStd_Document & doc);
		%feature("compactdefaultargs") Transfer;
		%feature("autodoc", "	* Translates currently loaded STEP file into the document Returns True if succeeded, and False in case of fail Provided for use like single-file reader

	:param doc:
	:type doc: Handle_TDocStd_Document &
	:rtype: bool
") Transfer;
		Standard_Boolean Transfer (Handle_TDocStd_Document & doc);
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "	:param filename:
	:type filename: TCollection_AsciiString &
	:param doc:
	:type doc: Handle_TDocStd_Document &
	:rtype: bool
") Perform;
		Standard_Boolean Perform (const TCollection_AsciiString & filename,Handle_TDocStd_Document & doc);
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "	* Translate STEP file given by filename into the document Return True if succeeded, and False in case of fail

	:param filename:
	:type filename: char *
	:param doc:
	:type doc: Handle_TDocStd_Document &
	:rtype: bool
") Perform;
		Standard_Boolean Perform (const char * filename,Handle_TDocStd_Document & doc);
		%feature("compactdefaultargs") ExternFiles;
		%feature("autodoc", "	* Returns data on external files Returns Null handle if no external files are read

	:rtype: NCollection_DataMap<TCollection_AsciiString, Handle_STEPCAFControl_ExternFile>
") ExternFiles;
		const NCollection_DataMap<TCollection_AsciiString, Handle_STEPCAFControl_ExternFile> & ExternFiles ();
		%feature("compactdefaultargs") ExternFile;
		%feature("autodoc", "	* Returns data on external file by its name Returns False if no external file with given name is read

	:param name:
	:type name: char *
	:param ef:
	:type ef: Handle_STEPCAFControl_ExternFile &
	:rtype: bool
") ExternFile;
		Standard_Boolean ExternFile (const char * name,Handle_STEPCAFControl_ExternFile & ef);
		%feature("compactdefaultargs") ChangeReader;
		%feature("autodoc", "	* Returns basic reader

	:rtype: STEPControl_Reader
") ChangeReader;
		STEPControl_Reader & ChangeReader ();
		%feature("compactdefaultargs") Reader;
		%feature("autodoc", "	* Returns basic reader as const

	:rtype: STEPControl_Reader
") Reader;
		const STEPControl_Reader & Reader ();
		%feature("compactdefaultargs") FindInstance;
		%feature("autodoc", "	* Returns label of instance of an assembly component corresponding to a given NAUO

	:param NAUO:
	:type NAUO: Handle_StepRepr_NextAssemblyUsageOccurrence &
	:param STool:
	:type STool: Handle_XCAFDoc_ShapeTool &
	:param Tool:
	:type Tool: STEPConstruct_Tool &
	:param PDRFileMap:
	:type PDRFileMap: STEPCAFControl_DataMapOfPDExternFile &
	:param ShapeLabelMap:
	:type ShapeLabelMap: XCAFDoc_DataMapOfShapeLabel &
	:rtype: TDF_Label
") FindInstance;
		static TDF_Label FindInstance (const Handle_StepRepr_NextAssemblyUsageOccurrence & NAUO,const Handle_XCAFDoc_ShapeTool & STool,const STEPConstruct_Tool & Tool,const STEPCAFControl_DataMapOfPDExternFile & PDRFileMap,const XCAFDoc_DataMapOfShapeLabel & ShapeLabelMap);
		%feature("compactdefaultargs") SetColorMode;
		%feature("autodoc", "	* Set ColorMode for indicate read Colors or not.

	:param colormode:
	:type colormode: bool
	:rtype: None
") SetColorMode;
		void SetColorMode (const Standard_Boolean colormode);
		%feature("compactdefaultargs") GetColorMode;
		%feature("autodoc", "	:rtype: bool
") GetColorMode;
		Standard_Boolean GetColorMode ();
		%feature("compactdefaultargs") SetNameMode;
		%feature("autodoc", "	* Set NameMode for indicate read Name or not.

	:param namemode:
	:type namemode: bool
	:rtype: None
") SetNameMode;
		void SetNameMode (const Standard_Boolean namemode);
		%feature("compactdefaultargs") GetNameMode;
		%feature("autodoc", "	:rtype: bool
") GetNameMode;
		Standard_Boolean GetNameMode ();
		%feature("compactdefaultargs") SetLayerMode;
		%feature("autodoc", "	* Set LayerMode for indicate read Layers or not.

	:param layermode:
	:type layermode: bool
	:rtype: None
") SetLayerMode;
		void SetLayerMode (const Standard_Boolean layermode);
		%feature("compactdefaultargs") GetLayerMode;
		%feature("autodoc", "	:rtype: bool
") GetLayerMode;
		Standard_Boolean GetLayerMode ();
		%feature("compactdefaultargs") SetPropsMode;
		%feature("autodoc", "	* PropsMode for indicate read Validation properties or not.

	:param propsmode:
	:type propsmode: bool
	:rtype: None
") SetPropsMode;
		void SetPropsMode (const Standard_Boolean propsmode);
		%feature("compactdefaultargs") GetPropsMode;
		%feature("autodoc", "	:rtype: bool
") GetPropsMode;
		Standard_Boolean GetPropsMode ();
		%feature("compactdefaultargs") SetSHUOMode;
		%feature("autodoc", "	* Set SHUO mode for indicate write SHUO or not.

	:param shuomode:
	:type shuomode: bool
	:rtype: None
") SetSHUOMode;
		void SetSHUOMode (const Standard_Boolean shuomode);
		%feature("compactdefaultargs") GetSHUOMode;
		%feature("autodoc", "	:rtype: bool
") GetSHUOMode;
		Standard_Boolean GetSHUOMode ();
		%feature("compactdefaultargs") SetGDTMode;
		%feature("autodoc", "	* Set GDT mode for indicate write GDT or not.

	:param gdtmode:
	:type gdtmode: bool
	:rtype: None
") SetGDTMode;
		void SetGDTMode (const Standard_Boolean gdtmode);
		%feature("compactdefaultargs") GetGDTMode;
		%feature("autodoc", "	:rtype: bool
") GetGDTMode;
		Standard_Boolean GetGDTMode ();
		%feature("compactdefaultargs") SetMatMode;
		%feature("autodoc", "	* Set Material mode

	:param matmode:
	:type matmode: bool
	:rtype: None
") SetMatMode;
		void SetMatMode (const Standard_Boolean matmode);
		%feature("compactdefaultargs") GetMatMode;
		%feature("autodoc", "	:rtype: bool
") GetMatMode;
		Standard_Boolean GetMatMode ();
		%feature("compactdefaultargs") SetViewMode;
		%feature("autodoc", "	* Set View mode

	:param viewmode:
	:type viewmode: bool
	:rtype: None
") SetViewMode;
		void SetViewMode (const Standard_Boolean viewmode);
		%feature("compactdefaultargs") GetViewMode;
		%feature("autodoc", "	* Get View mode

	:rtype: bool
") GetViewMode;
		Standard_Boolean GetViewMode ();
};


%extend STEPCAFControl_Reader {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPCAFControl_Writer;
class STEPCAFControl_Writer {
	public:
		%feature("compactdefaultargs") STEPCAFControl_Writer;
		%feature("autodoc", "	* Creates a writer with an empty STEP model and sets ColorMode, LayerMode, NameMode and PropsMode to Standard_True.

	:rtype: None
") STEPCAFControl_Writer;
		 STEPCAFControl_Writer ();
		%feature("compactdefaultargs") STEPCAFControl_Writer;
		%feature("autodoc", "	* Creates a reader tool and attaches it to an already existing Session Clears the session if it was not yet set for STEP Clears the internal data structures

	:param WS:
	:type WS: Handle_XSControl_WorkSession &
	:param scratch: default value is Standard_True
	:type scratch: bool
	:rtype: None
") STEPCAFControl_Writer;
		 STEPCAFControl_Writer (const Handle_XSControl_WorkSession & WS,const Standard_Boolean scratch = Standard_True);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Clears the internal data structures and attaches to a new session Clears the session if it was not yet set for STEP

	:param WS:
	:type WS: Handle_XSControl_WorkSession &
	:param scratch: default value is Standard_True
	:type scratch: bool
	:rtype: None
") Init;
		void Init (const Handle_XSControl_WorkSession & WS,const Standard_Boolean scratch = Standard_True);
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "	* Writes all the produced models into file In case of multimodel with extern references, filename will be a name of root file, all other files have names of corresponding parts Provided for use like single-file writer

	:param filename:
	:type filename: char *
	:rtype: IFSelect_ReturnStatus
") Write;
		IFSelect_ReturnStatus Write (const char * filename);
		%feature("compactdefaultargs") Transfer;
		%feature("autodoc", "	* Transfers a document --or single label-- to a STEP model The mode of translation of shape is AsIs If multi is not null pointer, it switches to multifile mode --with external refs--, and string pointed by <multi> gives prefix for names of extern files --can be empty string-- Returns True if translation is OK

	:param doc:
	:type doc: Handle_TDocStd_Document &
	:param mode: default value is STEPControl_AsIs
	:type mode: STEPControl_StepModelType
	:param multi: default value is 0
	:type multi: char *
	:rtype: bool
") Transfer;
		Standard_Boolean Transfer (const Handle_TDocStd_Document & doc,const STEPControl_StepModelType mode = STEPControl_AsIs,const char * multi = 0);
		%feature("compactdefaultargs") Transfer;
		%feature("autodoc", "	* Method to transfer part of the document specified by label

	:param L:
	:type L: TDF_Label &
	:param mode: default value is STEPControl_AsIs
	:type mode: STEPControl_StepModelType
	:param multi: default value is 0
	:type multi: char *
	:rtype: bool
") Transfer;
		Standard_Boolean Transfer (const TDF_Label & L,const STEPControl_StepModelType mode = STEPControl_AsIs,const char * multi = 0);
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "	:param doc:
	:type doc: Handle_TDocStd_Document &
	:param filename:
	:type filename: TCollection_AsciiString &
	:rtype: bool
") Perform;
		Standard_Boolean Perform (const Handle_TDocStd_Document & doc,const TCollection_AsciiString & filename);
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "	* Transfers a document and writes it to a STEP file Returns True if translation is OK

	:param doc:
	:type doc: Handle_TDocStd_Document &
	:param filename:
	:type filename: char *
	:rtype: bool
") Perform;
		Standard_Boolean Perform (const Handle_TDocStd_Document & doc,const char * filename);
		%feature("compactdefaultargs") ExternFiles;
		%feature("autodoc", "	* Returns data on external files Returns Null handle if no external files are read

	:rtype: NCollection_DataMap<TCollection_AsciiString, Handle_STEPCAFControl_ExternFile>
") ExternFiles;
		const NCollection_DataMap<TCollection_AsciiString, Handle_STEPCAFControl_ExternFile> & ExternFiles ();
		%feature("compactdefaultargs") ExternFile;
		%feature("autodoc", "	* Returns data on external file by its original label Returns False if no external file with given name is read

	:param L:
	:type L: TDF_Label &
	:param ef:
	:type ef: Handle_STEPCAFControl_ExternFile &
	:rtype: bool
") ExternFile;
		Standard_Boolean ExternFile (const TDF_Label & L,Handle_STEPCAFControl_ExternFile & ef);
		%feature("compactdefaultargs") ExternFile;
		%feature("autodoc", "	* Returns data on external file by its name Returns False if no external file with given name is read

	:param name:
	:type name: char *
	:param ef:
	:type ef: Handle_STEPCAFControl_ExternFile &
	:rtype: bool
") ExternFile;
		Standard_Boolean ExternFile (const char * name,Handle_STEPCAFControl_ExternFile & ef);
		%feature("compactdefaultargs") ChangeWriter;
		%feature("autodoc", "	* Returns basic reader for root file

	:rtype: STEPControl_Writer
") ChangeWriter;
		STEPControl_Writer & ChangeWriter ();
		%feature("compactdefaultargs") Writer;
		%feature("autodoc", "	* Returns basic reader as const

	:rtype: STEPControl_Writer
") Writer;
		const STEPControl_Writer & Writer ();
		%feature("compactdefaultargs") SetColorMode;
		%feature("autodoc", "	* Set ColorMode for indicate write Colors or not.

	:param colormode:
	:type colormode: bool
	:rtype: None
") SetColorMode;
		void SetColorMode (const Standard_Boolean colormode);
		%feature("compactdefaultargs") GetColorMode;
		%feature("autodoc", "	:rtype: bool
") GetColorMode;
		Standard_Boolean GetColorMode ();
		%feature("compactdefaultargs") SetNameMode;
		%feature("autodoc", "	* Set NameMode for indicate write Name or not.

	:param namemode:
	:type namemode: bool
	:rtype: None
") SetNameMode;
		void SetNameMode (const Standard_Boolean namemode);
		%feature("compactdefaultargs") GetNameMode;
		%feature("autodoc", "	:rtype: bool
") GetNameMode;
		Standard_Boolean GetNameMode ();
		%feature("compactdefaultargs") SetLayerMode;
		%feature("autodoc", "	* Set LayerMode for indicate write Layers or not.

	:param layermode:
	:type layermode: bool
	:rtype: None
") SetLayerMode;
		void SetLayerMode (const Standard_Boolean layermode);
		%feature("compactdefaultargs") GetLayerMode;
		%feature("autodoc", "	:rtype: bool
") GetLayerMode;
		Standard_Boolean GetLayerMode ();
		%feature("compactdefaultargs") SetPropsMode;
		%feature("autodoc", "	* PropsMode for indicate write Validation properties or not.

	:param propsmode:
	:type propsmode: bool
	:rtype: None
") SetPropsMode;
		void SetPropsMode (const Standard_Boolean propsmode);
		%feature("compactdefaultargs") GetPropsMode;
		%feature("autodoc", "	:rtype: bool
") GetPropsMode;
		Standard_Boolean GetPropsMode ();
		%feature("compactdefaultargs") SetSHUOMode;
		%feature("autodoc", "	* Set SHUO mode for indicate write SHUO or not.

	:param shuomode:
	:type shuomode: bool
	:rtype: None
") SetSHUOMode;
		void SetSHUOMode (const Standard_Boolean shuomode);
		%feature("compactdefaultargs") GetSHUOMode;
		%feature("autodoc", "	:rtype: bool
") GetSHUOMode;
		Standard_Boolean GetSHUOMode ();
		%feature("compactdefaultargs") SetDimTolMode;
		%feature("autodoc", "	* Set dimtolmode for indicate write D&GTs or not.

	:param dimtolmode:
	:type dimtolmode: bool
	:rtype: None
") SetDimTolMode;
		void SetDimTolMode (const Standard_Boolean dimtolmode);
		%feature("compactdefaultargs") GetDimTolMode;
		%feature("autodoc", "	:rtype: bool
") GetDimTolMode;
		Standard_Boolean GetDimTolMode ();
		%feature("compactdefaultargs") SetMaterialMode;
		%feature("autodoc", "	* Set dimtolmode for indicate write D&GTs or not.

	:param matmode:
	:type matmode: bool
	:rtype: None
") SetMaterialMode;
		void SetMaterialMode (const Standard_Boolean matmode);
		%feature("compactdefaultargs") GetMaterialMode;
		%feature("autodoc", "	:rtype: bool
") GetMaterialMode;
		Standard_Boolean GetMaterialMode ();
};


%extend STEPCAFControl_Writer {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
