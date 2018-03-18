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
%define TCOLGEOM2DDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=TCOLGEOM2DDOCSTRING) TColGeom2d

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


%include TColGeom2d_headers.i


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
%template(TColGeom2d_SequenceOfCurve) NCollection_Sequence <Handle_Geom2d_Curve>;
%template(TColGeom2d_Array1OfBezierCurve) NCollection_Array1 <Handle_Geom2d_BezierCurve>;
%template(TColGeom2d_Array1OfCurve) NCollection_Array1 <Handle_Geom2d_Curve>;
%template(TColGeom2d_SequenceOfBoundedCurve) NCollection_Sequence <Handle_Geom2d_BoundedCurve>;
%template(TColGeom2d_Array1OfBSplineCurve) NCollection_Array1 <Handle_Geom2d_BSplineCurve>;
%template(TColGeom2d_SequenceOfGeometry) NCollection_Sequence <Handle_Geom2d_Geometry>;
/* end templates declaration */

/* end templates declaration */

/* typedefs */
typedef NCollection_Sequence <Handle_Geom2d_Curve> TColGeom2d_SequenceOfCurve;
typedef NCollection_Array1 <Handle_Geom2d_BezierCurve> TColGeom2d_Array1OfBezierCurve;
typedef NCollection_Array1 <Handle_Geom2d_Curve> TColGeom2d_Array1OfCurve;
typedef NCollection_Sequence <Handle_Geom2d_BoundedCurve> TColGeom2d_SequenceOfBoundedCurve;
typedef NCollection_Array1 <Handle_Geom2d_BSplineCurve> TColGeom2d_Array1OfBSplineCurve;
typedef NCollection_Sequence <Handle_Geom2d_Geometry> TColGeom2d_SequenceOfGeometry;
/* end typedefs declaration */

/* public enums */
/* end public enums declaration */

