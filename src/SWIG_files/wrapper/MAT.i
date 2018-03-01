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
%define MATDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=MATDOCSTRING) MAT

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


%include MAT_headers.i


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
%template(MAT_DataMapOfIntegerNode) NCollection_DataMap <Standard_Integer , Handle_MAT_Node , TColStd_MapIntegerHasher>;
%template(MAT_DataMapOfIntegerArc) NCollection_DataMap <Standard_Integer , Handle_MAT_Arc , TColStd_MapIntegerHasher>;
%template(MAT_DataMapOfIntegerBisector) NCollection_DataMap <Standard_Integer , Handle_MAT_Bisector , TColStd_MapIntegerHasher>;
%template(MAT_SequenceOfBasicElt) NCollection_Sequence <Handle_MAT_BasicElt>;
%template(MAT_SequenceOfArc) NCollection_Sequence <Handle_MAT_Arc>;
%template(MAT_DataMapOfIntegerBasicElt) NCollection_DataMap <Standard_Integer , Handle_MAT_BasicElt , TColStd_MapIntegerHasher>;
/* end templates declaration */

/* public enums */
enum MAT_Side {
	MAT_Left = 0,
	MAT_Right = 1,
};

/* end public enums declaration */

%nodefaultctor MAT_Arc;
class MAT_Arc : public Standard_Transient {
	public:
		%feature("compactdefaultargs") MAT_Arc;
		%feature("autodoc", "	:param ArcIndex:
	:type ArcIndex: int
	:param GeomIndex:
	:type GeomIndex: int
	:param FirstElement:
	:type FirstElement: Handle_MAT_BasicElt &
	:param SecondElement:
	:type SecondElement: Handle_MAT_BasicElt &
	:rtype: None
") MAT_Arc;
		 MAT_Arc (const Standard_Integer ArcIndex,const Standard_Integer GeomIndex,const Handle_MAT_BasicElt & FirstElement,const Handle_MAT_BasicElt & SecondElement);
		%feature("compactdefaultargs") Index;
		%feature("autodoc", "	* Returns the index of <self> in Graph.theArcs.

	:rtype: int
") Index;
		Standard_Integer Index ();
		%feature("compactdefaultargs") GeomIndex;
		%feature("autodoc", "	* Returns the index associated of the geometric representation of <self>.

	:rtype: int
") GeomIndex;
		Standard_Integer GeomIndex ();
		%feature("compactdefaultargs") FirstElement;
		%feature("autodoc", "	* Returns one of the BasicElt equidistant from <self>.

	:rtype: Handle_MAT_BasicElt
") FirstElement;
		Handle_MAT_BasicElt FirstElement ();
		%feature("compactdefaultargs") SecondElement;
		%feature("autodoc", "	* Returns the other BasicElt equidistant from <self>.

	:rtype: Handle_MAT_BasicElt
") SecondElement;
		Handle_MAT_BasicElt SecondElement ();
		%feature("compactdefaultargs") FirstNode;
		%feature("autodoc", "	* Returns one Node extremity of <self>.

	:rtype: Handle_MAT_Node
") FirstNode;
		Handle_MAT_Node FirstNode ();
		%feature("compactdefaultargs") SecondNode;
		%feature("autodoc", "	* Returns the other Node extremity of <self>.

	:rtype: Handle_MAT_Node
") SecondNode;
		Handle_MAT_Node SecondNode ();
		%feature("compactdefaultargs") TheOtherNode;
		%feature("autodoc", "	* an Arc has two Node, if <aNode> egal one Returns the other. //! if <aNode> is not oh <self>

	:param aNode:
	:type aNode: Handle_MAT_Node &
	:rtype: Handle_MAT_Node
") TheOtherNode;
		Handle_MAT_Node TheOtherNode (const Handle_MAT_Node & aNode);
		%feature("compactdefaultargs") HasNeighbour;
		%feature("autodoc", "	* Returnst True is there is an arc linked to the Node <aNode> located on the side <aSide> of <self>; if <aNode> is not on <self>

	:param aNode:
	:type aNode: Handle_MAT_Node &
	:param aSide:
	:type aSide: MAT_Side
	:rtype: bool
") HasNeighbour;
		Standard_Boolean HasNeighbour (const Handle_MAT_Node & aNode,const MAT_Side aSide);
		%feature("compactdefaultargs") Neighbour;
		%feature("autodoc", "	* Returns the first arc linked to the Node <aNode> located on the side <aSide> of <self>; if HasNeighbour---- returns False.

	:param aNode:
	:type aNode: Handle_MAT_Node &
	:param aSide:
	:type aSide: MAT_Side
	:rtype: Handle_MAT_Arc
") Neighbour;
		Handle_MAT_Arc Neighbour (const Handle_MAT_Node & aNode,const MAT_Side aSide);
		%feature("compactdefaultargs") SetIndex;
		%feature("autodoc", "	:param anInteger:
	:type anInteger: int
	:rtype: None
") SetIndex;
		void SetIndex (const Standard_Integer anInteger);
		%feature("compactdefaultargs") SetGeomIndex;
		%feature("autodoc", "	:param anInteger:
	:type anInteger: int
	:rtype: None
") SetGeomIndex;
		void SetGeomIndex (const Standard_Integer anInteger);
		%feature("compactdefaultargs") SetFirstElement;
		%feature("autodoc", "	:param aBasicElt:
	:type aBasicElt: Handle_MAT_BasicElt &
	:rtype: None
") SetFirstElement;
		void SetFirstElement (const Handle_MAT_BasicElt & aBasicElt);
		%feature("compactdefaultargs") SetSecondElement;
		%feature("autodoc", "	:param aBasicElt:
	:type aBasicElt: Handle_MAT_BasicElt &
	:rtype: None
") SetSecondElement;
		void SetSecondElement (const Handle_MAT_BasicElt & aBasicElt);
		%feature("compactdefaultargs") SetFirstNode;
		%feature("autodoc", "	:param aNode:
	:type aNode: Handle_MAT_Node &
	:rtype: None
") SetFirstNode;
		void SetFirstNode (const Handle_MAT_Node & aNode);
		%feature("compactdefaultargs") SetSecondNode;
		%feature("autodoc", "	:param aNode:
	:type aNode: Handle_MAT_Node &
	:rtype: None
") SetSecondNode;
		void SetSecondNode (const Handle_MAT_Node & aNode);
		%feature("compactdefaultargs") SetFirstArc;
		%feature("autodoc", "	:param aSide:
	:type aSide: MAT_Side
	:param anArc:
	:type anArc: Handle_MAT_Arc &
	:rtype: None
") SetFirstArc;
		void SetFirstArc (const MAT_Side aSide,const Handle_MAT_Arc & anArc);
		%feature("compactdefaultargs") SetSecondArc;
		%feature("autodoc", "	:param aSide:
	:type aSide: MAT_Side
	:param anArc:
	:type anArc: Handle_MAT_Arc &
	:rtype: None
") SetSecondArc;
		void SetSecondArc (const MAT_Side aSide,const Handle_MAT_Arc & anArc);
		%feature("compactdefaultargs") SetNeighbour;
		%feature("autodoc", "	:param aSide:
	:type aSide: MAT_Side
	:param aNode:
	:type aNode: Handle_MAT_Node &
	:param anArc:
	:type anArc: Handle_MAT_Arc &
	:rtype: None
") SetNeighbour;
		void SetNeighbour (const MAT_Side aSide,const Handle_MAT_Node & aNode,const Handle_MAT_Arc & anArc);
};


%extend MAT_Arc {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_MAT_Arc(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_MAT_Arc::Handle_MAT_Arc %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_MAT_Arc;
class Handle_MAT_Arc : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_MAT_Arc();
        Handle_MAT_Arc(const Handle_MAT_Arc &aHandle);
        Handle_MAT_Arc(const MAT_Arc *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_MAT_Arc DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_MAT_Arc {
    MAT_Arc* _get_reference() {
    return (MAT_Arc*)$self->get();
    }
};

%extend Handle_MAT_Arc {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend MAT_Arc {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor MAT_BasicElt;
class MAT_BasicElt : public Standard_Transient {
	public:
		%feature("compactdefaultargs") MAT_BasicElt;
		%feature("autodoc", "	* Constructor, <anInteger> is the <index> of <self>.

	:param anInteger:
	:type anInteger: int
	:rtype: None
") MAT_BasicElt;
		 MAT_BasicElt (const Standard_Integer anInteger);
		%feature("compactdefaultargs") StartArc;
		%feature("autodoc", "	* Return <startArcLeft> or <startArcRight> corresponding to <aSide>.

	:rtype: Handle_MAT_Arc
") StartArc;
		Handle_MAT_Arc StartArc ();
		%feature("compactdefaultargs") EndArc;
		%feature("autodoc", "	* Return <endArcLeft> or <endArcRight> corresponding to <aSide>.

	:rtype: Handle_MAT_Arc
") EndArc;
		Handle_MAT_Arc EndArc ();
		%feature("compactdefaultargs") Index;
		%feature("autodoc", "	* Return the <index> of <self> in Graph.TheBasicElts.

	:rtype: int
") Index;
		Standard_Integer Index ();
		%feature("compactdefaultargs") GeomIndex;
		%feature("autodoc", "	* Return the <GeomIndex> of <self>.

	:rtype: int
") GeomIndex;
		Standard_Integer GeomIndex ();
		%feature("compactdefaultargs") SetStartArc;
		%feature("autodoc", "	:param anArc:
	:type anArc: Handle_MAT_Arc &
	:rtype: None
") SetStartArc;
		void SetStartArc (const Handle_MAT_Arc & anArc);
		%feature("compactdefaultargs") SetEndArc;
		%feature("autodoc", "	:param anArc:
	:type anArc: Handle_MAT_Arc &
	:rtype: None
") SetEndArc;
		void SetEndArc (const Handle_MAT_Arc & anArc);
		%feature("compactdefaultargs") SetIndex;
		%feature("autodoc", "	:param anInteger:
	:type anInteger: int
	:rtype: None
") SetIndex;
		void SetIndex (const Standard_Integer anInteger);
		%feature("compactdefaultargs") SetGeomIndex;
		%feature("autodoc", "	:param anInteger:
	:type anInteger: int
	:rtype: None
") SetGeomIndex;
		void SetGeomIndex (const Standard_Integer anInteger);
};


%extend MAT_BasicElt {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_MAT_BasicElt(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_MAT_BasicElt::Handle_MAT_BasicElt %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_MAT_BasicElt;
class Handle_MAT_BasicElt : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_MAT_BasicElt();
        Handle_MAT_BasicElt(const Handle_MAT_BasicElt &aHandle);
        Handle_MAT_BasicElt(const MAT_BasicElt *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_MAT_BasicElt DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_MAT_BasicElt {
    MAT_BasicElt* _get_reference() {
    return (MAT_BasicElt*)$self->get();
    }
};

%extend Handle_MAT_BasicElt {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend MAT_BasicElt {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor MAT_Bisector;
class MAT_Bisector : public Standard_Transient {
	public:
		%feature("compactdefaultargs") MAT_Bisector;
		%feature("autodoc", "	:rtype: None
") MAT_Bisector;
		 MAT_Bisector ();
		%feature("compactdefaultargs") AddBisector;
		%feature("autodoc", "	:param abisector:
	:type abisector: Handle_MAT_Bisector &
	:rtype: None
") AddBisector;
		void AddBisector (const Handle_MAT_Bisector & abisector);
		%feature("compactdefaultargs") List;
		%feature("autodoc", "	:rtype: Handle_MAT_ListOfBisector
") List;
		Handle_MAT_ListOfBisector List ();
		%feature("compactdefaultargs") FirstBisector;
		%feature("autodoc", "	:rtype: Handle_MAT_Bisector
") FirstBisector;
		Handle_MAT_Bisector FirstBisector ();
		%feature("compactdefaultargs") LastBisector;
		%feature("autodoc", "	:rtype: Handle_MAT_Bisector
") LastBisector;
		Handle_MAT_Bisector LastBisector ();
		%feature("compactdefaultargs") BisectorNumber;
		%feature("autodoc", "	:param anumber:
	:type anumber: int
	:rtype: None
") BisectorNumber;
		void BisectorNumber (const Standard_Integer anumber);
		%feature("compactdefaultargs") IndexNumber;
		%feature("autodoc", "	:param anumber:
	:type anumber: int
	:rtype: None
") IndexNumber;
		void IndexNumber (const Standard_Integer anumber);
		%feature("compactdefaultargs") FirstEdge;
		%feature("autodoc", "	:param anedge:
	:type anedge: Handle_MAT_Edge &
	:rtype: None
") FirstEdge;
		void FirstEdge (const Handle_MAT_Edge & anedge);
		%feature("compactdefaultargs") SecondEdge;
		%feature("autodoc", "	:param anedge:
	:type anedge: Handle_MAT_Edge &
	:rtype: None
") SecondEdge;
		void SecondEdge (const Handle_MAT_Edge & anedge);
		%feature("compactdefaultargs") IssuePoint;
		%feature("autodoc", "	:param apoint:
	:type apoint: int
	:rtype: None
") IssuePoint;
		void IssuePoint (const Standard_Integer apoint);
		%feature("compactdefaultargs") EndPoint;
		%feature("autodoc", "	:param apoint:
	:type apoint: int
	:rtype: None
") EndPoint;
		void EndPoint (const Standard_Integer apoint);
		%feature("compactdefaultargs") DistIssuePoint;
		%feature("autodoc", "	:param areal:
	:type areal: float
	:rtype: None
") DistIssuePoint;
		void DistIssuePoint (const Standard_Real areal);
		%feature("compactdefaultargs") FirstVector;
		%feature("autodoc", "	:param avector:
	:type avector: int
	:rtype: None
") FirstVector;
		void FirstVector (const Standard_Integer avector);
		%feature("compactdefaultargs") SecondVector;
		%feature("autodoc", "	:param avector:
	:type avector: int
	:rtype: None
") SecondVector;
		void SecondVector (const Standard_Integer avector);
		%feature("compactdefaultargs") Sense;
		%feature("autodoc", "	:param asense:
	:type asense: float
	:rtype: None
") Sense;
		void Sense (const Standard_Real asense);
		%feature("compactdefaultargs") FirstParameter;
		%feature("autodoc", "	:param aparameter:
	:type aparameter: float
	:rtype: None
") FirstParameter;
		void FirstParameter (const Standard_Real aparameter);
		%feature("compactdefaultargs") SecondParameter;
		%feature("autodoc", "	:param aparameter:
	:type aparameter: float
	:rtype: None
") SecondParameter;
		void SecondParameter (const Standard_Real aparameter);
		%feature("compactdefaultargs") BisectorNumber;
		%feature("autodoc", "	:rtype: int
") BisectorNumber;
		Standard_Integer BisectorNumber ();
		%feature("compactdefaultargs") IndexNumber;
		%feature("autodoc", "	:rtype: int
") IndexNumber;
		Standard_Integer IndexNumber ();
		%feature("compactdefaultargs") FirstEdge;
		%feature("autodoc", "	:rtype: Handle_MAT_Edge
") FirstEdge;
		Handle_MAT_Edge FirstEdge ();
		%feature("compactdefaultargs") SecondEdge;
		%feature("autodoc", "	:rtype: Handle_MAT_Edge
") SecondEdge;
		Handle_MAT_Edge SecondEdge ();
		%feature("compactdefaultargs") IssuePoint;
		%feature("autodoc", "	:rtype: int
") IssuePoint;
		Standard_Integer IssuePoint ();
		%feature("compactdefaultargs") EndPoint;
		%feature("autodoc", "	:rtype: int
") EndPoint;
		Standard_Integer EndPoint ();
		%feature("compactdefaultargs") DistIssuePoint;
		%feature("autodoc", "	:rtype: float
") DistIssuePoint;
		Standard_Real DistIssuePoint ();
		%feature("compactdefaultargs") FirstVector;
		%feature("autodoc", "	:rtype: int
") FirstVector;
		Standard_Integer FirstVector ();
		%feature("compactdefaultargs") SecondVector;
		%feature("autodoc", "	:rtype: int
") SecondVector;
		Standard_Integer SecondVector ();
		%feature("compactdefaultargs") Sense;
		%feature("autodoc", "	:rtype: float
") Sense;
		Standard_Real Sense ();
		%feature("compactdefaultargs") FirstParameter;
		%feature("autodoc", "	:rtype: float
") FirstParameter;
		Standard_Real FirstParameter ();
		%feature("compactdefaultargs") SecondParameter;
		%feature("autodoc", "	:rtype: float
") SecondParameter;
		Standard_Real SecondParameter ();
		%feature("compactdefaultargs") Dump;
		%feature("autodoc", "	:param ashift:
	:type ashift: int
	:param alevel:
	:type alevel: int
	:rtype: None
") Dump;
		void Dump (const Standard_Integer ashift,const Standard_Integer alevel);
};


%extend MAT_Bisector {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_MAT_Bisector(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_MAT_Bisector::Handle_MAT_Bisector %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_MAT_Bisector;
class Handle_MAT_Bisector : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_MAT_Bisector();
        Handle_MAT_Bisector(const Handle_MAT_Bisector &aHandle);
        Handle_MAT_Bisector(const MAT_Bisector *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_MAT_Bisector DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_MAT_Bisector {
    MAT_Bisector* _get_reference() {
    return (MAT_Bisector*)$self->get();
    }
};

%extend Handle_MAT_Bisector {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend MAT_Bisector {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor MAT_Edge;
class MAT_Edge : public Standard_Transient {
	public:
		%feature("compactdefaultargs") MAT_Edge;
		%feature("autodoc", "	:rtype: None
") MAT_Edge;
		 MAT_Edge ();
		%feature("compactdefaultargs") EdgeNumber;
		%feature("autodoc", "	:param anumber:
	:type anumber: int
	:rtype: None
") EdgeNumber;
		void EdgeNumber (const Standard_Integer anumber);
		%feature("compactdefaultargs") FirstBisector;
		%feature("autodoc", "	:param abisector:
	:type abisector: Handle_MAT_Bisector &
	:rtype: None
") FirstBisector;
		void FirstBisector (const Handle_MAT_Bisector & abisector);
		%feature("compactdefaultargs") SecondBisector;
		%feature("autodoc", "	:param abisector:
	:type abisector: Handle_MAT_Bisector &
	:rtype: None
") SecondBisector;
		void SecondBisector (const Handle_MAT_Bisector & abisector);
		%feature("compactdefaultargs") Distance;
		%feature("autodoc", "	:param adistance:
	:type adistance: float
	:rtype: None
") Distance;
		void Distance (const Standard_Real adistance);
		%feature("compactdefaultargs") IntersectionPoint;
		%feature("autodoc", "	:param apoint:
	:type apoint: int
	:rtype: None
") IntersectionPoint;
		void IntersectionPoint (const Standard_Integer apoint);
		%feature("compactdefaultargs") EdgeNumber;
		%feature("autodoc", "	:rtype: int
") EdgeNumber;
		Standard_Integer EdgeNumber ();
		%feature("compactdefaultargs") FirstBisector;
		%feature("autodoc", "	:rtype: Handle_MAT_Bisector
") FirstBisector;
		Handle_MAT_Bisector FirstBisector ();
		%feature("compactdefaultargs") SecondBisector;
		%feature("autodoc", "	:rtype: Handle_MAT_Bisector
") SecondBisector;
		Handle_MAT_Bisector SecondBisector ();
		%feature("compactdefaultargs") Distance;
		%feature("autodoc", "	:rtype: float
") Distance;
		Standard_Real Distance ();
		%feature("compactdefaultargs") IntersectionPoint;
		%feature("autodoc", "	:rtype: int
") IntersectionPoint;
		Standard_Integer IntersectionPoint ();
		%feature("compactdefaultargs") Dump;
		%feature("autodoc", "	:param ashift:
	:type ashift: int
	:param alevel:
	:type alevel: int
	:rtype: None
") Dump;
		void Dump (const Standard_Integer ashift,const Standard_Integer alevel);
};


%extend MAT_Edge {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_MAT_Edge(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_MAT_Edge::Handle_MAT_Edge %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_MAT_Edge;
class Handle_MAT_Edge : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_MAT_Edge();
        Handle_MAT_Edge(const Handle_MAT_Edge &aHandle);
        Handle_MAT_Edge(const MAT_Edge *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_MAT_Edge DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_MAT_Edge {
    MAT_Edge* _get_reference() {
    return (MAT_Edge*)$self->get();
    }
};

%extend Handle_MAT_Edge {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend MAT_Edge {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor MAT_Graph;
class MAT_Graph : public Standard_Transient {
	public:
		%feature("compactdefaultargs") MAT_Graph;
		%feature("autodoc", "	* Empty constructor.

	:rtype: None
") MAT_Graph;
		 MAT_Graph ();
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "	* Construct <self> from the result of the method <CreateMat> of the class <MAT> from <MAT>. //! <SemiInfinite> : if some bisector are infinites. <TheRoots> : Set of the bisectors. <NbBasicElts> : Number of Basic Elements. <NbArcs> : Number of Arcs = Number of Bisectors.

	:param SemiInfinite:
	:type SemiInfinite: bool
	:param TheRoots:
	:type TheRoots: Handle_MAT_ListOfBisector &
	:param NbBasicElts:
	:type NbBasicElts: int
	:param NbArcs:
	:type NbArcs: int
	:rtype: None
") Perform;
		void Perform (const Standard_Boolean SemiInfinite,const Handle_MAT_ListOfBisector & TheRoots,const Standard_Integer NbBasicElts,const Standard_Integer NbArcs);
		%feature("compactdefaultargs") Arc;
		%feature("autodoc", "	* Return the Arc of index <Index> in <theArcs>.

	:param Index:
	:type Index: int
	:rtype: Handle_MAT_Arc
") Arc;
		Handle_MAT_Arc Arc (const Standard_Integer Index);
		%feature("compactdefaultargs") BasicElt;
		%feature("autodoc", "	* Return the BasicElt of index <Index> in <theBasicElts>.

	:param Index:
	:type Index: int
	:rtype: Handle_MAT_BasicElt
") BasicElt;
		Handle_MAT_BasicElt BasicElt (const Standard_Integer Index);
		%feature("compactdefaultargs") Node;
		%feature("autodoc", "	* Return the Node of index <Index> in <theNodes>.

	:param Index:
	:type Index: int
	:rtype: Handle_MAT_Node
") Node;
		Handle_MAT_Node Node (const Standard_Integer Index);
		%feature("compactdefaultargs") NumberOfArcs;
		%feature("autodoc", "	* Return the number of arcs of <self>.

	:rtype: int
") NumberOfArcs;
		Standard_Integer NumberOfArcs ();
		%feature("compactdefaultargs") NumberOfNodes;
		%feature("autodoc", "	* Return the number of nodes of <self>.

	:rtype: int
") NumberOfNodes;
		Standard_Integer NumberOfNodes ();
		%feature("compactdefaultargs") NumberOfBasicElts;
		%feature("autodoc", "	* Return the number of basic elements of <self>.

	:rtype: int
") NumberOfBasicElts;
		Standard_Integer NumberOfBasicElts ();
		%feature("compactdefaultargs") NumberOfInfiniteNodes;
		%feature("autodoc", "	* Return the number of infinites nodes of <self>.

	:rtype: int
") NumberOfInfiniteNodes;
		Standard_Integer NumberOfInfiniteNodes ();
		%feature("compactdefaultargs") FusionOfBasicElts;
		%feature("autodoc", "	* Merge two BasicElts. The End of the BasicElt Elt1 of IndexElt1 becomes The End of the BasicElt Elt2 of IndexElt2. Elt2 is replaced in the arcs by Elt1, Elt2 is eliminated. //! <MergeArc1> is True if the fusion of the BasicElts => a fusion of two Arcs which separated the same elements. In this case <GeomIndexArc1> and <GeomIndexArc2> are the Geometric Index of this arcs. //! If the BasicElt corresponds to a close line , the StartArc and the EndArc of Elt1 can separate the same elements . In this case there is a fusion of this arcs, <MergeArc2> is true and <GeomIndexArc3> and <GeomIndexArc4> are the Geometric Index of this arcs.

	:param IndexElt1:
	:type IndexElt1: int
	:param IndexElt2:
	:type IndexElt2: int
	:param MergeArc1:
	:type MergeArc1: bool
	:param GeomIndexArc1:
	:type GeomIndexArc1: int &
	:param GeomIndexArc2:
	:type GeomIndexArc2: int &
	:param MergeArc2:
	:type MergeArc2: bool
	:param GeomIndexArc3:
	:type GeomIndexArc3: int &
	:param GeomIndexArc4:
	:type GeomIndexArc4: int &
	:rtype: None
") FusionOfBasicElts;
		void FusionOfBasicElts (const Standard_Integer IndexElt1,const Standard_Integer IndexElt2,Standard_Boolean &OutValue,Standard_Integer &OutValue,Standard_Integer &OutValue,Standard_Boolean &OutValue,Standard_Integer &OutValue,Standard_Integer &OutValue);
		%feature("compactdefaultargs") CompactArcs;
		%feature("autodoc", "	:rtype: None
") CompactArcs;
		void CompactArcs ();
		%feature("compactdefaultargs") CompactNodes;
		%feature("autodoc", "	:rtype: None
") CompactNodes;
		void CompactNodes ();
		%feature("compactdefaultargs") ChangeBasicElts;
		%feature("autodoc", "	:param NewMap:
	:type NewMap: MAT_DataMapOfIntegerBasicElt &
	:rtype: None
") ChangeBasicElts;
		void ChangeBasicElts (const MAT_DataMapOfIntegerBasicElt & NewMap);
		%feature("compactdefaultargs") ChangeBasicElt;
		%feature("autodoc", "	:param Index:
	:type Index: int
	:rtype: Handle_MAT_BasicElt
") ChangeBasicElt;
		Handle_MAT_BasicElt ChangeBasicElt (const Standard_Integer Index);
};


%extend MAT_Graph {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_MAT_Graph(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_MAT_Graph::Handle_MAT_Graph %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_MAT_Graph;
class Handle_MAT_Graph : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_MAT_Graph();
        Handle_MAT_Graph(const Handle_MAT_Graph &aHandle);
        Handle_MAT_Graph(const MAT_Graph *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_MAT_Graph DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_MAT_Graph {
    MAT_Graph* _get_reference() {
    return (MAT_Graph*)$self->get();
    }
};

%extend Handle_MAT_Graph {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend MAT_Graph {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor MAT_ListOfBisector;
class MAT_ListOfBisector : public Standard_Transient {
	public:
		%feature("compactdefaultargs") MAT_ListOfBisector;
		%feature("autodoc", "	:rtype: None
") MAT_ListOfBisector;
		 MAT_ListOfBisector ();
		%feature("compactdefaultargs") First;
		%feature("autodoc", "	:rtype: None
") First;
		void First ();
		%feature("compactdefaultargs") Last;
		%feature("autodoc", "	:rtype: None
") Last;
		void Last ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aniten:
	:type aniten: Handle_MAT_Bisector &
	:rtype: None
") Init;
		void Init (const Handle_MAT_Bisector & aniten);
		%feature("compactdefaultargs") Next;
		%feature("autodoc", "	:rtype: None
") Next;
		void Next ();
		%feature("compactdefaultargs") Previous;
		%feature("autodoc", "	:rtype: None
") Previous;
		void Previous ();
		%feature("compactdefaultargs") More;
		%feature("autodoc", "	:rtype: bool
") More;
		Standard_Boolean More ();
		%feature("compactdefaultargs") Current;
		%feature("autodoc", "	:rtype: Handle_MAT_Bisector
") Current;
		Handle_MAT_Bisector Current ();
		%feature("compactdefaultargs") Current;
		%feature("autodoc", "	:param anitem:
	:type anitem: Handle_MAT_Bisector &
	:rtype: None
") Current;
		void Current (const Handle_MAT_Bisector & anitem);
		%feature("compactdefaultargs") FirstItem;
		%feature("autodoc", "	:rtype: Handle_MAT_Bisector
") FirstItem;
		Handle_MAT_Bisector FirstItem ();
		%feature("compactdefaultargs") LastItem;
		%feature("autodoc", "	:rtype: Handle_MAT_Bisector
") LastItem;
		Handle_MAT_Bisector LastItem ();
		%feature("compactdefaultargs") PreviousItem;
		%feature("autodoc", "	:rtype: Handle_MAT_Bisector
") PreviousItem;
		Handle_MAT_Bisector PreviousItem ();
		%feature("compactdefaultargs") NextItem;
		%feature("autodoc", "	:rtype: Handle_MAT_Bisector
") NextItem;
		Handle_MAT_Bisector NextItem ();
		%feature("compactdefaultargs") Number;
		%feature("autodoc", "	:rtype: int
") Number;
		Standard_Integer Number ();
		%feature("compactdefaultargs") Index;
		%feature("autodoc", "	:rtype: int
") Index;
		Standard_Integer Index ();
		%feature("compactdefaultargs") Brackets;
		%feature("autodoc", "	:param anindex:
	:type anindex: int
	:rtype: Handle_MAT_Bisector
") Brackets;
		Handle_MAT_Bisector Brackets (const Standard_Integer anindex);
		%feature("compactdefaultargs") Unlink;
		%feature("autodoc", "	:rtype: None
") Unlink;
		void Unlink ();
		%feature("compactdefaultargs") LinkBefore;
		%feature("autodoc", "	:param anitem:
	:type anitem: Handle_MAT_Bisector &
	:rtype: None
") LinkBefore;
		void LinkBefore (const Handle_MAT_Bisector & anitem);
		%feature("compactdefaultargs") LinkAfter;
		%feature("autodoc", "	:param anitem:
	:type anitem: Handle_MAT_Bisector &
	:rtype: None
") LinkAfter;
		void LinkAfter (const Handle_MAT_Bisector & anitem);
		%feature("compactdefaultargs") FrontAdd;
		%feature("autodoc", "	:param anitem:
	:type anitem: Handle_MAT_Bisector &
	:rtype: None
") FrontAdd;
		void FrontAdd (const Handle_MAT_Bisector & anitem);
		%feature("compactdefaultargs") BackAdd;
		%feature("autodoc", "	:param anitem:
	:type anitem: Handle_MAT_Bisector &
	:rtype: None
") BackAdd;
		void BackAdd (const Handle_MAT_Bisector & anitem);
		%feature("compactdefaultargs") Permute;
		%feature("autodoc", "	:rtype: None
") Permute;
		void Permute ();
		%feature("compactdefaultargs") Loop;
		%feature("autodoc", "	:rtype: None
") Loop;
		void Loop ();
		%feature("compactdefaultargs") IsEmpty;
		%feature("autodoc", "	:rtype: bool
") IsEmpty;
		Standard_Boolean IsEmpty ();
		%feature("compactdefaultargs") Dump;
		%feature("autodoc", "	:param ashift:
	:type ashift: int
	:param alevel:
	:type alevel: int
	:rtype: None
") Dump;
		void Dump (const Standard_Integer ashift,const Standard_Integer alevel);
};


%extend MAT_ListOfBisector {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_MAT_ListOfBisector(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_MAT_ListOfBisector::Handle_MAT_ListOfBisector %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_MAT_ListOfBisector;
class Handle_MAT_ListOfBisector : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_MAT_ListOfBisector();
        Handle_MAT_ListOfBisector(const Handle_MAT_ListOfBisector &aHandle);
        Handle_MAT_ListOfBisector(const MAT_ListOfBisector *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_MAT_ListOfBisector DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_MAT_ListOfBisector {
    MAT_ListOfBisector* _get_reference() {
    return (MAT_ListOfBisector*)$self->get();
    }
};

%extend Handle_MAT_ListOfBisector {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend MAT_ListOfBisector {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor MAT_ListOfEdge;
class MAT_ListOfEdge : public Standard_Transient {
	public:
		%feature("compactdefaultargs") MAT_ListOfEdge;
		%feature("autodoc", "	:rtype: None
") MAT_ListOfEdge;
		 MAT_ListOfEdge ();
		%feature("compactdefaultargs") First;
		%feature("autodoc", "	:rtype: None
") First;
		void First ();
		%feature("compactdefaultargs") Last;
		%feature("autodoc", "	:rtype: None
") Last;
		void Last ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aniten:
	:type aniten: Handle_MAT_Edge &
	:rtype: None
") Init;
		void Init (const Handle_MAT_Edge & aniten);
		%feature("compactdefaultargs") Next;
		%feature("autodoc", "	:rtype: None
") Next;
		void Next ();
		%feature("compactdefaultargs") Previous;
		%feature("autodoc", "	:rtype: None
") Previous;
		void Previous ();
		%feature("compactdefaultargs") More;
		%feature("autodoc", "	:rtype: bool
") More;
		Standard_Boolean More ();
		%feature("compactdefaultargs") Current;
		%feature("autodoc", "	:rtype: Handle_MAT_Edge
") Current;
		Handle_MAT_Edge Current ();
		%feature("compactdefaultargs") Current;
		%feature("autodoc", "	:param anitem:
	:type anitem: Handle_MAT_Edge &
	:rtype: None
") Current;
		void Current (const Handle_MAT_Edge & anitem);
		%feature("compactdefaultargs") FirstItem;
		%feature("autodoc", "	:rtype: Handle_MAT_Edge
") FirstItem;
		Handle_MAT_Edge FirstItem ();
		%feature("compactdefaultargs") LastItem;
		%feature("autodoc", "	:rtype: Handle_MAT_Edge
") LastItem;
		Handle_MAT_Edge LastItem ();
		%feature("compactdefaultargs") PreviousItem;
		%feature("autodoc", "	:rtype: Handle_MAT_Edge
") PreviousItem;
		Handle_MAT_Edge PreviousItem ();
		%feature("compactdefaultargs") NextItem;
		%feature("autodoc", "	:rtype: Handle_MAT_Edge
") NextItem;
		Handle_MAT_Edge NextItem ();
		%feature("compactdefaultargs") Number;
		%feature("autodoc", "	:rtype: int
") Number;
		Standard_Integer Number ();
		%feature("compactdefaultargs") Index;
		%feature("autodoc", "	:rtype: int
") Index;
		Standard_Integer Index ();
		%feature("compactdefaultargs") Brackets;
		%feature("autodoc", "	:param anindex:
	:type anindex: int
	:rtype: Handle_MAT_Edge
") Brackets;
		Handle_MAT_Edge Brackets (const Standard_Integer anindex);
		%feature("compactdefaultargs") Unlink;
		%feature("autodoc", "	:rtype: None
") Unlink;
		void Unlink ();
		%feature("compactdefaultargs") LinkBefore;
		%feature("autodoc", "	:param anitem:
	:type anitem: Handle_MAT_Edge &
	:rtype: None
") LinkBefore;
		void LinkBefore (const Handle_MAT_Edge & anitem);
		%feature("compactdefaultargs") LinkAfter;
		%feature("autodoc", "	:param anitem:
	:type anitem: Handle_MAT_Edge &
	:rtype: None
") LinkAfter;
		void LinkAfter (const Handle_MAT_Edge & anitem);
		%feature("compactdefaultargs") FrontAdd;
		%feature("autodoc", "	:param anitem:
	:type anitem: Handle_MAT_Edge &
	:rtype: None
") FrontAdd;
		void FrontAdd (const Handle_MAT_Edge & anitem);
		%feature("compactdefaultargs") BackAdd;
		%feature("autodoc", "	:param anitem:
	:type anitem: Handle_MAT_Edge &
	:rtype: None
") BackAdd;
		void BackAdd (const Handle_MAT_Edge & anitem);
		%feature("compactdefaultargs") Permute;
		%feature("autodoc", "	:rtype: None
") Permute;
		void Permute ();
		%feature("compactdefaultargs") Loop;
		%feature("autodoc", "	:rtype: None
") Loop;
		void Loop ();
		%feature("compactdefaultargs") IsEmpty;
		%feature("autodoc", "	:rtype: bool
") IsEmpty;
		Standard_Boolean IsEmpty ();
		%feature("compactdefaultargs") Dump;
		%feature("autodoc", "	:param ashift:
	:type ashift: int
	:param alevel:
	:type alevel: int
	:rtype: None
") Dump;
		void Dump (const Standard_Integer ashift,const Standard_Integer alevel);
};


%extend MAT_ListOfEdge {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_MAT_ListOfEdge(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_MAT_ListOfEdge::Handle_MAT_ListOfEdge %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_MAT_ListOfEdge;
class Handle_MAT_ListOfEdge : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_MAT_ListOfEdge();
        Handle_MAT_ListOfEdge(const Handle_MAT_ListOfEdge &aHandle);
        Handle_MAT_ListOfEdge(const MAT_ListOfEdge *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_MAT_ListOfEdge DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_MAT_ListOfEdge {
    MAT_ListOfEdge* _get_reference() {
    return (MAT_ListOfEdge*)$self->get();
    }
};

%extend Handle_MAT_ListOfEdge {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend MAT_ListOfEdge {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor MAT_Node;
class MAT_Node : public Standard_Transient {
	public:
		%feature("compactdefaultargs") MAT_Node;
		%feature("autodoc", "	:param GeomIndex:
	:type GeomIndex: int
	:param LinkedArc:
	:type LinkedArc: Handle_MAT_Arc &
	:param Distance:
	:type Distance: float
	:rtype: None
") MAT_Node;
		 MAT_Node (const Standard_Integer GeomIndex,const Handle_MAT_Arc & LinkedArc,const Standard_Real Distance);
		%feature("compactdefaultargs") GeomIndex;
		%feature("autodoc", "	* Returns the index associated of the geometric representation of <self>.

	:rtype: int
") GeomIndex;
		Standard_Integer GeomIndex ();
		%feature("compactdefaultargs") Index;
		%feature("autodoc", "	* Returns the index associated of the node

	:rtype: int
") Index;
		Standard_Integer Index ();
		%feature("compactdefaultargs") LinkedArcs;
		%feature("autodoc", "	* Returns in <S> the Arcs linked to <self>.

	:param S:
	:type S: MAT_SequenceOfArc &
	:rtype: None
") LinkedArcs;
		void LinkedArcs (MAT_SequenceOfArc & S);
		%feature("compactdefaultargs") NearElts;
		%feature("autodoc", "	* Returns in <S> the BasicElts equidistant to <self>.

	:param S:
	:type S: MAT_SequenceOfBasicElt &
	:rtype: None
") NearElts;
		void NearElts (MAT_SequenceOfBasicElt & S);
		%feature("compactdefaultargs") Distance;
		%feature("autodoc", "	:rtype: float
") Distance;
		Standard_Real Distance ();
		%feature("compactdefaultargs") PendingNode;
		%feature("autodoc", "	* Returns True if <self> is a pending Node. --ie : the number of Arc Linked = 1--

	:rtype: bool
") PendingNode;
		Standard_Boolean PendingNode ();
		%feature("compactdefaultargs") OnBasicElt;
		%feature("autodoc", "	* Returns True if <self> belongs to the figure.

	:rtype: bool
") OnBasicElt;
		Standard_Boolean OnBasicElt ();
		%feature("compactdefaultargs") Infinite;
		%feature("autodoc", "	* Returns True if the distance of <self> is Infinite

	:rtype: bool
") Infinite;
		Standard_Boolean Infinite ();
		%feature("compactdefaultargs") SetIndex;
		%feature("autodoc", "	* Set the index associated of the node

	:param anIndex:
	:type anIndex: int
	:rtype: None
") SetIndex;
		void SetIndex (const Standard_Integer anIndex);
		%feature("compactdefaultargs") SetLinkedArc;
		%feature("autodoc", "	:param anArc:
	:type anArc: Handle_MAT_Arc &
	:rtype: None
") SetLinkedArc;
		void SetLinkedArc (const Handle_MAT_Arc & anArc);
};


%extend MAT_Node {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_MAT_Node(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_MAT_Node::Handle_MAT_Node %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_MAT_Node;
class Handle_MAT_Node : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_MAT_Node();
        Handle_MAT_Node(const Handle_MAT_Node &aHandle);
        Handle_MAT_Node(const MAT_Node *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_MAT_Node DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_MAT_Node {
    MAT_Node* _get_reference() {
    return (MAT_Node*)$self->get();
    }
};

%extend Handle_MAT_Node {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend MAT_Node {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor MAT_TListNodeOfListOfBisector;
class MAT_TListNodeOfListOfBisector : public Standard_Transient {
	public:
		%feature("compactdefaultargs") MAT_TListNodeOfListOfBisector;
		%feature("autodoc", "	:rtype: None
") MAT_TListNodeOfListOfBisector;
		 MAT_TListNodeOfListOfBisector ();
		%feature("compactdefaultargs") MAT_TListNodeOfListOfBisector;
		%feature("autodoc", "	:param anitem:
	:type anitem: Handle_MAT_Bisector &
	:rtype: None
") MAT_TListNodeOfListOfBisector;
		 MAT_TListNodeOfListOfBisector (const Handle_MAT_Bisector & anitem);
		%feature("compactdefaultargs") GetItem;
		%feature("autodoc", "	:rtype: Handle_MAT_Bisector
") GetItem;
		Handle_MAT_Bisector GetItem ();
		%feature("compactdefaultargs") Next;
		%feature("autodoc", "	:rtype: Handle_MAT_TListNodeOfListOfBisector
") Next;
		Handle_MAT_TListNodeOfListOfBisector Next ();
		%feature("compactdefaultargs") Previous;
		%feature("autodoc", "	:rtype: Handle_MAT_TListNodeOfListOfBisector
") Previous;
		Handle_MAT_TListNodeOfListOfBisector Previous ();
		%feature("compactdefaultargs") SetItem;
		%feature("autodoc", "	:param anitem:
	:type anitem: Handle_MAT_Bisector &
	:rtype: None
") SetItem;
		void SetItem (const Handle_MAT_Bisector & anitem);
		%feature("compactdefaultargs") Next;
		%feature("autodoc", "	:param atlistnode:
	:type atlistnode: Handle_MAT_TListNodeOfListOfBisector &
	:rtype: None
") Next;
		void Next (const Handle_MAT_TListNodeOfListOfBisector & atlistnode);
		%feature("compactdefaultargs") Previous;
		%feature("autodoc", "	:param atlistnode:
	:type atlistnode: Handle_MAT_TListNodeOfListOfBisector &
	:rtype: None
") Previous;
		void Previous (const Handle_MAT_TListNodeOfListOfBisector & atlistnode);
		%feature("compactdefaultargs") Dummy;
		%feature("autodoc", "	:rtype: None
") Dummy;
		void Dummy ();
};


%extend MAT_TListNodeOfListOfBisector {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_MAT_TListNodeOfListOfBisector(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_MAT_TListNodeOfListOfBisector::Handle_MAT_TListNodeOfListOfBisector %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_MAT_TListNodeOfListOfBisector;
class Handle_MAT_TListNodeOfListOfBisector : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_MAT_TListNodeOfListOfBisector();
        Handle_MAT_TListNodeOfListOfBisector(const Handle_MAT_TListNodeOfListOfBisector &aHandle);
        Handle_MAT_TListNodeOfListOfBisector(const MAT_TListNodeOfListOfBisector *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_MAT_TListNodeOfListOfBisector DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_MAT_TListNodeOfListOfBisector {
    MAT_TListNodeOfListOfBisector* _get_reference() {
    return (MAT_TListNodeOfListOfBisector*)$self->get();
    }
};

%extend Handle_MAT_TListNodeOfListOfBisector {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend MAT_TListNodeOfListOfBisector {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor MAT_TListNodeOfListOfEdge;
class MAT_TListNodeOfListOfEdge : public Standard_Transient {
	public:
		%feature("compactdefaultargs") MAT_TListNodeOfListOfEdge;
		%feature("autodoc", "	:rtype: None
") MAT_TListNodeOfListOfEdge;
		 MAT_TListNodeOfListOfEdge ();
		%feature("compactdefaultargs") MAT_TListNodeOfListOfEdge;
		%feature("autodoc", "	:param anitem:
	:type anitem: Handle_MAT_Edge &
	:rtype: None
") MAT_TListNodeOfListOfEdge;
		 MAT_TListNodeOfListOfEdge (const Handle_MAT_Edge & anitem);
		%feature("compactdefaultargs") GetItem;
		%feature("autodoc", "	:rtype: Handle_MAT_Edge
") GetItem;
		Handle_MAT_Edge GetItem ();
		%feature("compactdefaultargs") Next;
		%feature("autodoc", "	:rtype: Handle_MAT_TListNodeOfListOfEdge
") Next;
		Handle_MAT_TListNodeOfListOfEdge Next ();
		%feature("compactdefaultargs") Previous;
		%feature("autodoc", "	:rtype: Handle_MAT_TListNodeOfListOfEdge
") Previous;
		Handle_MAT_TListNodeOfListOfEdge Previous ();
		%feature("compactdefaultargs") SetItem;
		%feature("autodoc", "	:param anitem:
	:type anitem: Handle_MAT_Edge &
	:rtype: None
") SetItem;
		void SetItem (const Handle_MAT_Edge & anitem);
		%feature("compactdefaultargs") Next;
		%feature("autodoc", "	:param atlistnode:
	:type atlistnode: Handle_MAT_TListNodeOfListOfEdge &
	:rtype: None
") Next;
		void Next (const Handle_MAT_TListNodeOfListOfEdge & atlistnode);
		%feature("compactdefaultargs") Previous;
		%feature("autodoc", "	:param atlistnode:
	:type atlistnode: Handle_MAT_TListNodeOfListOfEdge &
	:rtype: None
") Previous;
		void Previous (const Handle_MAT_TListNodeOfListOfEdge & atlistnode);
		%feature("compactdefaultargs") Dummy;
		%feature("autodoc", "	:rtype: None
") Dummy;
		void Dummy ();
};


%extend MAT_TListNodeOfListOfEdge {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_MAT_TListNodeOfListOfEdge(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_MAT_TListNodeOfListOfEdge::Handle_MAT_TListNodeOfListOfEdge %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_MAT_TListNodeOfListOfEdge;
class Handle_MAT_TListNodeOfListOfEdge : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_MAT_TListNodeOfListOfEdge();
        Handle_MAT_TListNodeOfListOfEdge(const Handle_MAT_TListNodeOfListOfEdge &aHandle);
        Handle_MAT_TListNodeOfListOfEdge(const MAT_TListNodeOfListOfEdge *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_MAT_TListNodeOfListOfEdge DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_MAT_TListNodeOfListOfEdge {
    MAT_TListNodeOfListOfEdge* _get_reference() {
    return (MAT_TListNodeOfListOfEdge*)$self->get();
    }
};

%extend Handle_MAT_TListNodeOfListOfEdge {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend MAT_TListNodeOfListOfEdge {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor MAT_Zone;
class MAT_Zone : public Standard_Transient {
	public:
		%feature("compactdefaultargs") MAT_Zone;
		%feature("autodoc", "	:rtype: None
") MAT_Zone;
		 MAT_Zone ();
		%feature("compactdefaultargs") MAT_Zone;
		%feature("autodoc", "	* Compute the frontier of the Zone of proximity.

	:param aBasicElt:
	:type aBasicElt: Handle_MAT_BasicElt &
	:rtype: None
") MAT_Zone;
		 MAT_Zone (const Handle_MAT_BasicElt & aBasicElt);
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "	* Compute the frontier of the Zone of proximity.

	:param aBasicElt:
	:type aBasicElt: Handle_MAT_BasicElt &
	:rtype: None
") Perform;
		void Perform (const Handle_MAT_BasicElt & aBasicElt);
		%feature("compactdefaultargs") NumberOfArcs;
		%feature("autodoc", "	* Return the number Of Arcs On the frontier of <self>.

	:rtype: int
") NumberOfArcs;
		Standard_Integer NumberOfArcs ();
		%feature("compactdefaultargs") ArcOnFrontier;
		%feature("autodoc", "	* Return the Arc number <Index> on the frontier. of <self>.

	:param Index:
	:type Index: int
	:rtype: Handle_MAT_Arc
") ArcOnFrontier;
		Handle_MAT_Arc ArcOnFrontier (const Standard_Integer Index);
		%feature("compactdefaultargs") NoEmptyZone;
		%feature("autodoc", "	* Return True if <self> is not empty .

	:rtype: bool
") NoEmptyZone;
		Standard_Boolean NoEmptyZone ();
		%feature("compactdefaultargs") Limited;
		%feature("autodoc", "	* Return True if <self> is Limited.

	:rtype: bool
") Limited;
		Standard_Boolean Limited ();
};


%extend MAT_Zone {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_MAT_Zone(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_MAT_Zone::Handle_MAT_Zone %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_MAT_Zone;
class Handle_MAT_Zone : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_MAT_Zone();
        Handle_MAT_Zone(const Handle_MAT_Zone &aHandle);
        Handle_MAT_Zone(const MAT_Zone *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_MAT_Zone DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_MAT_Zone {
    MAT_Zone* _get_reference() {
    return (MAT_Zone*)$self->get();
    }
};

%extend Handle_MAT_Zone {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend MAT_Zone {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
