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
%define TCOLSTDDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=TCOLSTDDOCSTRING) TColStd

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


%include TColStd_headers.i


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
%template(TColStd_DataMapIteratorOfDataMapOfIntegerInteger) NCollection_TListIterator<TColStd_DataMapOfIntegerInteger>;
%template(TColStd_SequenceOfAddress) NCollection_Sequence <Standard_Address>;
%template(TColStd_DataMapOfTransientTransient) NCollection_DataMap <Handle(Standard_Transient) , Handle(Standard_Transient) , TColStd_MapTransientHasher>;
%template(TColStd_Array1OfCharacter) NCollection_Array1 <Standard_Character>;
%template(TColStd_DataMapIteratorOfDataMapOfTransientTransient) NCollection_TListIterator<TColStd_DataMapOfTransientTransient>;
%template(TColStd_Array1OfBoolean) NCollection_Array1 <Standard_Boolean>;
%template(TColStd_DataMapOfIntegerReal) NCollection_DataMap <Standard_Integer , Standard_Real , TColStd_MapIntegerHasher>;
%template(TColStd_MapOfTransient) NCollection_Map <Handle(Standard_Transient) , TColStd_MapTransientHasher>;
%template(TColStd_Array2OfInteger) NCollection_Array2 <Standard_Integer>;
%template(TColStd_DataMapOfIntegerInteger) NCollection_DataMap <Standard_Integer , Standard_Integer , TColStd_MapIntegerHasher>;
%template(TColStd_Array1OfAsciiString) NCollection_Array1 <TCollection_AsciiString>;
%template(TColStd_IndexedMapOfReal) NCollection_IndexedMap <Standard_Real , TColStd_MapRealHasher>;
%template(TColStd_Array1OfByte) NCollection_Array1 <Standard_Byte>;
%template(TColStd_IndexedMapOfTransient) NCollection_IndexedMap <Handle(Standard_Transient) , TColStd_MapTransientHasher>;
%template(TColStd_IndexedDataMapOfStringString) NCollection_IndexedDataMap <TCollection_AsciiString , TCollection_AsciiString , TCollection_AsciiString>;
%template(TColStd_ListOfAsciiString) NCollection_List <TCollection_AsciiString>;
%template(TColStd_MapTransientHasher) NCollection_DefaultHasher <Handle(Standard_Transient)>;
%template(TColStd_DataMapIteratorOfDataMapOfStringInteger) NCollection_TListIterator<TColStd_DataMapOfStringInteger>;
%template(TColStd_DataMapOfIntegerListOfInteger) NCollection_DataMap <Standard_Integer , TColStd_ListOfInteger , TColStd_MapIntegerHasher>;
%template(TColStd_ListIteratorOfListOfInteger) NCollection_TListIterator<TColStd_ListOfInteger>;
%template(TColStd_Array2OfCharacter) NCollection_Array2 <Standard_Character>;
%template(TColStd_SequenceOfBoolean) NCollection_Sequence <Standard_Boolean>;
%template(TColStd_MapOfInteger) NCollection_Map <Standard_Integer , TColStd_MapIntegerHasher>;
%template(TColStd_Array2OfBoolean) NCollection_Array2 <Standard_Boolean>;
%template(TColStd_SequenceOfExtendedString) NCollection_Sequence <TCollection_ExtendedString>;
%template(TColStd_ListIteratorOfListOfAsciiString) NCollection_TListIterator<TColStd_ListOfAsciiString>;
%template(TColStd_DataMapIteratorOfDataMapOfAsciiStringInteger) NCollection_TListIterator<TColStd_DataMapOfAsciiStringInteger>;
%template(TColStd_MapRealHasher) NCollection_DefaultHasher <Standard_Real>;
%template(TColStd_SequenceOfHExtendedString) NCollection_Sequence <Handle(TCollection_HExtendedString)>;
%template(TColStd_Array2OfReal) NCollection_Array2 <Standard_Real>;
%template(TColStd_SequenceOfReal) NCollection_Sequence <Standard_Real>;
%template(TColStd_SequenceOfAsciiString) NCollection_Sequence <TCollection_AsciiString>;
%template(TColStd_ListOfInteger) NCollection_List <Standard_Integer>;
%template(TColStd_ListOfReal) NCollection_List <Standard_Real>;
%template(TColStd_ListIteratorOfListOfReal) NCollection_TListIterator<TColStd_ListOfReal>;
%template(TColStd_MapIteratorOfMapOfAsciiString) NCollection_TListIterator<TColStd_MapOfAsciiString>;
%template(TColStd_ListIteratorOfListOfTransient) NCollection_TListIterator<TColStd_ListOfTransient>;
%template(TColStd_MapIntegerHasher) NCollection_DefaultHasher <Standard_Integer>;
%template(TColStd_MapIteratorOfMapOfReal) NCollection_TListIterator<TColStd_MapOfReal>;
%template(TColStd_Array1OfListOfInteger) NCollection_Array1 <TColStd_ListOfInteger>;
%template(TColStd_ListOfTransient) NCollection_List <Handle(Standard_Transient)>;
%template(TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger) NCollection_TListIterator<TColStd_DataMapOfIntegerListOfInteger>;
%template(TColStd_MapOfAsciiString) NCollection_Map <TCollection_AsciiString , TCollection_AsciiString>;
%template(TColStd_DataMapOfAsciiStringInteger) NCollection_DataMap <TCollection_AsciiString , Standard_Integer , TCollection_AsciiString>;
%template(TColStd_DataMapOfStringInteger) NCollection_DataMap <TCollection_ExtendedString , Standard_Integer , TCollection_ExtendedString>;
%template(TColStd_IndexedDataMapOfTransientTransient) NCollection_IndexedDataMap <Handle(Standard_Transient) , Handle(Standard_Transient) , TColStd_MapTransientHasher>;
%template(TColStd_Array1OfExtendedString) NCollection_Array1 <TCollection_ExtendedString>;
%template(TColStd_Array1OfTransient) NCollection_Array1 <Handle(Standard_Transient)>;
%template(TColStd_DataMapIteratorOfDataMapOfIntegerTransient) NCollection_TListIterator<TColStd_DataMapOfIntegerTransient>;
%template(TColStd_SequenceOfHAsciiString) NCollection_Sequence <Handle(TCollection_HAsciiString)>;
%template(TColStd_IndexedMapOfInteger) NCollection_IndexedMap <Standard_Integer , TColStd_MapIntegerHasher>;
%template(TColStd_Array1OfInteger) NCollection_Array1 <Standard_Integer>;
%template(TColStd_SequenceOfTransient) NCollection_Sequence <Handle(Standard_Transient)>;
%template(TColStd_Array2OfTransient) NCollection_Array2 <Handle(Standard_Transient)>;
%template(TColStd_DataMapOfIntegerTransient) NCollection_DataMap <Standard_Integer , Handle(Standard_Transient) , TColStd_MapIntegerHasher>;
%template(TColStd_Array1OfReal) NCollection_Array1 <Standard_Real>;
%template(TColStd_MapIteratorOfMapOfTransient) NCollection_TListIterator<TColStd_MapOfTransient>;
%template(TColStd_MapOfReal) NCollection_Map <Standard_Real , TColStd_MapRealHasher>;
%template(TColStd_SequenceOfInteger) NCollection_Sequence <Standard_Integer>;
%template(TColStd_MapIteratorOfMapOfInteger) NCollection_TListIterator<TColStd_MapOfInteger>;
%template(TColStd_DataMapIteratorOfDataMapOfIntegerReal) NCollection_TListIterator<TColStd_DataMapOfIntegerReal>;
/* end templates declaration */

