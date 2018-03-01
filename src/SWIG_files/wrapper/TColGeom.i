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
%define TCOLGEOMDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=TCOLGEOMDOCSTRING) TColGeom

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


%include TColGeom_headers.i


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
%template(TColGeom_Array1OfBezierCurve) NCollection_Array1 <Handle_Geom_BezierCurve>;
%template(TColGeom_Array1OfCurve) NCollection_Array1 <Handle_Geom_Curve>;
%template(TColGeom_SequenceOfSurface) NCollection_Sequence <Handle_Geom_Surface>;
%template(TColGeom_Array1OfSurface) NCollection_Array1 <Handle_Geom_Surface>;
%template(TColGeom_Array1OfBSplineCurve) NCollection_Array1 <Handle_Geom_BSplineCurve>;
%template(TColGeom_SequenceOfBoundedCurve) NCollection_Sequence <Handle_Geom_BoundedCurve>;
%template(TColGeom_SequenceOfCurve) NCollection_Sequence <Handle_Geom_Curve>;
%template(TColGeom_Array2OfBezierSurface) NCollection_Array2 <Handle_Geom_BezierSurface>;
%template(TColGeom_Array2OfSurface) NCollection_Array2 <Handle_Geom_Surface>;
/* end templates declaration */

/* public enums */
/* end public enums declaration */

