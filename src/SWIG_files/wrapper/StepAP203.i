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
%define STEPAP203DOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=STEPAP203DOCSTRING) StepAP203

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


%include StepAP203_headers.i


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
%template(StepAP203_Array1OfApprovedItem) NCollection_Array1 <StepAP203_ApprovedItem>;
%template(StepAP203_Array1OfContractedItem) NCollection_Array1 <StepAP203_ContractedItem>;
%template(StepAP203_Array1OfClassifiedItem) NCollection_Array1 <StepAP203_ClassifiedItem>;
%template(StepAP203_Array1OfSpecifiedItem) NCollection_Array1 <StepAP203_SpecifiedItem>;
%template(StepAP203_Array1OfChangeRequestItem) NCollection_Array1 <StepAP203_ChangeRequestItem>;
%template(StepAP203_Array1OfWorkItem) NCollection_Array1 <StepAP203_WorkItem>;
%template(StepAP203_Array1OfDateTimeItem) NCollection_Array1 <StepAP203_DateTimeItem>;
%template(StepAP203_Array1OfStartRequestItem) NCollection_Array1 <StepAP203_StartRequestItem>;
%template(StepAP203_Array1OfPersonOrganizationItem) NCollection_Array1 <StepAP203_PersonOrganizationItem>;
%template(StepAP203_Array1OfCertifiedItem) NCollection_Array1 <StepAP203_CertifiedItem>;
/* end templates declaration */

/* public enums */
/* end public enums declaration */

