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
%define STEPSELECTIONSDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=STEPSELECTIONSDOCSTRING) STEPSelections

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


%include STEPSelections_headers.i


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
%template(STEPSelections_SequenceOfAssemblyComponent) NCollection_Sequence <Handle_STEPSelections_AssemblyComponent>;
%template(STEPSelections_SequenceOfAssemblyLink) NCollection_Sequence <Handle_STEPSelections_AssemblyLink>;
/* end templates declaration */

/* public enums */
/* end public enums declaration */

%nodefaultctor STEPSelections_AssemblyComponent;
class STEPSelections_AssemblyComponent : public Standard_Transient {
	public:
		%feature("compactdefaultargs") STEPSelections_AssemblyComponent;
		%feature("autodoc", "	:rtype: None
") STEPSelections_AssemblyComponent;
		 STEPSelections_AssemblyComponent ();
		%feature("compactdefaultargs") STEPSelections_AssemblyComponent;
		%feature("autodoc", "	:param sdr:
	:type sdr: Handle_StepShape_ShapeDefinitionRepresentation &
	:param list:
	:type list: Handle_STEPSelections_HSequenceOfAssemblyLink &
	:rtype: None
") STEPSelections_AssemblyComponent;
		 STEPSelections_AssemblyComponent (const Handle_StepShape_ShapeDefinitionRepresentation & sdr,const Handle_STEPSelections_HSequenceOfAssemblyLink & list);
		%feature("compactdefaultargs") GetSDR;
		%feature("autodoc", "	:rtype: Handle_StepShape_ShapeDefinitionRepresentation
") GetSDR;
		Handle_StepShape_ShapeDefinitionRepresentation GetSDR ();
		%feature("compactdefaultargs") GetList;
		%feature("autodoc", "	:rtype: Handle_STEPSelections_HSequenceOfAssemblyLink
") GetList;
		Handle_STEPSelections_HSequenceOfAssemblyLink GetList ();
		%feature("compactdefaultargs") SetSDR;
		%feature("autodoc", "	:param sdr:
	:type sdr: Handle_StepShape_ShapeDefinitionRepresentation &
	:rtype: None
") SetSDR;
		void SetSDR (const Handle_StepShape_ShapeDefinitionRepresentation & sdr);
		%feature("compactdefaultargs") SetList;
		%feature("autodoc", "	:param list:
	:type list: Handle_STEPSelections_HSequenceOfAssemblyLink &
	:rtype: None
") SetList;
		void SetList (const Handle_STEPSelections_HSequenceOfAssemblyLink & list);
};


%extend STEPSelections_AssemblyComponent {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_STEPSelections_AssemblyComponent(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_STEPSelections_AssemblyComponent::Handle_STEPSelections_AssemblyComponent %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_STEPSelections_AssemblyComponent;
class Handle_STEPSelections_AssemblyComponent : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_STEPSelections_AssemblyComponent();
        Handle_STEPSelections_AssemblyComponent(const Handle_STEPSelections_AssemblyComponent &aHandle);
        Handle_STEPSelections_AssemblyComponent(const STEPSelections_AssemblyComponent *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_STEPSelections_AssemblyComponent DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_STEPSelections_AssemblyComponent {
    STEPSelections_AssemblyComponent* _get_reference() {
    return (STEPSelections_AssemblyComponent*)$self->get();
    }
};

%extend Handle_STEPSelections_AssemblyComponent {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend STEPSelections_AssemblyComponent {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPSelections_AssemblyExplorer;
class STEPSelections_AssemblyExplorer {
	public:
		%feature("compactdefaultargs") STEPSelections_AssemblyExplorer;
		%feature("autodoc", "	:param G:
	:type G: Interface_Graph &
	:rtype: None
") STEPSelections_AssemblyExplorer;
		 STEPSelections_AssemblyExplorer (const Interface_Graph & G);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param G:
	:type G: Interface_Graph &
	:rtype: None
") Init;
		void Init (const Interface_Graph & G);

        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };
        		%feature("compactdefaultargs") FindSDRWithProduct;
		%feature("autodoc", "	:param product:
	:type product: Handle_StepBasic_ProductDefinition &
	:rtype: Handle_StepShape_ShapeDefinitionRepresentation
") FindSDRWithProduct;
		Handle_StepShape_ShapeDefinitionRepresentation FindSDRWithProduct (const Handle_StepBasic_ProductDefinition & product);
		%feature("compactdefaultargs") FillListWithGraph;
		%feature("autodoc", "	:param cmp:
	:type cmp: Handle_STEPSelections_AssemblyComponent &
	:rtype: None
") FillListWithGraph;
		void FillListWithGraph (const Handle_STEPSelections_AssemblyComponent & cmp);
		%feature("compactdefaultargs") FindItemWithNAUO;
		%feature("autodoc", "	:param nauo:
	:type nauo: Handle_StepRepr_NextAssemblyUsageOccurrence &
	:rtype: Handle_Standard_Transient
") FindItemWithNAUO;
		Handle_Standard_Transient FindItemWithNAUO (const Handle_StepRepr_NextAssemblyUsageOccurrence & nauo);
		%feature("compactdefaultargs") NbAssemblies;
		%feature("autodoc", "	* Returns the number of root assemblies;

	:rtype: int
") NbAssemblies;
		Standard_Integer NbAssemblies ();
		%feature("compactdefaultargs") Root;
		%feature("autodoc", "	* Returns root of assenbly by its rank;

	:param rank: default value is 1
	:type rank: int
	:rtype: Handle_STEPSelections_AssemblyComponent
") Root;
		Handle_STEPSelections_AssemblyComponent Root (const Standard_Integer rank = 1);
};


%extend STEPSelections_AssemblyExplorer {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPSelections_AssemblyLink;
class STEPSelections_AssemblyLink : public Standard_Transient {
	public:
		%feature("compactdefaultargs") STEPSelections_AssemblyLink;
		%feature("autodoc", "	:rtype: None
") STEPSelections_AssemblyLink;
		 STEPSelections_AssemblyLink ();
		%feature("compactdefaultargs") STEPSelections_AssemblyLink;
		%feature("autodoc", "	:param nauo:
	:type nauo: Handle_StepRepr_NextAssemblyUsageOccurrence &
	:param item:
	:type item: Handle_Standard_Transient &
	:param part:
	:type part: Handle_STEPSelections_AssemblyComponent &
	:rtype: None
") STEPSelections_AssemblyLink;
		 STEPSelections_AssemblyLink (const Handle_StepRepr_NextAssemblyUsageOccurrence & nauo,const Handle_Standard_Transient & item,const Handle_STEPSelections_AssemblyComponent & part);
		%feature("compactdefaultargs") GetNAUO;
		%feature("autodoc", "	:rtype: Handle_StepRepr_NextAssemblyUsageOccurrence
") GetNAUO;
		Handle_StepRepr_NextAssemblyUsageOccurrence GetNAUO ();
		%feature("compactdefaultargs") GetItem;
		%feature("autodoc", "	:rtype: Handle_Standard_Transient
") GetItem;
		Handle_Standard_Transient GetItem ();
		%feature("compactdefaultargs") GetComponent;
		%feature("autodoc", "	:rtype: Handle_STEPSelections_AssemblyComponent
") GetComponent;
		Handle_STEPSelections_AssemblyComponent GetComponent ();
		%feature("compactdefaultargs") SetNAUO;
		%feature("autodoc", "	:param nauo:
	:type nauo: Handle_StepRepr_NextAssemblyUsageOccurrence &
	:rtype: None
") SetNAUO;
		void SetNAUO (const Handle_StepRepr_NextAssemblyUsageOccurrence & nauo);
		%feature("compactdefaultargs") SetItem;
		%feature("autodoc", "	:param item:
	:type item: Handle_Standard_Transient &
	:rtype: None
") SetItem;
		void SetItem (const Handle_Standard_Transient & item);
		%feature("compactdefaultargs") SetComponent;
		%feature("autodoc", "	:param part:
	:type part: Handle_STEPSelections_AssemblyComponent &
	:rtype: None
") SetComponent;
		void SetComponent (const Handle_STEPSelections_AssemblyComponent & part);
};


%extend STEPSelections_AssemblyLink {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_STEPSelections_AssemblyLink(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_STEPSelections_AssemblyLink::Handle_STEPSelections_AssemblyLink %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_STEPSelections_AssemblyLink;
class Handle_STEPSelections_AssemblyLink : public Handle_Standard_Transient {

    public:
        // constructors
        Handle_STEPSelections_AssemblyLink();
        Handle_STEPSelections_AssemblyLink(const Handle_STEPSelections_AssemblyLink &aHandle);
        Handle_STEPSelections_AssemblyLink(const STEPSelections_AssemblyLink *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_STEPSelections_AssemblyLink DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_STEPSelections_AssemblyLink {
    STEPSelections_AssemblyLink* _get_reference() {
    return (STEPSelections_AssemblyLink*)$self->get();
    }
};

%extend Handle_STEPSelections_AssemblyLink {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend STEPSelections_AssemblyLink {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPSelections_Counter;
class STEPSelections_Counter {
	public:
		%feature("compactdefaultargs") STEPSelections_Counter;
		%feature("autodoc", "	:rtype: None
") STEPSelections_Counter;
		 STEPSelections_Counter ();
		%feature("compactdefaultargs") Count;
		%feature("autodoc", "	:param graph:
	:type graph: Interface_Graph &
	:param start:
	:type start: Handle_Standard_Transient &
	:rtype: None
") Count;
		void Count (const Interface_Graph & graph,const Handle_Standard_Transient & start);
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "	:rtype: None
") Clear;
		void Clear ();
		%feature("compactdefaultargs") NbInstancesOfFaces;
		%feature("autodoc", "	:rtype: int
") NbInstancesOfFaces;
		Standard_Integer NbInstancesOfFaces ();
		%feature("compactdefaultargs") NbInstancesOfShells;
		%feature("autodoc", "	:rtype: int
") NbInstancesOfShells;
		Standard_Integer NbInstancesOfShells ();
		%feature("compactdefaultargs") NbInstancesOfSolids;
		%feature("autodoc", "	:rtype: int
") NbInstancesOfSolids;
		Standard_Integer NbInstancesOfSolids ();
		%feature("compactdefaultargs") NbInstancesOfEdges;
		%feature("autodoc", "	:rtype: int
") NbInstancesOfEdges;
		Standard_Integer NbInstancesOfEdges ();
		%feature("compactdefaultargs") NbInstancesOfWires;
		%feature("autodoc", "	:rtype: int
") NbInstancesOfWires;
		Standard_Integer NbInstancesOfWires ();
		%feature("compactdefaultargs") NbSourceFaces;
		%feature("autodoc", "	:rtype: int
") NbSourceFaces;
		Standard_Integer NbSourceFaces ();
		%feature("compactdefaultargs") NbSourceShells;
		%feature("autodoc", "	:rtype: int
") NbSourceShells;
		Standard_Integer NbSourceShells ();
		%feature("compactdefaultargs") NbSourceSolids;
		%feature("autodoc", "	:rtype: int
") NbSourceSolids;
		Standard_Integer NbSourceSolids ();
		%feature("compactdefaultargs") NbSourceEdges;
		%feature("autodoc", "	:rtype: int
") NbSourceEdges;
		Standard_Integer NbSourceEdges ();
		%feature("compactdefaultargs") NbSourceWires;
		%feature("autodoc", "	:rtype: int
") NbSourceWires;
		Standard_Integer NbSourceWires ();
};


%extend STEPSelections_Counter {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPSelections_SelectAssembly;
class STEPSelections_SelectAssembly : public IFSelect_SelectExplore {
	public:
		%feature("compactdefaultargs") STEPSelections_SelectAssembly;
		%feature("autodoc", "	:rtype: None
") STEPSelections_SelectAssembly;
		 STEPSelections_SelectAssembly ();
		%feature("compactdefaultargs") Explore;
		%feature("autodoc", "	* Explores an entity, to take its faces Works recursively

	:param level:
	:type level: int
	:param ent:
	:type ent: Handle_Standard_Transient &
	:param G:
	:type G: Interface_Graph &
	:param explored:
	:type explored: Interface_EntityIterator &
	:rtype: bool
") Explore;
		Standard_Boolean Explore (const Standard_Integer level,const Handle_Standard_Transient & ent,const Interface_Graph & G,Interface_EntityIterator & explored);
		%feature("compactdefaultargs") ExploreLabel;
		%feature("autodoc", "	* Returns a text defining the criterium : 'Assembly structures'

	:rtype: TCollection_AsciiString
") ExploreLabel;
		TCollection_AsciiString ExploreLabel ();
};


%extend STEPSelections_SelectAssembly {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_STEPSelections_SelectAssembly(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_STEPSelections_SelectAssembly::Handle_STEPSelections_SelectAssembly %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_STEPSelections_SelectAssembly;
class Handle_STEPSelections_SelectAssembly : public Handle_IFSelect_SelectExplore {

    public:
        // constructors
        Handle_STEPSelections_SelectAssembly();
        Handle_STEPSelections_SelectAssembly(const Handle_STEPSelections_SelectAssembly &aHandle);
        Handle_STEPSelections_SelectAssembly(const STEPSelections_SelectAssembly *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_STEPSelections_SelectAssembly DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_STEPSelections_SelectAssembly {
    STEPSelections_SelectAssembly* _get_reference() {
    return (STEPSelections_SelectAssembly*)$self->get();
    }
};

%extend Handle_STEPSelections_SelectAssembly {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend STEPSelections_SelectAssembly {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPSelections_SelectDerived;
class STEPSelections_SelectDerived : public StepSelect_StepType {
	public:
		%feature("compactdefaultargs") STEPSelections_SelectDerived;
		%feature("autodoc", "	:rtype: None
") STEPSelections_SelectDerived;
		 STEPSelections_SelectDerived ();
		%feature("compactdefaultargs") Matches;
		%feature("autodoc", "	:param ent:
	:type ent: Handle_Standard_Transient &
	:param model:
	:type model: Handle_Interface_InterfaceModel &
	:param text:
	:type text: TCollection_AsciiString &
	:param exact:
	:type exact: bool
	:rtype: bool
") Matches;
		virtual Standard_Boolean Matches (const Handle_Standard_Transient & ent,const Handle_Interface_InterfaceModel & model,const TCollection_AsciiString & text,const Standard_Boolean exact);
};


%extend STEPSelections_SelectDerived {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_STEPSelections_SelectDerived(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_STEPSelections_SelectDerived::Handle_STEPSelections_SelectDerived %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_STEPSelections_SelectDerived;
class Handle_STEPSelections_SelectDerived : public Handle_StepSelect_StepType {

    public:
        // constructors
        Handle_STEPSelections_SelectDerived();
        Handle_STEPSelections_SelectDerived(const Handle_STEPSelections_SelectDerived &aHandle);
        Handle_STEPSelections_SelectDerived(const STEPSelections_SelectDerived *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_STEPSelections_SelectDerived DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_STEPSelections_SelectDerived {
    STEPSelections_SelectDerived* _get_reference() {
    return (STEPSelections_SelectDerived*)$self->get();
    }
};

%extend Handle_STEPSelections_SelectDerived {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend STEPSelections_SelectDerived {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPSelections_SelectFaces;
class STEPSelections_SelectFaces : public IFSelect_SelectExplore {
	public:
		%feature("compactdefaultargs") STEPSelections_SelectFaces;
		%feature("autodoc", "	:rtype: None
") STEPSelections_SelectFaces;
		 STEPSelections_SelectFaces ();
		%feature("compactdefaultargs") Explore;
		%feature("autodoc", "	* Explores an entity, to take its faces Works recursively

	:param level:
	:type level: int
	:param ent:
	:type ent: Handle_Standard_Transient &
	:param G:
	:type G: Interface_Graph &
	:param explored:
	:type explored: Interface_EntityIterator &
	:rtype: bool
") Explore;
		Standard_Boolean Explore (const Standard_Integer level,const Handle_Standard_Transient & ent,const Interface_Graph & G,Interface_EntityIterator & explored);
		%feature("compactdefaultargs") ExploreLabel;
		%feature("autodoc", "	* Returns a text defining the criterium : 'Faces'

	:rtype: TCollection_AsciiString
") ExploreLabel;
		TCollection_AsciiString ExploreLabel ();
};


%extend STEPSelections_SelectFaces {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_STEPSelections_SelectFaces(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_STEPSelections_SelectFaces::Handle_STEPSelections_SelectFaces %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_STEPSelections_SelectFaces;
class Handle_STEPSelections_SelectFaces : public Handle_IFSelect_SelectExplore {

    public:
        // constructors
        Handle_STEPSelections_SelectFaces();
        Handle_STEPSelections_SelectFaces(const Handle_STEPSelections_SelectFaces &aHandle);
        Handle_STEPSelections_SelectFaces(const STEPSelections_SelectFaces *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_STEPSelections_SelectFaces DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_STEPSelections_SelectFaces {
    STEPSelections_SelectFaces* _get_reference() {
    return (STEPSelections_SelectFaces*)$self->get();
    }
};

%extend Handle_STEPSelections_SelectFaces {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend STEPSelections_SelectFaces {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPSelections_SelectForTransfer;
class STEPSelections_SelectForTransfer : public XSControl_SelectForTransfer {
	public:
		%feature("compactdefaultargs") STEPSelections_SelectForTransfer;
		%feature("autodoc", "	:rtype: None
") STEPSelections_SelectForTransfer;
		 STEPSelections_SelectForTransfer ();
		%feature("compactdefaultargs") STEPSelections_SelectForTransfer;
		%feature("autodoc", "	:param TR:
	:type TR: Handle_XSControl_TransferReader &
	:rtype: None
") STEPSelections_SelectForTransfer;
		 STEPSelections_SelectForTransfer (const Handle_XSControl_TransferReader & TR);
		%feature("compactdefaultargs") RootResult;
		%feature("autodoc", "	:param G:
	:type G: Interface_Graph &
	:rtype: Interface_EntityIterator
") RootResult;
		virtual Interface_EntityIterator RootResult (const Interface_Graph & G);
};


%extend STEPSelections_SelectForTransfer {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_STEPSelections_SelectForTransfer(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_STEPSelections_SelectForTransfer::Handle_STEPSelections_SelectForTransfer %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_STEPSelections_SelectForTransfer;
class Handle_STEPSelections_SelectForTransfer : public Handle_XSControl_SelectForTransfer {

    public:
        // constructors
        Handle_STEPSelections_SelectForTransfer();
        Handle_STEPSelections_SelectForTransfer(const Handle_STEPSelections_SelectForTransfer &aHandle);
        Handle_STEPSelections_SelectForTransfer(const STEPSelections_SelectForTransfer *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_STEPSelections_SelectForTransfer DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_STEPSelections_SelectForTransfer {
    STEPSelections_SelectForTransfer* _get_reference() {
    return (STEPSelections_SelectForTransfer*)$self->get();
    }
};

%extend Handle_STEPSelections_SelectForTransfer {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend STEPSelections_SelectForTransfer {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPSelections_SelectGSCurves;
class STEPSelections_SelectGSCurves : public IFSelect_SelectExplore {
	public:
		%feature("compactdefaultargs") STEPSelections_SelectGSCurves;
		%feature("autodoc", "	:rtype: None
") STEPSelections_SelectGSCurves;
		 STEPSelections_SelectGSCurves ();
		%feature("compactdefaultargs") Explore;
		%feature("autodoc", "	:param level:
	:type level: int
	:param ent:
	:type ent: Handle_Standard_Transient &
	:param G:
	:type G: Interface_Graph &
	:param explored:
	:type explored: Interface_EntityIterator &
	:rtype: bool
") Explore;
		Standard_Boolean Explore (const Standard_Integer level,const Handle_Standard_Transient & ent,const Interface_Graph & G,Interface_EntityIterator & explored);
		%feature("compactdefaultargs") ExploreLabel;
		%feature("autodoc", "	* Returns a text defining the criterium : 'Curves'

	:rtype: TCollection_AsciiString
") ExploreLabel;
		TCollection_AsciiString ExploreLabel ();
};


%extend STEPSelections_SelectGSCurves {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_STEPSelections_SelectGSCurves(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_STEPSelections_SelectGSCurves::Handle_STEPSelections_SelectGSCurves %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_STEPSelections_SelectGSCurves;
class Handle_STEPSelections_SelectGSCurves : public Handle_IFSelect_SelectExplore {

    public:
        // constructors
        Handle_STEPSelections_SelectGSCurves();
        Handle_STEPSelections_SelectGSCurves(const Handle_STEPSelections_SelectGSCurves &aHandle);
        Handle_STEPSelections_SelectGSCurves(const STEPSelections_SelectGSCurves *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_STEPSelections_SelectGSCurves DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_STEPSelections_SelectGSCurves {
    STEPSelections_SelectGSCurves* _get_reference() {
    return (STEPSelections_SelectGSCurves*)$self->get();
    }
};

%extend Handle_STEPSelections_SelectGSCurves {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend STEPSelections_SelectGSCurves {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor STEPSelections_SelectInstances;
class STEPSelections_SelectInstances : public IFSelect_SelectExplore {
	public:
		%feature("compactdefaultargs") STEPSelections_SelectInstances;
		%feature("autodoc", "	:rtype: None
") STEPSelections_SelectInstances;
		 STEPSelections_SelectInstances ();
		%feature("compactdefaultargs") RootResult;
		%feature("autodoc", "	:param G:
	:type G: Interface_Graph &
	:rtype: Interface_EntityIterator
") RootResult;
		Interface_EntityIterator RootResult (const Interface_Graph & G);
		%feature("compactdefaultargs") Explore;
		%feature("autodoc", "	:param level:
	:type level: int
	:param ent:
	:type ent: Handle_Standard_Transient &
	:param G:
	:type G: Interface_Graph &
	:param explored:
	:type explored: Interface_EntityIterator &
	:rtype: bool
") Explore;
		Standard_Boolean Explore (const Standard_Integer level,const Handle_Standard_Transient & ent,const Interface_Graph & G,Interface_EntityIterator & explored);
		%feature("compactdefaultargs") ExploreLabel;
		%feature("autodoc", "	* Returns a text defining the criterium : 'Instances'

	:rtype: TCollection_AsciiString
") ExploreLabel;
		TCollection_AsciiString ExploreLabel ();
};


%extend STEPSelections_SelectInstances {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_STEPSelections_SelectInstances(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_STEPSelections_SelectInstances::Handle_STEPSelections_SelectInstances %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_STEPSelections_SelectInstances;
class Handle_STEPSelections_SelectInstances : public Handle_IFSelect_SelectExplore {

    public:
        // constructors
        Handle_STEPSelections_SelectInstances();
        Handle_STEPSelections_SelectInstances(const Handle_STEPSelections_SelectInstances &aHandle);
        Handle_STEPSelections_SelectInstances(const STEPSelections_SelectInstances *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_STEPSelections_SelectInstances DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_STEPSelections_SelectInstances {
    STEPSelections_SelectInstances* _get_reference() {
    return (STEPSelections_SelectInstances*)$self->get();
    }
};

%extend Handle_STEPSelections_SelectInstances {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend STEPSelections_SelectInstances {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
