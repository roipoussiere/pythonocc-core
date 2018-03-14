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
%define RWSTLDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=RWSTLDOCSTRING) RWStl

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


%include RWStl_headers.i


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
/* end templates declaration */

/* public enums */
/* end public enums declaration */

%rename(rwstl) RWStl;
%nodefaultctor RWStl;
class RWStl {
	public:
		%feature("compactdefaultargs") WriteBinary;
		%feature("autodoc", "	* Write triangulation to binary STL file. binary format of an STL file. Returns false if the cannot be opened;

	:param theMesh:
	:type theMesh: Handle_Poly_Triangulation &
	:param thePath:
	:type thePath: OSD_Path &
	:param theProgInd: default value is Handle_Message_ProgressIndicator()
	:type theProgInd: Handle_Message_ProgressIndicator &
	:rtype: bool
") WriteBinary;
		static Standard_Boolean WriteBinary (const Handle_Poly_Triangulation & theMesh,const OSD_Path & thePath,const Handle_Message_ProgressIndicator & theProgInd = Handle_Message_ProgressIndicator());
		%feature("compactdefaultargs") WriteAscii;
		%feature("autodoc", "	* write the meshing in a file following the Ascii format of an STL file. Returns false if the cannot be opened;

	:param theMesh:
	:type theMesh: Handle_Poly_Triangulation &
	:param thePath:
	:type thePath: OSD_Path &
	:param theProgInd: default value is Handle_Message_ProgressIndicator()
	:type theProgInd: Handle_Message_ProgressIndicator &
	:rtype: bool
") WriteAscii;
		static Standard_Boolean WriteAscii (const Handle_Poly_Triangulation & theMesh,const OSD_Path & thePath,const Handle_Message_ProgressIndicator & theProgInd = Handle_Message_ProgressIndicator());
		%feature("compactdefaultargs") ReadFile;
		%feature("autodoc", "	* Read specified STL file and returns its content as triangulation. In case of error, returns Null handle.

	:param theFile:
	:type theFile: OSD_Path &
	:param aProgInd: default value is Handle_Message_ProgressIndicator()
	:type aProgInd: Handle_Message_ProgressIndicator &
	:rtype: Handle_Poly_Triangulation
") ReadFile;
		static Handle_Poly_Triangulation ReadFile (const OSD_Path & theFile,const Handle_Message_ProgressIndicator & aProgInd = Handle_Message_ProgressIndicator());
		%feature("compactdefaultargs") ReadFile;
		%feature("autodoc", "	* Read specified STL file and returns its content as triangulation. In case of error, returns Null handle.

	:param theFile:
	:type theFile: char *
	:param aProgInd: default value is Handle_Message_ProgressIndicator()
	:type aProgInd: Handle_Message_ProgressIndicator &
	:rtype: Handle_Poly_Triangulation
") ReadFile;
		static Handle_Poly_Triangulation ReadFile (const char * theFile,const Handle_Message_ProgressIndicator & aProgInd = Handle_Message_ProgressIndicator());
		%feature("compactdefaultargs") ReadBinary;
		%feature("autodoc", "	* Read triangulation from a binary STL file In case of error, returns Null handle.

	:param thePath:
	:type thePath: OSD_Path &
	:param theProgInd: default value is Handle_Message_ProgressIndicator()
	:type theProgInd: Handle_Message_ProgressIndicator &
	:rtype: Handle_Poly_Triangulation
") ReadBinary;
		static Handle_Poly_Triangulation ReadBinary (const OSD_Path & thePath,const Handle_Message_ProgressIndicator & theProgInd = Handle_Message_ProgressIndicator());
		%feature("compactdefaultargs") ReadAscii;
		%feature("autodoc", "	* Read triangulation from an Ascii STL file In case of error, returns Null handle.

	:param thePath:
	:type thePath: OSD_Path &
	:param theProgInd: default value is Handle_Message_ProgressIndicator()
	:type theProgInd: Handle_Message_ProgressIndicator &
	:rtype: Handle_Poly_Triangulation
") ReadAscii;
		static Handle_Poly_Triangulation ReadAscii (const OSD_Path & thePath,const Handle_Message_ProgressIndicator & theProgInd = Handle_Message_ProgressIndicator());
};


%extend RWStl {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor RWStl_Reader;
class RWStl_Reader : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "	* Reads data from STL file --either binary or Ascii--. This function supports reading multi-domain STL files formed by concatenation of several 'plain' files. The mesh nodes are not merged between domains. Unicode paths can be given in UTF-8 encoding. Format is recognized automatically by analysis of the file header. Returns true if success, false on error or user break.

	:param theFile:
	:type theFile: char *
	:param theProgress:
	:type theProgress: Handle_Message_ProgressIndicator &
	:rtype: bool
") Read;
		Standard_Boolean Read (const char * theFile,const Handle_Message_ProgressIndicator & theProgress);

        %feature("autodoc", "1");
        %extend{
            void IsAsciiFromString(std::string src) {
            std::stringstream s(src);
            self->IsAscii(s);}
        };
        		%feature("compactdefaultargs") ReadBinary;
		%feature("autodoc", "	* Reads STL data from binary stream. The stream must be opened in binary mode. Stops after reading the number of triangles recorded in the file header. Returns true if success, false on error or user break.

	:param theStream:
	:type theStream: Standard_IStream &
	:param theProgress:
	:type theProgress: Handle_Message_ProgressIndicator &
	:rtype: bool
") ReadBinary;
		Standard_Boolean ReadBinary (Standard_IStream & theStream,const Handle_Message_ProgressIndicator & theProgress);
		%feature("compactdefaultargs") ReadAscii;
		%feature("autodoc", "	* Reads data from the stream assumed to contain Ascii STL data. The stream can be opened either in binary or in Ascii mode. Reading stops at the position specified by theUntilPos, or end of file is reached, or when keyword 'endsolid' is found. Empty lines are not supported and will read to reading failure. If theUntilPos is non-zero, reads not more than until that position. Returns true if success, false on error or user break.

	:param theStream:
	:type theStream: Standard_IStream &
	:param theUntilPos:
	:type theUntilPos: std::streampos
	:param theProgress:
	:type theProgress: Handle_Message_ProgressIndicator &
	:rtype: bool
") ReadAscii;
		Standard_Boolean ReadAscii (Standard_IStream & theStream,const std::streampos theUntilPos,const Handle_Message_ProgressIndicator & theProgress);
		%feature("compactdefaultargs") AddNode;
		%feature("autodoc", "	* Callback function to be implemented in descendant. Should create new node with specified coordinates in the target model, and return its ID as integer.

	:param thePnt:
	:type thePnt: gp_XYZ
	:rtype: int
") AddNode;
		Standard_Integer AddNode (const gp_XYZ & thePnt);
		%feature("compactdefaultargs") AddTriangle;
		%feature("autodoc", "	* Callback function to be implemented in descendant. Should create new triangle built on specified nodes in the target model.

	:param theN1:
	:type theN1: int
	:param theN2:
	:type theN2: int
	:param theN3:
	:type theN3: int
	:rtype: None
") AddTriangle;
		void AddTriangle (Standard_Integer theN1,Standard_Integer theN2,Standard_Integer theN3);
};


%extend RWStl_Reader {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