%nodefaultctor StepAP203_ApprovedItem;
class StepAP203_ApprovedItem : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepAP203_ApprovedItem;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepAP203_ApprovedItem;
		 StepAP203_ApprovedItem ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a kind of ApprovedItem select type 1 -> ProductDefinitionFormation from StepBasic 2 -> ProductDefinition from StepBasic 3 -> ConfigurationEffectivity from StepRepr 4 -> ConfigurationItem from StepRepr 5 -> SecurityClassification from StepBasic 6 -> ChangeRequest from StepAP203 7 -> Change from StepAP203 8 -> StartRequest from StepAP203 9 -> StartWork from StepAP203 10 -> Certification from StepBasic 11 -> Contract from StepBasic 0 else

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") ProductDefinitionFormation;
		%feature("autodoc", "	* Returns Value as ProductDefinitionFormation --or Null if another type--

	:rtype: Handle_StepBasic_ProductDefinitionFormation
") ProductDefinitionFormation;
		Handle_StepBasic_ProductDefinitionFormation ProductDefinitionFormation ();
		%feature("compactdefaultargs") ProductDefinition;
		%feature("autodoc", "	* Returns Value as ProductDefinition --or Null if another type--

	:rtype: Handle_StepBasic_ProductDefinition
") ProductDefinition;
		Handle_StepBasic_ProductDefinition ProductDefinition ();
		%feature("compactdefaultargs") ConfigurationEffectivity;
		%feature("autodoc", "	* Returns Value as ConfigurationEffectivity --or Null if another type--

	:rtype: Handle_StepRepr_ConfigurationEffectivity
") ConfigurationEffectivity;
		Handle_StepRepr_ConfigurationEffectivity ConfigurationEffectivity ();
		%feature("compactdefaultargs") ConfigurationItem;
		%feature("autodoc", "	* Returns Value as ConfigurationItem --or Null if another type--

	:rtype: Handle_StepRepr_ConfigurationItem
") ConfigurationItem;
		Handle_StepRepr_ConfigurationItem ConfigurationItem ();
		%feature("compactdefaultargs") SecurityClassification;
		%feature("autodoc", "	* Returns Value as SecurityClassification --or Null if another type--

	:rtype: Handle_StepBasic_SecurityClassification
") SecurityClassification;
		Handle_StepBasic_SecurityClassification SecurityClassification ();
		%feature("compactdefaultargs") ChangeRequest;
		%feature("autodoc", "	* Returns Value as ChangeRequest --or Null if another type--

	:rtype: Handle_StepAP203_ChangeRequest
") ChangeRequest;
		Handle_StepAP203_ChangeRequest ChangeRequest ();
		%feature("compactdefaultargs") Change;
		%feature("autodoc", "	* Returns Value as Change --or Null if another type--

	:rtype: Handle_StepAP203_Change
") Change;
		Handle_StepAP203_Change Change ();
		%feature("compactdefaultargs") StartRequest;
		%feature("autodoc", "	* Returns Value as StartRequest --or Null if another type--

	:rtype: Handle_StepAP203_StartRequest
") StartRequest;
		Handle_StepAP203_StartRequest StartRequest ();
		%feature("compactdefaultargs") StartWork;
		%feature("autodoc", "	* Returns Value as StartWork --or Null if another type--

	:rtype: Handle_StepAP203_StartWork
") StartWork;
		Handle_StepAP203_StartWork StartWork ();
		%feature("compactdefaultargs") Certification;
		%feature("autodoc", "	* Returns Value as Certification --or Null if another type--

	:rtype: Handle_StepBasic_Certification
") Certification;
		Handle_StepBasic_Certification Certification ();
		%feature("compactdefaultargs") Contract;
		%feature("autodoc", "	* Returns Value as Contract --or Null if another type--

	:rtype: Handle_StepBasic_Contract
") Contract;
		Handle_StepBasic_Contract Contract ();
};


%extend StepAP203_ApprovedItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepAP203_CcDesignApproval;
class StepAP203_CcDesignApproval : public StepBasic_ApprovalAssignment {
	public:
		%feature("compactdefaultargs") StepAP203_CcDesignApproval;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepAP203_CcDesignApproval;
		 StepAP203_CcDesignApproval ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aApprovalAssignment_AssignedApproval:
	:type aApprovalAssignment_AssignedApproval: Handle_StepBasic_Approval &
	:param aItems:
	:type aItems: Handle_StepAP203_HArray1OfApprovedItem &
	:rtype: None
") Init;
		void Init (const Handle_StepBasic_Approval & aApprovalAssignment_AssignedApproval,const Handle_StepAP203_HArray1OfApprovedItem & aItems);
		%feature("compactdefaultargs") Items;
		%feature("autodoc", "	* Returns field Items

	:rtype: Handle_StepAP203_HArray1OfApprovedItem
") Items;
		Handle_StepAP203_HArray1OfApprovedItem Items ();
		%feature("compactdefaultargs") SetItems;
		%feature("autodoc", "	* Set field Items

	:param Items:
	:type Items: Handle_StepAP203_HArray1OfApprovedItem &
	:rtype: None
") SetItems;
		void SetItems (const Handle_StepAP203_HArray1OfApprovedItem & Items);
};


%extend StepAP203_CcDesignApproval {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepAP203_CcDesignApproval(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepAP203_CcDesignApproval::Handle_StepAP203_CcDesignApproval %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepAP203_CcDesignApproval;
class Handle_StepAP203_CcDesignApproval : public Handle_StepBasic_ApprovalAssignment {

    public:
        // constructors
        Handle_StepAP203_CcDesignApproval();
        Handle_StepAP203_CcDesignApproval(const Handle_StepAP203_CcDesignApproval &aHandle);
        Handle_StepAP203_CcDesignApproval(const StepAP203_CcDesignApproval *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepAP203_CcDesignApproval DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepAP203_CcDesignApproval {
    StepAP203_CcDesignApproval* _get_reference() {
    return (StepAP203_CcDesignApproval*)$self->get();
    }
};

%extend Handle_StepAP203_CcDesignApproval {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepAP203_CcDesignApproval {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepAP203_CcDesignCertification;
class StepAP203_CcDesignCertification : public StepBasic_CertificationAssignment {
	public:
		%feature("compactdefaultargs") StepAP203_CcDesignCertification;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepAP203_CcDesignCertification;
		 StepAP203_CcDesignCertification ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aCertificationAssignment_AssignedCertification:
	:type aCertificationAssignment_AssignedCertification: Handle_StepBasic_Certification &
	:param aItems:
	:type aItems: Handle_StepAP203_HArray1OfCertifiedItem &
	:rtype: None
") Init;
		void Init (const Handle_StepBasic_Certification & aCertificationAssignment_AssignedCertification,const Handle_StepAP203_HArray1OfCertifiedItem & aItems);
		%feature("compactdefaultargs") Items;
		%feature("autodoc", "	* Returns field Items

	:rtype: Handle_StepAP203_HArray1OfCertifiedItem
") Items;
		Handle_StepAP203_HArray1OfCertifiedItem Items ();
		%feature("compactdefaultargs") SetItems;
		%feature("autodoc", "	* Set field Items

	:param Items:
	:type Items: Handle_StepAP203_HArray1OfCertifiedItem &
	:rtype: None
") SetItems;
		void SetItems (const Handle_StepAP203_HArray1OfCertifiedItem & Items);
};


%extend StepAP203_CcDesignCertification {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepAP203_CcDesignCertification(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepAP203_CcDesignCertification::Handle_StepAP203_CcDesignCertification %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepAP203_CcDesignCertification;
class Handle_StepAP203_CcDesignCertification : public Handle_StepBasic_CertificationAssignment {

    public:
        // constructors
        Handle_StepAP203_CcDesignCertification();
        Handle_StepAP203_CcDesignCertification(const Handle_StepAP203_CcDesignCertification &aHandle);
        Handle_StepAP203_CcDesignCertification(const StepAP203_CcDesignCertification *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepAP203_CcDesignCertification DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepAP203_CcDesignCertification {
    StepAP203_CcDesignCertification* _get_reference() {
    return (StepAP203_CcDesignCertification*)$self->get();
    }
};

%extend Handle_StepAP203_CcDesignCertification {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepAP203_CcDesignCertification {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepAP203_CcDesignContract;
class StepAP203_CcDesignContract : public StepBasic_ContractAssignment {
	public:
		%feature("compactdefaultargs") StepAP203_CcDesignContract;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepAP203_CcDesignContract;
		 StepAP203_CcDesignContract ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aContractAssignment_AssignedContract:
	:type aContractAssignment_AssignedContract: Handle_StepBasic_Contract &
	:param aItems:
	:type aItems: Handle_StepAP203_HArray1OfContractedItem &
	:rtype: None
") Init;
		void Init (const Handle_StepBasic_Contract & aContractAssignment_AssignedContract,const Handle_StepAP203_HArray1OfContractedItem & aItems);
		%feature("compactdefaultargs") Items;
		%feature("autodoc", "	* Returns field Items

	:rtype: Handle_StepAP203_HArray1OfContractedItem
") Items;
		Handle_StepAP203_HArray1OfContractedItem Items ();
		%feature("compactdefaultargs") SetItems;
		%feature("autodoc", "	* Set field Items

	:param Items:
	:type Items: Handle_StepAP203_HArray1OfContractedItem &
	:rtype: None
") SetItems;
		void SetItems (const Handle_StepAP203_HArray1OfContractedItem & Items);
};


%extend StepAP203_CcDesignContract {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepAP203_CcDesignContract(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepAP203_CcDesignContract::Handle_StepAP203_CcDesignContract %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepAP203_CcDesignContract;
class Handle_StepAP203_CcDesignContract : public Handle_StepBasic_ContractAssignment {

    public:
        // constructors
        Handle_StepAP203_CcDesignContract();
        Handle_StepAP203_CcDesignContract(const Handle_StepAP203_CcDesignContract &aHandle);
        Handle_StepAP203_CcDesignContract(const StepAP203_CcDesignContract *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepAP203_CcDesignContract DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepAP203_CcDesignContract {
    StepAP203_CcDesignContract* _get_reference() {
    return (StepAP203_CcDesignContract*)$self->get();
    }
};

%extend Handle_StepAP203_CcDesignContract {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepAP203_CcDesignContract {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepAP203_CcDesignDateAndTimeAssignment;
class StepAP203_CcDesignDateAndTimeAssignment : public StepBasic_DateAndTimeAssignment {
	public:
		%feature("compactdefaultargs") StepAP203_CcDesignDateAndTimeAssignment;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepAP203_CcDesignDateAndTimeAssignment;
		 StepAP203_CcDesignDateAndTimeAssignment ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aDateAndTimeAssignment_AssignedDateAndTime:
	:type aDateAndTimeAssignment_AssignedDateAndTime: Handle_StepBasic_DateAndTime &
	:param aDateAndTimeAssignment_Role:
	:type aDateAndTimeAssignment_Role: Handle_StepBasic_DateTimeRole &
	:param aItems:
	:type aItems: Handle_StepAP203_HArray1OfDateTimeItem &
	:rtype: None
") Init;
		void Init (const Handle_StepBasic_DateAndTime & aDateAndTimeAssignment_AssignedDateAndTime,const Handle_StepBasic_DateTimeRole & aDateAndTimeAssignment_Role,const Handle_StepAP203_HArray1OfDateTimeItem & aItems);
		%feature("compactdefaultargs") Items;
		%feature("autodoc", "	* Returns field Items

	:rtype: Handle_StepAP203_HArray1OfDateTimeItem
") Items;
		Handle_StepAP203_HArray1OfDateTimeItem Items ();
		%feature("compactdefaultargs") SetItems;
		%feature("autodoc", "	* Set field Items

	:param Items:
	:type Items: Handle_StepAP203_HArray1OfDateTimeItem &
	:rtype: None
") SetItems;
		void SetItems (const Handle_StepAP203_HArray1OfDateTimeItem & Items);
};


%extend StepAP203_CcDesignDateAndTimeAssignment {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepAP203_CcDesignDateAndTimeAssignment(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepAP203_CcDesignDateAndTimeAssignment::Handle_StepAP203_CcDesignDateAndTimeAssignment %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepAP203_CcDesignDateAndTimeAssignment;
class Handle_StepAP203_CcDesignDateAndTimeAssignment : public Handle_StepBasic_DateAndTimeAssignment {

    public:
        // constructors
        Handle_StepAP203_CcDesignDateAndTimeAssignment();
        Handle_StepAP203_CcDesignDateAndTimeAssignment(const Handle_StepAP203_CcDesignDateAndTimeAssignment &aHandle);
        Handle_StepAP203_CcDesignDateAndTimeAssignment(const StepAP203_CcDesignDateAndTimeAssignment *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepAP203_CcDesignDateAndTimeAssignment DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepAP203_CcDesignDateAndTimeAssignment {
    StepAP203_CcDesignDateAndTimeAssignment* _get_reference() {
    return (StepAP203_CcDesignDateAndTimeAssignment*)$self->get();
    }
};

%extend Handle_StepAP203_CcDesignDateAndTimeAssignment {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepAP203_CcDesignDateAndTimeAssignment {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepAP203_CcDesignPersonAndOrganizationAssignment;
class StepAP203_CcDesignPersonAndOrganizationAssignment : public StepBasic_PersonAndOrganizationAssignment {
	public:
		%feature("compactdefaultargs") StepAP203_CcDesignPersonAndOrganizationAssignment;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepAP203_CcDesignPersonAndOrganizationAssignment;
		 StepAP203_CcDesignPersonAndOrganizationAssignment ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aPersonAndOrganizationAssignment_AssignedPersonAndOrganization:
	:type aPersonAndOrganizationAssignment_AssignedPersonAndOrganization: Handle_StepBasic_PersonAndOrganization &
	:param aPersonAndOrganizationAssignment_Role:
	:type aPersonAndOrganizationAssignment_Role: Handle_StepBasic_PersonAndOrganizationRole &
	:param aItems:
	:type aItems: Handle_StepAP203_HArray1OfPersonOrganizationItem &
	:rtype: None
") Init;
		void Init (const Handle_StepBasic_PersonAndOrganization & aPersonAndOrganizationAssignment_AssignedPersonAndOrganization,const Handle_StepBasic_PersonAndOrganizationRole & aPersonAndOrganizationAssignment_Role,const Handle_StepAP203_HArray1OfPersonOrganizationItem & aItems);
		%feature("compactdefaultargs") Items;
		%feature("autodoc", "	* Returns field Items

	:rtype: Handle_StepAP203_HArray1OfPersonOrganizationItem
") Items;
		Handle_StepAP203_HArray1OfPersonOrganizationItem Items ();
		%feature("compactdefaultargs") SetItems;
		%feature("autodoc", "	* Set field Items

	:param Items:
	:type Items: Handle_StepAP203_HArray1OfPersonOrganizationItem &
	:rtype: None
") SetItems;
		void SetItems (const Handle_StepAP203_HArray1OfPersonOrganizationItem & Items);
};


%extend StepAP203_CcDesignPersonAndOrganizationAssignment {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepAP203_CcDesignPersonAndOrganizationAssignment(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepAP203_CcDesignPersonAndOrganizationAssignment::Handle_StepAP203_CcDesignPersonAndOrganizationAssignment %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepAP203_CcDesignPersonAndOrganizationAssignment;
class Handle_StepAP203_CcDesignPersonAndOrganizationAssignment : public Handle_StepBasic_PersonAndOrganizationAssignment {

    public:
        // constructors
        Handle_StepAP203_CcDesignPersonAndOrganizationAssignment();
        Handle_StepAP203_CcDesignPersonAndOrganizationAssignment(const Handle_StepAP203_CcDesignPersonAndOrganizationAssignment &aHandle);
        Handle_StepAP203_CcDesignPersonAndOrganizationAssignment(const StepAP203_CcDesignPersonAndOrganizationAssignment *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepAP203_CcDesignPersonAndOrganizationAssignment DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepAP203_CcDesignPersonAndOrganizationAssignment {
    StepAP203_CcDesignPersonAndOrganizationAssignment* _get_reference() {
    return (StepAP203_CcDesignPersonAndOrganizationAssignment*)$self->get();
    }
};

%extend Handle_StepAP203_CcDesignPersonAndOrganizationAssignment {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepAP203_CcDesignPersonAndOrganizationAssignment {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepAP203_CcDesignSecurityClassification;
class StepAP203_CcDesignSecurityClassification : public StepBasic_SecurityClassificationAssignment {
	public:
		%feature("compactdefaultargs") StepAP203_CcDesignSecurityClassification;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepAP203_CcDesignSecurityClassification;
		 StepAP203_CcDesignSecurityClassification ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aSecurityClassificationAssignment_AssignedSecurityClassification:
	:type aSecurityClassificationAssignment_AssignedSecurityClassification: Handle_StepBasic_SecurityClassification &
	:param aItems:
	:type aItems: Handle_StepAP203_HArray1OfClassifiedItem &
	:rtype: None
") Init;
		void Init (const Handle_StepBasic_SecurityClassification & aSecurityClassificationAssignment_AssignedSecurityClassification,const Handle_StepAP203_HArray1OfClassifiedItem & aItems);
		%feature("compactdefaultargs") Items;
		%feature("autodoc", "	* Returns field Items

	:rtype: Handle_StepAP203_HArray1OfClassifiedItem
") Items;
		Handle_StepAP203_HArray1OfClassifiedItem Items ();
		%feature("compactdefaultargs") SetItems;
		%feature("autodoc", "	* Set field Items

	:param Items:
	:type Items: Handle_StepAP203_HArray1OfClassifiedItem &
	:rtype: None
") SetItems;
		void SetItems (const Handle_StepAP203_HArray1OfClassifiedItem & Items);
};


%extend StepAP203_CcDesignSecurityClassification {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepAP203_CcDesignSecurityClassification(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepAP203_CcDesignSecurityClassification::Handle_StepAP203_CcDesignSecurityClassification %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepAP203_CcDesignSecurityClassification;
class Handle_StepAP203_CcDesignSecurityClassification : public Handle_StepBasic_SecurityClassificationAssignment {

    public:
        // constructors
        Handle_StepAP203_CcDesignSecurityClassification();
        Handle_StepAP203_CcDesignSecurityClassification(const Handle_StepAP203_CcDesignSecurityClassification &aHandle);
        Handle_StepAP203_CcDesignSecurityClassification(const StepAP203_CcDesignSecurityClassification *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepAP203_CcDesignSecurityClassification DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepAP203_CcDesignSecurityClassification {
    StepAP203_CcDesignSecurityClassification* _get_reference() {
    return (StepAP203_CcDesignSecurityClassification*)$self->get();
    }
};

%extend Handle_StepAP203_CcDesignSecurityClassification {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepAP203_CcDesignSecurityClassification {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepAP203_CcDesignSpecificationReference;
class StepAP203_CcDesignSpecificationReference : public StepBasic_DocumentReference {
	public:
		%feature("compactdefaultargs") StepAP203_CcDesignSpecificationReference;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepAP203_CcDesignSpecificationReference;
		 StepAP203_CcDesignSpecificationReference ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aDocumentReference_AssignedDocument:
	:type aDocumentReference_AssignedDocument: Handle_StepBasic_Document &
	:param aDocumentReference_Source:
	:type aDocumentReference_Source: Handle_TCollection_HAsciiString &
	:param aItems:
	:type aItems: Handle_StepAP203_HArray1OfSpecifiedItem &
	:rtype: None
") Init;
		void Init (const Handle_StepBasic_Document & aDocumentReference_AssignedDocument,const Handle_TCollection_HAsciiString & aDocumentReference_Source,const Handle_StepAP203_HArray1OfSpecifiedItem & aItems);
		%feature("compactdefaultargs") Items;
		%feature("autodoc", "	* Returns field Items

	:rtype: Handle_StepAP203_HArray1OfSpecifiedItem
") Items;
		Handle_StepAP203_HArray1OfSpecifiedItem Items ();
		%feature("compactdefaultargs") SetItems;
		%feature("autodoc", "	* Set field Items

	:param Items:
	:type Items: Handle_StepAP203_HArray1OfSpecifiedItem &
	:rtype: None
") SetItems;
		void SetItems (const Handle_StepAP203_HArray1OfSpecifiedItem & Items);
};


%extend StepAP203_CcDesignSpecificationReference {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepAP203_CcDesignSpecificationReference(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepAP203_CcDesignSpecificationReference::Handle_StepAP203_CcDesignSpecificationReference %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepAP203_CcDesignSpecificationReference;
class Handle_StepAP203_CcDesignSpecificationReference : public Handle_StepBasic_DocumentReference {

    public:
        // constructors
        Handle_StepAP203_CcDesignSpecificationReference();
        Handle_StepAP203_CcDesignSpecificationReference(const Handle_StepAP203_CcDesignSpecificationReference &aHandle);
        Handle_StepAP203_CcDesignSpecificationReference(const StepAP203_CcDesignSpecificationReference *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepAP203_CcDesignSpecificationReference DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepAP203_CcDesignSpecificationReference {
    StepAP203_CcDesignSpecificationReference* _get_reference() {
    return (StepAP203_CcDesignSpecificationReference*)$self->get();
    }
};

%extend Handle_StepAP203_CcDesignSpecificationReference {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepAP203_CcDesignSpecificationReference {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepAP203_CertifiedItem;
class StepAP203_CertifiedItem : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepAP203_CertifiedItem;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepAP203_CertifiedItem;
		 StepAP203_CertifiedItem ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a kind of CertifiedItem select type 1 -> SuppliedPartRelationship from StepRepr 0 else

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") SuppliedPartRelationship;
		%feature("autodoc", "	* Returns Value as SuppliedPartRelationship --or Null if another type--

	:rtype: Handle_StepRepr_SuppliedPartRelationship
") SuppliedPartRelationship;
		Handle_StepRepr_SuppliedPartRelationship SuppliedPartRelationship ();
};


%extend StepAP203_CertifiedItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepAP203_Change;
class StepAP203_Change : public StepBasic_ActionAssignment {
	public:
		%feature("compactdefaultargs") StepAP203_Change;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepAP203_Change;
		 StepAP203_Change ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aActionAssignment_AssignedAction:
	:type aActionAssignment_AssignedAction: Handle_StepBasic_Action &
	:param aItems:
	:type aItems: Handle_StepAP203_HArray1OfWorkItem &
	:rtype: None
") Init;
		void Init (const Handle_StepBasic_Action & aActionAssignment_AssignedAction,const Handle_StepAP203_HArray1OfWorkItem & aItems);
		%feature("compactdefaultargs") Items;
		%feature("autodoc", "	* Returns field Items

	:rtype: Handle_StepAP203_HArray1OfWorkItem
") Items;
		Handle_StepAP203_HArray1OfWorkItem Items ();
		%feature("compactdefaultargs") SetItems;
		%feature("autodoc", "	* Set field Items

	:param Items:
	:type Items: Handle_StepAP203_HArray1OfWorkItem &
	:rtype: None
") SetItems;
		void SetItems (const Handle_StepAP203_HArray1OfWorkItem & Items);
};


%extend StepAP203_Change {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepAP203_Change(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepAP203_Change::Handle_StepAP203_Change %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepAP203_Change;
class Handle_StepAP203_Change : public Handle_StepBasic_ActionAssignment {

    public:
        // constructors
        Handle_StepAP203_Change();
        Handle_StepAP203_Change(const Handle_StepAP203_Change &aHandle);
        Handle_StepAP203_Change(const StepAP203_Change *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepAP203_Change DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepAP203_Change {
    StepAP203_Change* _get_reference() {
    return (StepAP203_Change*)$self->get();
    }
};

%extend Handle_StepAP203_Change {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepAP203_Change {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepAP203_ChangeRequest;
class StepAP203_ChangeRequest : public StepBasic_ActionRequestAssignment {
	public:
		%feature("compactdefaultargs") StepAP203_ChangeRequest;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepAP203_ChangeRequest;
		 StepAP203_ChangeRequest ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aActionRequestAssignment_AssignedActionRequest:
	:type aActionRequestAssignment_AssignedActionRequest: Handle_StepBasic_VersionedActionRequest &
	:param aItems:
	:type aItems: Handle_StepAP203_HArray1OfChangeRequestItem &
	:rtype: None
") Init;
		void Init (const Handle_StepBasic_VersionedActionRequest & aActionRequestAssignment_AssignedActionRequest,const Handle_StepAP203_HArray1OfChangeRequestItem & aItems);
		%feature("compactdefaultargs") Items;
		%feature("autodoc", "	* Returns field Items

	:rtype: Handle_StepAP203_HArray1OfChangeRequestItem
") Items;
		Handle_StepAP203_HArray1OfChangeRequestItem Items ();
		%feature("compactdefaultargs") SetItems;
		%feature("autodoc", "	* Set field Items

	:param Items:
	:type Items: Handle_StepAP203_HArray1OfChangeRequestItem &
	:rtype: None
") SetItems;
		void SetItems (const Handle_StepAP203_HArray1OfChangeRequestItem & Items);
};


%extend StepAP203_ChangeRequest {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepAP203_ChangeRequest(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepAP203_ChangeRequest::Handle_StepAP203_ChangeRequest %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepAP203_ChangeRequest;
class Handle_StepAP203_ChangeRequest : public Handle_StepBasic_ActionRequestAssignment {

    public:
        // constructors
        Handle_StepAP203_ChangeRequest();
        Handle_StepAP203_ChangeRequest(const Handle_StepAP203_ChangeRequest &aHandle);
        Handle_StepAP203_ChangeRequest(const StepAP203_ChangeRequest *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepAP203_ChangeRequest DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepAP203_ChangeRequest {
    StepAP203_ChangeRequest* _get_reference() {
    return (StepAP203_ChangeRequest*)$self->get();
    }
};

%extend Handle_StepAP203_ChangeRequest {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepAP203_ChangeRequest {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepAP203_ChangeRequestItem;
class StepAP203_ChangeRequestItem : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepAP203_ChangeRequestItem;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepAP203_ChangeRequestItem;
		 StepAP203_ChangeRequestItem ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a kind of ChangeRequestItem select type 1 -> ProductDefinitionFormation from StepBasic 0 else

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") ProductDefinitionFormation;
		%feature("autodoc", "	* Returns Value as ProductDefinitionFormation --or Null if another type--

	:rtype: Handle_StepBasic_ProductDefinitionFormation
") ProductDefinitionFormation;
		Handle_StepBasic_ProductDefinitionFormation ProductDefinitionFormation ();
};


%extend StepAP203_ChangeRequestItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepAP203_ClassifiedItem;
class StepAP203_ClassifiedItem : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepAP203_ClassifiedItem;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepAP203_ClassifiedItem;
		 StepAP203_ClassifiedItem ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a kind of ClassifiedItem select type 1 -> ProductDefinitionFormation from StepBasic 2 -> AssemblyComponentUsage from StepRepr 0 else

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") ProductDefinitionFormation;
		%feature("autodoc", "	* Returns Value as ProductDefinitionFormation --or Null if another type--

	:rtype: Handle_StepBasic_ProductDefinitionFormation
") ProductDefinitionFormation;
		Handle_StepBasic_ProductDefinitionFormation ProductDefinitionFormation ();
		%feature("compactdefaultargs") AssemblyComponentUsage;
		%feature("autodoc", "	* Returns Value as AssemblyComponentUsage --or Null if another type--

	:rtype: Handle_StepRepr_AssemblyComponentUsage
") AssemblyComponentUsage;
		Handle_StepRepr_AssemblyComponentUsage AssemblyComponentUsage ();
};


%extend StepAP203_ClassifiedItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepAP203_ContractedItem;
class StepAP203_ContractedItem : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepAP203_ContractedItem;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepAP203_ContractedItem;
		 StepAP203_ContractedItem ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a kind of ContractedItem select type 1 -> ProductDefinitionFormation from StepBasic 0 else

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") ProductDefinitionFormation;
		%feature("autodoc", "	* Returns Value as ProductDefinitionFormation --or Null if another type--

	:rtype: Handle_StepBasic_ProductDefinitionFormation
") ProductDefinitionFormation;
		Handle_StepBasic_ProductDefinitionFormation ProductDefinitionFormation ();
};


%extend StepAP203_ContractedItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepAP203_DateTimeItem;
class StepAP203_DateTimeItem : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepAP203_DateTimeItem;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepAP203_DateTimeItem;
		 StepAP203_DateTimeItem ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a kind of DateTimeItem select type 1 -> ProductDefinition from StepBasic 2 -> ChangeRequest from StepAP203 3 -> StartRequest from StepAP203 4 -> Change from StepAP203 5 -> StartWork from StepAP203 6 -> ApprovalPersonOrganization from StepBasic 7 -> Contract from StepBasic 8 -> SecurityClassification from StepBasic 9 -> Certification from StepBasic 0 else

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") ProductDefinition;
		%feature("autodoc", "	* Returns Value as ProductDefinition --or Null if another type--

	:rtype: Handle_StepBasic_ProductDefinition
") ProductDefinition;
		Handle_StepBasic_ProductDefinition ProductDefinition ();
		%feature("compactdefaultargs") ChangeRequest;
		%feature("autodoc", "	* Returns Value as ChangeRequest --or Null if another type--

	:rtype: Handle_StepAP203_ChangeRequest
") ChangeRequest;
		Handle_StepAP203_ChangeRequest ChangeRequest ();
		%feature("compactdefaultargs") StartRequest;
		%feature("autodoc", "	* Returns Value as StartRequest --or Null if another type--

	:rtype: Handle_StepAP203_StartRequest
") StartRequest;
		Handle_StepAP203_StartRequest StartRequest ();
		%feature("compactdefaultargs") Change;
		%feature("autodoc", "	* Returns Value as Change --or Null if another type--

	:rtype: Handle_StepAP203_Change
") Change;
		Handle_StepAP203_Change Change ();
		%feature("compactdefaultargs") StartWork;
		%feature("autodoc", "	* Returns Value as StartWork --or Null if another type--

	:rtype: Handle_StepAP203_StartWork
") StartWork;
		Handle_StepAP203_StartWork StartWork ();
		%feature("compactdefaultargs") ApprovalPersonOrganization;
		%feature("autodoc", "	* Returns Value as ApprovalPersonOrganization --or Null if another type--

	:rtype: Handle_StepBasic_ApprovalPersonOrganization
") ApprovalPersonOrganization;
		Handle_StepBasic_ApprovalPersonOrganization ApprovalPersonOrganization ();
		%feature("compactdefaultargs") Contract;
		%feature("autodoc", "	* Returns Value as Contract --or Null if another type--

	:rtype: Handle_StepBasic_Contract
") Contract;
		Handle_StepBasic_Contract Contract ();
		%feature("compactdefaultargs") SecurityClassification;
		%feature("autodoc", "	* Returns Value as SecurityClassification --or Null if another type--

	:rtype: Handle_StepBasic_SecurityClassification
") SecurityClassification;
		Handle_StepBasic_SecurityClassification SecurityClassification ();
		%feature("compactdefaultargs") Certification;
		%feature("autodoc", "	* Returns Value as Certification --or Null if another type--

	:rtype: Handle_StepBasic_Certification
") Certification;
		Handle_StepBasic_Certification Certification ();
};


%extend StepAP203_DateTimeItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepAP203_PersonOrganizationItem;
class StepAP203_PersonOrganizationItem : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepAP203_PersonOrganizationItem;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepAP203_PersonOrganizationItem;
		 StepAP203_PersonOrganizationItem ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a kind of PersonOrganizationItem select type 1 -> Change from StepAP203 2 -> StartWork from StepAP203 3 -> ChangeRequest from StepAP203 4 -> StartRequest from StepAP203 5 -> ConfigurationItem from StepRepr 6 -> Product from StepBasic 7 -> ProductDefinitionFormation from StepBasic 8 -> ProductDefinition from StepBasic 9 -> Contract from StepBasic 10 -> SecurityClassification from StepBasic 0 else

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") Change;
		%feature("autodoc", "	* Returns Value as Change --or Null if another type--

	:rtype: Handle_StepAP203_Change
") Change;
		Handle_StepAP203_Change Change ();
		%feature("compactdefaultargs") StartWork;
		%feature("autodoc", "	* Returns Value as StartWork --or Null if another type--

	:rtype: Handle_StepAP203_StartWork
") StartWork;
		Handle_StepAP203_StartWork StartWork ();
		%feature("compactdefaultargs") ChangeRequest;
		%feature("autodoc", "	* Returns Value as ChangeRequest --or Null if another type--

	:rtype: Handle_StepAP203_ChangeRequest
") ChangeRequest;
		Handle_StepAP203_ChangeRequest ChangeRequest ();
		%feature("compactdefaultargs") StartRequest;
		%feature("autodoc", "	* Returns Value as StartRequest --or Null if another type--

	:rtype: Handle_StepAP203_StartRequest
") StartRequest;
		Handle_StepAP203_StartRequest StartRequest ();
		%feature("compactdefaultargs") ConfigurationItem;
		%feature("autodoc", "	* Returns Value as ConfigurationItem --or Null if another type--

	:rtype: Handle_StepRepr_ConfigurationItem
") ConfigurationItem;
		Handle_StepRepr_ConfigurationItem ConfigurationItem ();
		%feature("compactdefaultargs") Product;
		%feature("autodoc", "	* Returns Value as Product --or Null if another type--

	:rtype: Handle_StepBasic_Product
") Product;
		Handle_StepBasic_Product Product ();
		%feature("compactdefaultargs") ProductDefinitionFormation;
		%feature("autodoc", "	* Returns Value as ProductDefinitionFormation --or Null if another type--

	:rtype: Handle_StepBasic_ProductDefinitionFormation
") ProductDefinitionFormation;
		Handle_StepBasic_ProductDefinitionFormation ProductDefinitionFormation ();
		%feature("compactdefaultargs") ProductDefinition;
		%feature("autodoc", "	* Returns Value as ProductDefinition --or Null if another type--

	:rtype: Handle_StepBasic_ProductDefinition
") ProductDefinition;
		Handle_StepBasic_ProductDefinition ProductDefinition ();
		%feature("compactdefaultargs") Contract;
		%feature("autodoc", "	* Returns Value as Contract --or Null if another type--

	:rtype: Handle_StepBasic_Contract
") Contract;
		Handle_StepBasic_Contract Contract ();
		%feature("compactdefaultargs") SecurityClassification;
		%feature("autodoc", "	* Returns Value as SecurityClassification --or Null if another type--

	:rtype: Handle_StepBasic_SecurityClassification
") SecurityClassification;
		Handle_StepBasic_SecurityClassification SecurityClassification ();
};


%extend StepAP203_PersonOrganizationItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepAP203_SpecifiedItem;
class StepAP203_SpecifiedItem : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepAP203_SpecifiedItem;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepAP203_SpecifiedItem;
		 StepAP203_SpecifiedItem ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a kind of SpecifiedItem select type 1 -> ProductDefinition from StepBasic 2 -> ShapeAspect from StepRepr 0 else

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") ProductDefinition;
		%feature("autodoc", "	* Returns Value as ProductDefinition --or Null if another type--

	:rtype: Handle_StepBasic_ProductDefinition
") ProductDefinition;
		Handle_StepBasic_ProductDefinition ProductDefinition ();
		%feature("compactdefaultargs") ShapeAspect;
		%feature("autodoc", "	* Returns Value as ShapeAspect --or Null if another type--

	:rtype: Handle_StepRepr_ShapeAspect
") ShapeAspect;
		Handle_StepRepr_ShapeAspect ShapeAspect ();
};


%extend StepAP203_SpecifiedItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepAP203_StartRequest;
class StepAP203_StartRequest : public StepBasic_ActionRequestAssignment {
	public:
		%feature("compactdefaultargs") StepAP203_StartRequest;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepAP203_StartRequest;
		 StepAP203_StartRequest ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aActionRequestAssignment_AssignedActionRequest:
	:type aActionRequestAssignment_AssignedActionRequest: Handle_StepBasic_VersionedActionRequest &
	:param aItems:
	:type aItems: Handle_StepAP203_HArray1OfStartRequestItem &
	:rtype: None
") Init;
		void Init (const Handle_StepBasic_VersionedActionRequest & aActionRequestAssignment_AssignedActionRequest,const Handle_StepAP203_HArray1OfStartRequestItem & aItems);
		%feature("compactdefaultargs") Items;
		%feature("autodoc", "	* Returns field Items

	:rtype: Handle_StepAP203_HArray1OfStartRequestItem
") Items;
		Handle_StepAP203_HArray1OfStartRequestItem Items ();
		%feature("compactdefaultargs") SetItems;
		%feature("autodoc", "	* Set field Items

	:param Items:
	:type Items: Handle_StepAP203_HArray1OfStartRequestItem &
	:rtype: None
") SetItems;
		void SetItems (const Handle_StepAP203_HArray1OfStartRequestItem & Items);
};


%extend StepAP203_StartRequest {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepAP203_StartRequest(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepAP203_StartRequest::Handle_StepAP203_StartRequest %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepAP203_StartRequest;
class Handle_StepAP203_StartRequest : public Handle_StepBasic_ActionRequestAssignment {

    public:
        // constructors
        Handle_StepAP203_StartRequest();
        Handle_StepAP203_StartRequest(const Handle_StepAP203_StartRequest &aHandle);
        Handle_StepAP203_StartRequest(const StepAP203_StartRequest *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepAP203_StartRequest DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepAP203_StartRequest {
    StepAP203_StartRequest* _get_reference() {
    return (StepAP203_StartRequest*)$self->get();
    }
};

%extend Handle_StepAP203_StartRequest {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepAP203_StartRequest {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepAP203_StartRequestItem;
class StepAP203_StartRequestItem : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepAP203_StartRequestItem;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepAP203_StartRequestItem;
		 StepAP203_StartRequestItem ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a kind of StartRequestItem select type 1 -> ProductDefinitionFormation from StepBasic 0 else

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") ProductDefinitionFormation;
		%feature("autodoc", "	* Returns Value as ProductDefinitionFormation --or Null if another type--

	:rtype: Handle_StepBasic_ProductDefinitionFormation
") ProductDefinitionFormation;
		Handle_StepBasic_ProductDefinitionFormation ProductDefinitionFormation ();
};


%extend StepAP203_StartRequestItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepAP203_StartWork;
class StepAP203_StartWork : public StepBasic_ActionAssignment {
	public:
		%feature("compactdefaultargs") StepAP203_StartWork;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepAP203_StartWork;
		 StepAP203_StartWork ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields --own and inherited--

	:param aActionAssignment_AssignedAction:
	:type aActionAssignment_AssignedAction: Handle_StepBasic_Action &
	:param aItems:
	:type aItems: Handle_StepAP203_HArray1OfWorkItem &
	:rtype: None
") Init;
		void Init (const Handle_StepBasic_Action & aActionAssignment_AssignedAction,const Handle_StepAP203_HArray1OfWorkItem & aItems);
		%feature("compactdefaultargs") Items;
		%feature("autodoc", "	* Returns field Items

	:rtype: Handle_StepAP203_HArray1OfWorkItem
") Items;
		Handle_StepAP203_HArray1OfWorkItem Items ();
		%feature("compactdefaultargs") SetItems;
		%feature("autodoc", "	* Set field Items

	:param Items:
	:type Items: Handle_StepAP203_HArray1OfWorkItem &
	:rtype: None
") SetItems;
		void SetItems (const Handle_StepAP203_HArray1OfWorkItem & Items);
};


%extend StepAP203_StartWork {
	%pythoncode {
		def GetHandle(self):
		    try:
		        return self.thisHandle
		    except:
		        self.thisHandle = Handle_StepAP203_StartWork(self)
		        self.thisown = False
		        return self.thisHandle
	}
};

%pythonappend Handle_StepAP203_StartWork::Handle_StepAP203_StartWork %{
    # register the handle in the base object
    if len(args) > 0:
        register_handle(self, args[0])
%}

%nodefaultctor Handle_StepAP203_StartWork;
class Handle_StepAP203_StartWork : public Handle_StepBasic_ActionAssignment {

    public:
        // constructors
        Handle_StepAP203_StartWork();
        Handle_StepAP203_StartWork(const Handle_StepAP203_StartWork &aHandle);
        Handle_StepAP203_StartWork(const StepAP203_StartWork *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_StepAP203_StartWork DownCast(const Handle_Standard_Transient &AnObject);

};

%extend Handle_StepAP203_StartWork {
    StepAP203_StartWork* _get_reference() {
    return (StepAP203_StartWork*)$self->get();
    }
};

%extend Handle_StepAP203_StartWork {
     %pythoncode {
         def GetObject(self):
             obj = self._get_reference()
             register_handle(self, obj)
             return obj
     }
};

%extend StepAP203_StartWork {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepAP203_WorkItem;
class StepAP203_WorkItem : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") StepAP203_WorkItem;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepAP203_WorkItem;
		 StepAP203_WorkItem ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a kind of WorkItem select type 1 -> ProductDefinitionFormation from StepBasic 0 else

	:param ent:
	:type ent: Handle_Standard_Transient &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const Handle_Standard_Transient & ent);
		%feature("compactdefaultargs") ProductDefinitionFormation;
		%feature("autodoc", "	* Returns Value as ProductDefinitionFormation --or Null if another type--

	:rtype: Handle_StepBasic_ProductDefinitionFormation
") ProductDefinitionFormation;
		Handle_StepBasic_ProductDefinitionFormation ProductDefinitionFormation ();
};


%extend StepAP203_WorkItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
