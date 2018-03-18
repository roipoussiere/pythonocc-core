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
%define TCOLGPDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=TCOLGPDOCSTRING) TColgp

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


%include TColgp_headers.i


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
%template(TColgp_SequenceOfAx1) NCollection_Sequence <gp_Ax1>;
%template(TColgp_SequenceOfPnt) NCollection_Sequence <gp_Pnt>;
%template(TColgp_Array2OfVec2d) NCollection_Array2 <gp_Vec2d>;
%template(TColgp_Array1OfVec) NCollection_Array1 <gp_Vec>;
%template(TColgp_Array2OfPnt2d) NCollection_Array2 <gp_Pnt2d>;
%template(TColgp_Array1OfCirc2d) NCollection_Array1 <gp_Circ2d>;
%template(TColgp_Array1OfLin2d) NCollection_Array1 <gp_Lin2d>;
%template(TColgp_Array2OfPnt) NCollection_Array2 <gp_Pnt>;
%template(TColgp_Array1OfVec2d) NCollection_Array1 <gp_Vec2d>;
%template(TColgp_SequenceOfVec2d) NCollection_Sequence <gp_Vec2d>;
%template(TColgp_SequenceOfArray1OfPnt2d) NCollection_Sequence <Handle(TColgp_HArray1OfPnt2d)>;
%template(TColgp_SequenceOfXYZ) NCollection_Sequence <gp_XYZ>;
%template(TColgp_Array1OfXYZ) NCollection_Array1 <gp_XYZ>;
%template(TColgp_Array2OfCirc2d) NCollection_Array2 <gp_Circ2d>;
%template(TColgp_Array1OfPnt2d) NCollection_Array1 <gp_Pnt2d>;
%template(TColgp_Array2OfLin2d) NCollection_Array2 <gp_Lin2d>;
%template(TColgp_SequenceOfDir) NCollection_Sequence <gp_Dir>;
%template(TColgp_Array1OfDir2d) NCollection_Array1 <gp_Dir2d>;
%template(TColgp_Array1OfDir) NCollection_Array1 <gp_Dir>;
%template(TColgp_Array2OfVec) NCollection_Array2 <gp_Vec>;
%template(TColgp_Array1OfXY) NCollection_Array1 <gp_XY>;
%template(TColgp_Array2OfDir) NCollection_Array2 <gp_Dir>;
%template(TColgp_SequenceOfVec) NCollection_Sequence <gp_Vec>;
%template(TColgp_Array2OfXY) NCollection_Array2 <gp_XY>;
%template(TColgp_Array1OfPnt) NCollection_Array1 <gp_Pnt>;
%template(TColgp_SequenceOfXY) NCollection_Sequence <gp_XY>;
%template(TColgp_SequenceOfPnt2d) NCollection_Sequence <gp_Pnt2d>;
%template(TColgp_Array2OfDir2d) NCollection_Array2 <gp_Dir2d>;
%template(TColgp_Array2OfXYZ) NCollection_Array2 <gp_XYZ>;
%template(TColgp_SequenceOfDir2d) NCollection_Sequence <gp_Dir2d>;
/* end templates declaration */

/* end templates declaration */

/* typedefs */
typedef NCollection_Sequence <gp_Ax1> TColgp_SequenceOfAx1;
typedef NCollection_Sequence <gp_Pnt> TColgp_SequenceOfPnt;
typedef NCollection_Array2 <gp_Vec2d> TColgp_Array2OfVec2d;
typedef NCollection_Array1 <gp_Vec> TColgp_Array1OfVec;
typedef NCollection_Array2 <gp_Pnt2d> TColgp_Array2OfPnt2d;
typedef NCollection_Array1 <gp_Circ2d> TColgp_Array1OfCirc2d;
typedef NCollection_Array1 <gp_Lin2d> TColgp_Array1OfLin2d;
typedef NCollection_Array2 <gp_Pnt> TColgp_Array2OfPnt;
typedef NCollection_Array1 <gp_Vec2d> TColgp_Array1OfVec2d;
typedef NCollection_Sequence <gp_Vec2d> TColgp_SequenceOfVec2d;
typedef NCollection_Sequence <Handle_TColgp_HArray1OfPnt2d> TColgp_SequenceOfArray1OfPnt2d;
typedef NCollection_Sequence <gp_XYZ> TColgp_SequenceOfXYZ;
typedef NCollection_Array1 <gp_XYZ> TColgp_Array1OfXYZ;
typedef NCollection_Array2 <gp_Circ2d> TColgp_Array2OfCirc2d;
typedef NCollection_Array1 <gp_Pnt2d> TColgp_Array1OfPnt2d;
typedef NCollection_Array2 <gp_Lin2d> TColgp_Array2OfLin2d;
typedef NCollection_Sequence <gp_Dir> TColgp_SequenceOfDir;
typedef NCollection_Array1 <gp_Dir2d> TColgp_Array1OfDir2d;
typedef NCollection_Array1 <gp_Dir> TColgp_Array1OfDir;
typedef NCollection_Array2 <gp_Vec> TColgp_Array2OfVec;
typedef NCollection_Array1 <gp_XY> TColgp_Array1OfXY;
typedef NCollection_Array2 <gp_Dir> TColgp_Array2OfDir;
typedef NCollection_Sequence <gp_Vec> TColgp_SequenceOfVec;
typedef NCollection_Array2 <gp_XY> TColgp_Array2OfXY;
typedef NCollection_Array1 <gp_Pnt> TColgp_Array1OfPnt;
typedef NCollection_Sequence <gp_XY> TColgp_SequenceOfXY;
typedef NCollection_Sequence <gp_Pnt2d> TColgp_SequenceOfPnt2d;
typedef NCollection_Array2 <gp_Dir2d> TColgp_Array2OfDir2d;
typedef NCollection_Array2 <gp_XYZ> TColgp_Array2OfXYZ;
typedef NCollection_Sequence <gp_Dir2d> TColgp_SequenceOfDir2d;
/* end typedefs declaration */

/* public enums */
/* end public enums declaration */

