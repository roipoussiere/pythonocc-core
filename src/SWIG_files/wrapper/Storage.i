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
%define STORAGEDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=STORAGEDOCSTRING) Storage

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


%include Storage_headers.i


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
%template(Storage_ArrayOfSchema) NCollection_Array1 <Handle(Storage_Schema)>;
%template(Storage_MapOfCallBack) NCollection_DataMap <TCollection_AsciiString , Handle(Storage_TypedCallBack) , TCollection_AsciiString>;
%template(Storage_PType) NCollection_IndexedDataMap <TCollection_AsciiString , Standard_Integer , TCollection_AsciiString>;
%template(Storage_MapOfPers) NCollection_DataMap <TCollection_AsciiString , Handle(Storage_Root) , TCollection_AsciiString>;
%template(Storage_ArrayOfCallBack) NCollection_Array1 <Handle(Storage_CallBack)>;
%template(Storage_SeqOfRoot) NCollection_Sequence <Handle(Storage_Root)>;
/* end templates declaration */

/* end templates declaration */

/* typedefs */
typedef NCollection_Array1 <Handle_Storage_Schema> Storage_ArrayOfSchema;
typedef NCollection_DataMap <TCollection_AsciiString , Handle_Storage_TypedCallBack , TCollection_AsciiString> Storage_MapOfCallBack;
typedef NCollection_IndexedDataMap <TCollection_AsciiString , Standard_Integer , TCollection_AsciiString> Storage_PType;
typedef NCollection_DataMap <TCollection_AsciiString , Handle_Storage_Root , TCollection_AsciiString>::Iterator Storage_DataMapIteratorOfMapOfPers;
typedef NCollection_DataMap <TCollection_AsciiString , Handle_Storage_TypedCallBack , TCollection_AsciiString>::Iterator Storage_DataMapIteratorOfMapOfCallBack;
typedef NCollection_DataMap <TCollection_AsciiString , Handle_Storage_Root , TCollection_AsciiString> Storage_MapOfPers;
typedef long Storage_Position;
typedef NCollection_Array1 <Handle_Storage_CallBack> Storage_ArrayOfCallBack;
typedef NCollection_Sequence <Handle_Storage_Root> Storage_SeqOfRoot;
/* end typedefs declaration */

/* public enums */
enum Storage_SolveMode {
	Storage_AddSolve = 0,
	Storage_WriteSolve = 1,
	Storage_ReadSolve = 2,
};

enum Storage_Error {
	Storage_VSOk = 0,
	Storage_VSOpenError = 1,
	Storage_VSModeError = 2,
	Storage_VSCloseError = 3,
	Storage_VSAlreadyOpen = 4,
	Storage_VSNotOpen = 5,
	Storage_VSSectionNotFound = 6,
	Storage_VSWriteError = 7,
	Storage_VSFormatError = 8,
	Storage_VSUnknownType = 9,
	Storage_VSTypeMismatch = 10,
	Storage_VSInternalError = 11,
	Storage_VSExtCharParityError = 12,
	Storage_VSWrongFileDriver = 13,
};

enum Storage_OpenMode {
	Storage_VSNone = 0,
	Storage_VSRead = 1,
	Storage_VSWrite = 2,
	Storage_VSReadWrite = 3,
};

/* end public enums declaration */