/* public enums */
/* end public enums declaration */

%nodefaultctor TColStd_HPackedMapOfInteger;
class TColStd_HPackedMapOfInteger : public Standard_Transient {
	public:
		%feature("compactdefaultargs") TColStd_HPackedMapOfInteger;
		%feature("autodoc", "	:param NbBuckets: default value is 1
	:type NbBuckets: int
	:rtype: None
") TColStd_HPackedMapOfInteger;
		 TColStd_HPackedMapOfInteger (const Standard_Integer NbBuckets = 1);
		%feature("compactdefaultargs") TColStd_HPackedMapOfInteger;
		%feature("autodoc", "	:param theOther:
	:type theOther: TColStd_PackedMapOfInteger &
	:rtype: None
") TColStd_HPackedMapOfInteger;
		 TColStd_HPackedMapOfInteger (const TColStd_PackedMapOfInteger & theOther);
		%feature("compactdefaultargs") Map;
		%feature("autodoc", "	:rtype: TColStd_PackedMapOfInteger
") Map;
		const TColStd_PackedMapOfInteger & Map ();
		%feature("compactdefaultargs") ChangeMap;
		%feature("autodoc", "	:rtype: TColStd_PackedMapOfInteger
") ChangeMap;
		TColStd_PackedMapOfInteger & ChangeMap ();
};


%extend TColStd_HPackedMapOfInteger {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_TColStd_HPackedMapOfInteger(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_TColStd_HPackedMapOfInteger::Handle_TColStd_HPackedMapOfInteger %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_TColStd_HPackedMapOfInteger;
class Handle_TColStd_HPackedMapOfInteger : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_TColStd_HPackedMapOfInteger();
        Handle_TColStd_HPackedMapOfInteger(const Handle_TColStd_HPackedMapOfInteger &aHandle);
        Handle_TColStd_HPackedMapOfInteger(const TColStd_HPackedMapOfInteger *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_TColStd_HPackedMapOfInteger DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_TColStd_HPackedMapOfInteger {
    TColStd_HPackedMapOfInteger* _get_reference() {
    return (TColStd_HPackedMapOfInteger*)$self->get();
    }
};

%extend Handle_TColStd_HPackedMapOfInteger {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend TColStd_HPackedMapOfInteger {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor TColStd_MapIteratorOfPackedMapOfInteger;
class TColStd_MapIteratorOfPackedMapOfInteger : public TCollection_BasicMapIterator {
	public:
		%feature("compactdefaultargs") TColStd_MapIteratorOfPackedMapOfInteger;
		%feature("autodoc", "	* /// Empty Constructor.

	:rtype: None
") TColStd_MapIteratorOfPackedMapOfInteger;
		 TColStd_MapIteratorOfPackedMapOfInteger ();
		%feature("compactdefaultargs") TColStd_MapIteratorOfPackedMapOfInteger;
		%feature("autodoc", "	* /// Constructor.

	:param &:
	:type &: TColStd_PackedMapOfInteger
	:rtype: None
") TColStd_MapIteratorOfPackedMapOfInteger;
		 TColStd_MapIteratorOfPackedMapOfInteger (const TColStd_PackedMapOfInteger &);
		%feature("compactdefaultargs") Initialize;
		%feature("autodoc", "	* /// Re-initialize with the same or another Map instance.

	:param &:
	:type &: TColStd_PackedMapOfInteger
	:rtype: None
") Initialize;
		void Initialize (const TColStd_PackedMapOfInteger &);
		%feature("compactdefaultargs") Reset;
		%feature("autodoc", "	* /// Restart the iteraton

	:rtype: None
") Reset;
		void Reset ();
		%feature("compactdefaultargs") Key;
		%feature("autodoc", "	* /// Query the iterated key. Defined in TColStd_PackedMapOfInteger.cxx

	:rtype: inline int
") Key;
		inline Standard_Integer Key ();
		%feature("compactdefaultargs") Next;
		%feature("autodoc", "	* /// Increment the iterator

	:rtype: None
") Next;
		void Next ();
};


%extend TColStd_MapIteratorOfPackedMapOfInteger {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
