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
%define TOPTOOLSDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=TOPTOOLSDOCSTRING) TopTools

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


%include TopTools_headers.i


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
typedef TopTools_LocationSet * TopTools_LocationSetPtr;
/* end typedefs declaration */


/* templates */
%define Handle(Class) opencascade::handle<Class>
%enddef
%template(TopTools_DataMapIteratorOfDataMapOfIntegerListOfShape) NCollection_TListIterator<TopTools_DataMapOfIntegerListOfShape>;
%template(TopTools_DataMapIteratorOfDataMapOfOrientedShapeShape) NCollection_TListIterator<TopTools_DataMapOfOrientedShapeShape>;
%template(TopTools_DataMapOfOrientedShapeShape) NCollection_DataMap <TopoDS_Shape , TopoDS_Shape , TopTools_OrientedShapeMapHasher>;
%template(TopTools_IndexedMapOfOrientedShape) NCollection_IndexedMap <TopoDS_Shape , TopTools_OrientedShapeMapHasher>;
%template(TopTools_MapOfShape) NCollection_Map <TopoDS_Shape , TopTools_ShapeMapHasher>;
%template(TopTools_DataMapOfShapeReal) NCollection_DataMap <TopoDS_Shape , Standard_Real , TopTools_ShapeMapHasher>;
%template(TopTools_MapIteratorOfMapOfOrientedShape) NCollection_TListIterator<TopTools_MapOfOrientedShape>;
%template(TopTools_ListOfShape) NCollection_List <TopoDS_Shape>;
%template(TopTools_DataMapOfShapeListOfInteger) NCollection_DataMap <TopoDS_Shape , TColStd_ListOfInteger , TopTools_ShapeMapHasher>;
%template(TopTools_DataMapIteratorOfDataMapOfOrientedShapeInteger) NCollection_TListIterator<TopTools_DataMapOfOrientedShapeInteger>;
%template(TopTools_MapIteratorOfMapOfShape) NCollection_TListIterator<TopTools_MapOfShape>;
%template(TopTools_Array1OfShape) NCollection_Array1 <TopoDS_Shape>;
%template(TopTools_IndexedDataMapOfShapeShape) NCollection_IndexedDataMap <TopoDS_Shape , TopoDS_Shape , TopTools_ShapeMapHasher>;
%template(TopTools_IndexedDataMapOfShapeListOfShape) NCollection_IndexedDataMap <TopoDS_Shape , TopTools_ListOfShape , TopTools_ShapeMapHasher>;
%template(TopTools_MapOfOrientedShape) NCollection_Map <TopoDS_Shape , TopTools_OrientedShapeMapHasher>;
%template(TopTools_DataMapOfOrientedShapeInteger) NCollection_DataMap <TopoDS_Shape , Standard_Integer , TopTools_OrientedShapeMapHasher>;
%template(TopTools_SequenceOfShape) NCollection_Sequence <TopoDS_Shape>;
%template(TopTools_DataMapOfIntegerListOfShape) NCollection_DataMap <Standard_Integer , TopTools_ListOfShape , TColStd_MapIntegerHasher>;
%template(TopTools_DataMapIteratorOfDataMapOfShapeInteger) NCollection_TListIterator<TopTools_DataMapOfShapeInteger>;
%template(TopTools_DataMapOfShapeListOfShape) NCollection_DataMap <TopoDS_Shape , TopTools_ListOfShape , TopTools_ShapeMapHasher>;
%template(TopTools_DataMapOfShapeShape) NCollection_DataMap <TopoDS_Shape , TopoDS_Shape , TopTools_ShapeMapHasher>;
%template(TopTools_DataMapIteratorOfDataMapOfShapeReal) NCollection_TListIterator<TopTools_DataMapOfShapeReal>;
%template(TopTools_DataMapOfShapeInteger) NCollection_DataMap <TopoDS_Shape , Standard_Integer , TopTools_ShapeMapHasher>;
%template(TopTools_DataMapIteratorOfDataMapOfShapeListOfShape) NCollection_TListIterator<TopTools_DataMapOfShapeListOfShape>;
%template(TopTools_IndexedDataMapOfShapeAddress) NCollection_IndexedDataMap <TopoDS_Shape , Standard_Address , TopTools_ShapeMapHasher>;
%template(TopTools_IndexedMapOfShape) NCollection_IndexedMap <TopoDS_Shape , TopTools_ShapeMapHasher>;
%template(TopTools_DataMapOfShapeSequenceOfShape) NCollection_DataMap <TopoDS_Shape , TopTools_SequenceOfShape , TopTools_ShapeMapHasher>;
%template(TopTools_ListIteratorOfListOfShape) NCollection_TListIterator<TopoDS_Shape>;
%template(TopTools_DataMapIteratorOfDataMapOfShapeShape) NCollection_TListIterator<TopTools_DataMapOfShapeShape>;
%template(TopTools_Array2OfShape) NCollection_Array2 <TopoDS_Shape>;
%template(TopTools_DataMapIteratorOfDataMapOfIntegerShape) NCollection_TListIterator<TopTools_DataMapOfIntegerShape>;
%template(TopTools_DataMapIteratorOfDataMapOfShapeSequenceOfShape) NCollection_TListIterator<TopTools_DataMapOfShapeSequenceOfShape>;
%template(TopTools_DataMapOfIntegerShape) NCollection_DataMap <Standard_Integer , TopoDS_Shape , TColStd_MapIntegerHasher>;
%template(TopTools_DataMapIteratorOfDataMapOfShapeListOfInteger) NCollection_TListIterator<TopTools_DataMapOfShapeListOfInteger>;
%template(TopTools_Array1OfListOfShape) NCollection_Array1 <TopTools_ListOfShape>;
/* end templates declaration */

