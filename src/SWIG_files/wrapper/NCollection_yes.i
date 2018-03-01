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

%include "NCollection_DefineAlloc.hxx";
%include "NCollection_TListIterator.hxx";
%include "NCollection_StlIterator.hxx";
%include "NCollection_Array1.hxx";
%include "NCollection_Array2.hxx";

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
/* end templates declaration */

/* public enums */
/* end public enums declaration */

%nodefaultctor NCollection_BaseList;
class NCollection_BaseList
{
public:
  class Iterator
  {
  public:
    // ******** Empty constructor
    Iterator (void) :
      myCurrent (NULL),
      myPrevious(NULL);
    // ******** Constructor with initialisation
    Iterator  (const NCollection_BaseList& theList) :
      myCurrent (theList.myFirst),
      myPrevious(NULL);
    // ******** Initialisation
    void Init (const NCollection_BaseList& theList);
    // ******** Initialisation
    void Initialize (const NCollection_BaseList& theList);
    Standard_Boolean More (void) const;
    // ******** Assignment operator
    Iterator& operator= (const Iterator& theIt);
    // ******** Comparison operator
    Standard_Boolean operator== (const Iterator& theIt) const;
    Standard_Boolean IsEqual (const Iterator& theOther) const;
  };
  // ---------- PUBLIC METHODS ------------
  // ******** Extent
  // Purpose: Returns the number of nodes in the list
  Standard_Integer Extent (void) const;
  Standard_Boolean IsEmpty (void) const;
  const Handle_NCollection_BaseAllocator& Allocator() const;
  virtual ~NCollection_BaseList (void);
};

template <class TheItemType>
class NCollection_List : public NCollection_BaseList
{
public:
  //! STL-compliant typedef for value type
  typedef TheItemType value_type;

public:
  typedef NCollection_TListNode<TheItemType>     ListNode;
  typedef NCollection_TListIterator<TheItemType> Iterator;

  //! Shorthand for a regular iterator type.
  typedef NCollection_StlIterator<std::forward_iterator_tag, Iterator, TheItemType, false> iterator;

  //! Shorthand for a constant iterator type.
  typedef NCollection_StlIterator<std::forward_iterator_tag, Iterator, TheItemType, true> const_iterator;

  //! Returns an iterator pointing to the first element in the list.
  iterator begin();

  //! Returns an iterator referring to the past-the-end element in the list.
  iterator end();

  //! Returns a const iterator pointing to the first element in the list.
  const_iterator cbegin() const;

  //! Returns a const iterator referring to the past-the-end element in the list.
  const_iterator cend() const;

  //! Constructor
  NCollection_List(const Handle_NCollection_BaseAllocator& theAllocator=0L) :
    NCollection_BaseList(theAllocator);

  //! Copy constructor
  NCollection_List (const NCollection_List& theOther) :
    NCollection_BaseList(theOther.myAllocator);

  //! Size - Number of items
  Standard_Integer Size (void) const;

  //! Replace this list by the items of another list (theOther parameter).
  //! This method does not change the internal allocator.
  NCollection_List& Assign (const NCollection_List& theOther);

  //! Replacement operator
  NCollection_List& operator= (const NCollection_List& theOther);
  //! Clear this list
  void Clear (const Handle_NCollection_BaseAllocator& theAllocator=0L);

  //! First item
  const TheItemType& First (void) const;

  //! First item (non-const)
  TheItemType& First (void);

  //! Last item
  const TheItemType& Last (void) const;

  //! Last item (non-const)
  TheItemType& Last (void);

  //! Append one item at the end
  TheItemType& Append (const TheItemType& theItem);

  //! Append one item at the end and output iterator
  //!   pointing at the appended item
  void Append (const TheItemType& theItem, Iterator& theIter);

  //! Append another list at the end
  void Append (NCollection_List& theOther);

  //! Prepend one item at the beginning
  TheItemType& Prepend (const TheItemType& theItem);

  //! Prepend another list at the beginning
  void Prepend (NCollection_List& theOther);

  //! RemoveFirst item
  void RemoveFirst (void);
  void Remove (Iterator& theIter);
  //! InsertBefore
  TheItemType& InsertBefore (const TheItemType& theItem,
                             Iterator& theIter);

  //! InsertBefore
  void InsertBefore (NCollection_List& theOther,
                     Iterator& theIter);
  //! InsertAfter
  TheItemType& InsertAfter (const TheItemType& theItem,
                            Iterator& theIter);
  //! InsertAfter
  void InsertAfter (NCollection_List& theOther,
                    Iterator& theIter);

  //! Reverse the list
  void Reverse ();

  //! Destructor - clears the List
  virtual ~NCollection_List (void);
};
