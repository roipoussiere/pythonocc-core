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
%define NCOLLECTIONDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=NCOLLECTIONDOCSTRING) NCollection

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


%include NCollection_headers.i


%define Handle(Class) opencascade::handle<Class>
%enddef

%include "NCollection_TypeDef.hxx";
%include "NCollection_Array1.hxx";
%include "NCollection_Array2.hxx";
%include "NCollection_Map.hxx";
%include "NCollection_DefaultHasher.hxx";
%include "NCollection_List.hxx";
%include "NCollection_Sequence.hxx";
%include "NCollection_DataMap.hxx";
%include "NCollection_IndexedMap.hxx";
%include "NCollection_IndexedDataMap.hxx";
%include "NCollection_DoubleMap.hxx";
%include "NCollection_DefineAlloc.hxx";
%include "Standard_Macro.hxx";
%include "Standard_DefineAlloc.hxx";
%include "NCollection_UBTree.hxx";
%include "NCollection_UBTreeFiller.hxx";
%include "NCollection_UtfString.hxx";
%include "NCollection_Lerp.hxx";
%include "NCollection_UtfIterator.hxx";
%include "NCollection_Handle.hxx";
%include "NCollection_CellFilter.hxx";
%include "NCollection_Vector.hxx";

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
typedef void ( * NCollection_DelMapNode ) ( NCollection_ListNode * , Handle_NCollection_BaseAllocator & theAl );
typedef size_t Standard_Size;
typedef NCollection_Utf8String NCollection_String;
/* end typedefs declaration */

/* templates */
%template(NCollection_Utf16String) NCollection_UtfString <Standard_Utf16Char>;
%template(NCollection_Utf8String) NCollection_UtfString <Standard_Utf8Char>;
%template(NCollection_Utf16Iter) NCollection_UtfIterator <Standard_Utf16Char>;
%template(NCollection_Utf32Iter) NCollection_UtfIterator <Standard_Utf32Char>;
%template(NCollection_Utf8Iter) NCollection_UtfIterator <Standard_Utf8Char>;
%template(NCollection_UtfWideIter) NCollection_UtfIterator <Standard_WideChar>;
%template(NCollection_Utf32String) NCollection_UtfString <Standard_Utf32Char>;
%template(NCollection_UtfWideString) NCollection_UtfString <Standard_WideChar>;
/* end templates declaration */

/* public enums */
enum NCollection_CellFilter_Action {
	CellFilter_Keep = 0,
	CellFilter_Purge = 1,
};

/* end public enums declaration */