typedef NCollection_IndexedDataMap<TopoDS_Shape,TopTools_ListOfShape,TopTools_ShapeMapHasher> TopTools_IndexedDataMapOfShapeListOfShape;
typedef NCollection_List<TopoDS_Shape> TopTools_ListOfShape;
typedef NCollection_List<TopoDS_Shape>::Iterator TopTools_ListIteratorOfListOfShape;
/* public enums */
/* end public enums declaration */

%rename(toptools) TopTools;
class TopTools {
	public:
		%feature("compactdefaultargs") Dump;
		%feature("autodoc", "	* A set of Shapes. Can be dump, wrote or read. Dumps the topological structure of <Sh> on the stream <S>.

	:param Sh:
	:type Sh: TopoDS_Shape &
	:param S:
	:type S: Standard_OStream &
	:rtype: void
") Dump;
		static void Dump (const TopoDS_Shape & Sh,Standard_OStream & S);
		%feature("compactdefaultargs") Dummy;
		%feature("autodoc", "	* This is to bypass an extraction bug. It will force the inclusion of Standard_Integer.hxx itself including Standard_OStream.hxx at the correct position.

	:param I:
	:type I: int
	:rtype: void
") Dummy;
		static void Dummy (const Standard_Integer I);
};


%extend TopTools {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor TopTools_LocationSet;
class TopTools_LocationSet {
	public:
		%feature("compactdefaultargs") TopTools_LocationSet;
		%feature("autodoc", "	* Returns an empty set of locations.

	:rtype: None
") TopTools_LocationSet;
		 TopTools_LocationSet ();
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "	* Clears the content of the set.

	:rtype: None
") Clear;
		void Clear ();
		%feature("compactdefaultargs") Add;
		%feature("autodoc", "	* Incorporate a new Location in the set and returns its index.

	:param L:
	:type L: TopLoc_Location &
	:rtype: int
") Add;
		Standard_Integer Add (const TopLoc_Location & L);
		%feature("compactdefaultargs") Location;
		%feature("autodoc", "	* Returns the location of index <I>.

	:param I:
	:type I: int
	:rtype: TopLoc_Location
") Location;
		const TopLoc_Location & Location (const Standard_Integer I);
		%feature("compactdefaultargs") Index;
		%feature("autodoc", "	* Returns the index of <L>.

	:param L:
	:type L: TopLoc_Location &
	:rtype: int
") Index;
		Standard_Integer Index (const TopLoc_Location & L);

        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };
        
        %feature("autodoc", "1");
        %extend{
            std::string WriteToString() {
            std::stringstream s;
            self->Write(s);
            return s.str();}
        };
        
        %feature("autodoc", "1");
        %extend{
            void ReadFromString(std::string src) {
            std::stringstream s(src);
            self->Read(s);}
        };
        		%feature("compactdefaultargs") SetProgress;
		%feature("autodoc", "	:param PR:
	:type PR: Handle_Message_ProgressIndicator &
	:rtype: None
") SetProgress;
		void SetProgress (const Handle_Message_ProgressIndicator & PR);
		%feature("compactdefaultargs") GetProgress;
		%feature("autodoc", "	:rtype: Handle_Message_ProgressIndicator
") GetProgress;
		Handle_Message_ProgressIndicator GetProgress ();
};


%extend TopTools_LocationSet {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor TopTools_MutexForShapeProvider;
class TopTools_MutexForShapeProvider {
	public:
		%feature("compactdefaultargs") TopTools_MutexForShapeProvider;
		%feature("autodoc", "	* Constructor

	:rtype: None
") TopTools_MutexForShapeProvider;
		 TopTools_MutexForShapeProvider ();
		%feature("compactdefaultargs") CreateMutexesForSubShapes;
		%feature("autodoc", "	* Creates and associates mutexes with each sub-shape of type theType in theShape.

	:param theShape:
	:type theShape: TopoDS_Shape &
	:param theType:
	:type theType: TopAbs_ShapeEnum
	:rtype: None
") CreateMutexesForSubShapes;
		void CreateMutexesForSubShapes (const TopoDS_Shape & theShape,const TopAbs_ShapeEnum theType);
		%feature("compactdefaultargs") CreateMutexForShape;
		%feature("autodoc", "	* Creates and associates mutex with theShape

	:param theShape:
	:type theShape: TopoDS_Shape &
	:rtype: None
") CreateMutexForShape;
		void CreateMutexForShape (const TopoDS_Shape & theShape);
		%feature("compactdefaultargs") GetMutex;
		%feature("autodoc", "	* Returns pointer to mutex associated with theShape. In case when mutex not found returns NULL.

	:param theShape:
	:type theShape: TopoDS_Shape &
	:rtype: Standard_Mutex *
") GetMutex;
		Standard_Mutex * GetMutex (const TopoDS_Shape & theShape);
		%feature("compactdefaultargs") RemoveAllMutexes;
		%feature("autodoc", "	* Removes all mutexes

	:rtype: None
") RemoveAllMutexes;
		void RemoveAllMutexes ();
};


%extend TopTools_MutexForShapeProvider {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
class TopTools_OrientedShapeMapHasher {
	public:
		%feature("compactdefaultargs") HashCode;
		%feature("autodoc", "	* Returns a HasCode value for the Key <K> in the range 0..Upper.

	:param S:
	:type S: TopoDS_Shape &
	:param Upper:
	:type Upper: int
	:rtype: int
") HashCode;
		static Standard_Integer HashCode (const TopoDS_Shape & S,const Standard_Integer Upper);
		%feature("compactdefaultargs") IsEqual;
		%feature("autodoc", "	* Returns True when the two keys are equal. Two same keys must have the same hashcode, the contrary is not necessary.

	:param S1:
	:type S1: TopoDS_Shape &
	:param S2:
	:type S2: TopoDS_Shape &
	:rtype: bool
") IsEqual;
		static Standard_Boolean IsEqual (const TopoDS_Shape & S1,const TopoDS_Shape & S2);
};


%extend TopTools_OrientedShapeMapHasher {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
class TopTools_ShapeMapHasher {
	public:
		%feature("compactdefaultargs") HashCode;
		%feature("autodoc", "	* Returns a HasCode value for the Key <K> in the range 0..Upper.

	:param S:
	:type S: TopoDS_Shape &
	:param Upper:
	:type Upper: int
	:rtype: int
") HashCode;
		static Standard_Integer HashCode (const TopoDS_Shape & S,const Standard_Integer Upper);
		%feature("compactdefaultargs") IsEqual;
		%feature("autodoc", "	* Returns True when the two keys are the same. Two same keys must have the same hashcode, the contrary is not necessary.

	:param S1:
	:type S1: TopoDS_Shape &
	:param S2:
	:type S2: TopoDS_Shape &
	:rtype: bool
") IsEqual;
		static Standard_Boolean IsEqual (const TopoDS_Shape & S1,const TopoDS_Shape & S2);
};


%extend TopTools_ShapeMapHasher {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor TopTools_ShapeSet;
class TopTools_ShapeSet {
	public:
		%feature("compactdefaultargs") TopTools_ShapeSet;
		%feature("autodoc", "	* Builds an empty ShapeSet.

	:rtype: None
") TopTools_ShapeSet;
		 TopTools_ShapeSet ();
		%feature("compactdefaultargs") SetFormatNb;
		%feature("autodoc", "	:param theFormatNb:
	:type theFormatNb: int
	:rtype: None
") SetFormatNb;
		void SetFormatNb (const Standard_Integer theFormatNb);
		%feature("compactdefaultargs") FormatNb;
		%feature("autodoc", "	* two formats available for the moment: First: does not write CurveOnSurface UV Points into the file on reading calls Check---- method. Second: stores CurveOnSurface UV Points. On reading format is recognized from Version string.

	:rtype: int
") FormatNb;
		Standard_Integer FormatNb ();
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "	* Clears the content of the set. This method can be redefined.

	:rtype: void
") Clear;
		virtual void Clear ();
		%feature("compactdefaultargs") Add;
		%feature("autodoc", "	* Stores <S> and its sub-shape. Returns the index of <S>. The method AddGeometry is called on each sub-shape.

	:param S:
	:type S: TopoDS_Shape &
	:rtype: int
") Add;
		Standard_Integer Add (const TopoDS_Shape & S);
		%feature("compactdefaultargs") Shape;
		%feature("autodoc", "	* Returns the sub-shape of index <I>.

	:param I:
	:type I: int
	:rtype: TopoDS_Shape
") Shape;
		const TopoDS_Shape  Shape (const Standard_Integer I);
		%feature("compactdefaultargs") Index;
		%feature("autodoc", "	* Returns the index of <S>.

	:param S:
	:type S: TopoDS_Shape &
	:rtype: int
") Index;
		Standard_Integer Index (const TopoDS_Shape & S);
		%feature("compactdefaultargs") Locations;
		%feature("autodoc", "	:rtype: TopTools_LocationSet
") Locations;
		const TopTools_LocationSet & Locations ();
		%feature("compactdefaultargs") ChangeLocations;
		%feature("autodoc", "	:rtype: TopTools_LocationSet
") ChangeLocations;
		TopTools_LocationSet & ChangeLocations ();

        %feature("autodoc", "1");
        %extend{
            std::string DumpExtentToString() {
            std::stringstream s;
            self->DumpExtent(s);
            return s.str();}
        };
        		%feature("compactdefaultargs") DumpExtent;
		%feature("autodoc", "	* Dumps the number of objects in me in the string S --Number of shapes of each type--

	:param S:
	:type S: TCollection_AsciiString &
	:rtype: None
") DumpExtent;
		void DumpExtent (TCollection_AsciiString & S);

        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };
        
        %feature("autodoc", "1");
        %extend{
            std::string WriteToString() {
            std::stringstream s;
            self->Write(s);
            return s.str();}
        };
        
        %feature("autodoc", "1");
        %extend{
            void ReadFromString(std::string src) {
            std::stringstream s(src);
            self->Read(s);}
        };
        		%feature("compactdefaultargs") Dump;
		%feature("autodoc", "	* Dumps on <OS> the shape <S>. Dumps the orientation, the index of the TShape and the index of the Location.

	:param S:
	:type S: TopoDS_Shape &
	:param OS:
	:type OS: Standard_OStream &
	:rtype: None
") Dump;
		void Dump (const TopoDS_Shape & S,Standard_OStream & OS);
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "	* Writes on <OS> the shape <S>. Writes the orientation, the index of the TShape and the index of the Location.

	:param S:
	:type S: TopoDS_Shape &
	:param OS:
	:type OS: Standard_OStream &
	:rtype: None
") Write;
		void Write (const TopoDS_Shape & S,Standard_OStream & OS);
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "	* Reads from <IS> a shape and returns it in S.

	:param S:
	:type S: TopoDS_Shape &
	:param IS:
	:type IS: Standard_IStream &
	:rtype: None
") Read;
		void Read (TopoDS_Shape & S,Standard_IStream & IS);
		%feature("compactdefaultargs") AddGeometry;
		%feature("autodoc", "	* Stores the geometry of <S>.

	:param S:
	:type S: TopoDS_Shape &
	:rtype: void
") AddGeometry;
		virtual void AddGeometry (const TopoDS_Shape & S);

        %feature("autodoc", "1");
        %extend{
            std::string DumpGeometryToString() {
            std::stringstream s;
            self->DumpGeometry(s);
            return s.str();}
        };
        
        %feature("autodoc", "1");
        %extend{
            std::string WriteGeometryToString() {
            std::stringstream s;
            self->WriteGeometry(s);
            return s.str();}
        };
        
        %feature("autodoc", "1");
        %extend{
            void ReadGeometryFromString(std::string src) {
            std::stringstream s(src);
            self->ReadGeometry(s);}
        };
        		%feature("compactdefaultargs") DumpGeometry;
		%feature("autodoc", "	* Dumps the geometry of <S> on the stream <OS>.

	:param S:
	:type S: TopoDS_Shape &
	:param OS:
	:type OS: Standard_OStream &
	:rtype: void
") DumpGeometry;
		virtual void DumpGeometry (const TopoDS_Shape & S,Standard_OStream & OS);
		%feature("compactdefaultargs") WriteGeometry;
		%feature("autodoc", "	* Writes the geometry of <S> on the stream <OS> in a format that can be read back by Read.

	:param S:
	:type S: TopoDS_Shape &
	:param OS:
	:type OS: Standard_OStream &
	:rtype: void
") WriteGeometry;
		virtual void WriteGeometry (const TopoDS_Shape & S,Standard_OStream & OS);
		%feature("compactdefaultargs") ReadGeometry;
		%feature("autodoc", "	* Reads the geometry of a shape of type <T> from the stream <IS> and returns it in <S>.

	:param T:
	:type T: TopAbs_ShapeEnum
	:param IS:
	:type IS: Standard_IStream &
	:param S:
	:type S: TopoDS_Shape &
	:rtype: void
") ReadGeometry;
		virtual void ReadGeometry (const TopAbs_ShapeEnum T,Standard_IStream & IS,TopoDS_Shape & S);
		%feature("compactdefaultargs") AddShapes;
		%feature("autodoc", "	* Inserts the shape <S2> in the shape <S1>. This method must be redefined to use the correct builder.

	:param S1:
	:type S1: TopoDS_Shape &
	:param S2:
	:type S2: TopoDS_Shape &
	:rtype: void
") AddShapes;
		virtual void AddShapes (TopoDS_Shape & S1,const TopoDS_Shape & S2);
		%feature("compactdefaultargs") Check;
		%feature("autodoc", "	* This method is called after each new completed shape. <T> is the type. <S> is the shape. In this class it does nothing, but it gives the opportunity in derived classes to perform extra treatment on shapes.

	:param T:
	:type T: TopAbs_ShapeEnum
	:param S:
	:type S: TopoDS_Shape &
	:rtype: void
") Check;
		virtual void Check (const TopAbs_ShapeEnum T,TopoDS_Shape & S);
		%feature("compactdefaultargs") NbShapes;
		%feature("autodoc", "	* Returns number of shapes read from file.

	:rtype: int
") NbShapes;
		Standard_Integer NbShapes ();
		%feature("compactdefaultargs") SetProgress;
		%feature("autodoc", "	:param PR:
	:type PR: Handle_Message_ProgressIndicator &
	:rtype: None
") SetProgress;
		void SetProgress (const Handle_Message_ProgressIndicator & PR);
		%feature("compactdefaultargs") GetProgress;
		%feature("autodoc", "	:rtype: Handle_Message_ProgressIndicator
") GetProgress;
		Handle_Message_ProgressIndicator GetProgress ();
};


%extend TopTools_ShapeSet {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
