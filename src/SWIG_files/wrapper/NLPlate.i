/*
Copyright 2008-2019 Thomas Paviot (tpaviot@gmail.com)

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

/*
This file was automatically generated using the pythonocc_generator, see
https://github.com/tpaviot/pythonocc-generator.

This file is platform independant, but was generated under the following
conditions:

- operating system : debian Linux 4.15.0-66-generic
- occt version targeted : 7.4.0
*/

%define NLPLATEDOCSTRING
"NLPlate module, see official documentation at
https://www.opencascade.com/doc/occt-7.4.0/refman/html/package_NLPlate.html"
%enddef
%module (package="OCC.Core", docstring=NLPLATEDOCSTRING) NLPlate

#pragma SWIG nowarn=504,325,503,520,350,351,383,389,394,395, 404

%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%include ../common/CommonIncludes.i
%include ../common/ExceptionCatcher.i
%include ../common/FunctionTransformers.i
%include ../common/Operators.i
%include ../common/OccHandle.i


%include NLPlate_headers.i

/* public enums */
/* end public enums declaration */

/* handles */
%wrap_handle(NLPlate_HGPPConstraint)
%wrap_handle(NLPlate_HPG0Constraint)
%wrap_handle(NLPlate_HPG1Constraint)
%wrap_handle(NLPlate_HPG0G1Constraint)
%wrap_handle(NLPlate_HPG2Constraint)
%wrap_handle(NLPlate_HPG0G2Constraint)
%wrap_handle(NLPlate_HPG3Constraint)
%wrap_handle(NLPlate_HPG0G3Constraint)
/* end handles declaration */

/* templates */
%template(NLPlate_StackOfPlate) NCollection_List <Plate_Plate>;
%template(NLPlate_ListIteratorOfStackOfPlate) NCollection_TListIterator<Plate_Plate>;
%template(NLPlate_SequenceOfHGPPConstraint) NCollection_Sequence <opencascade::handle <NLPlate_HGPPConstraint>>;
/* end templates declaration */

/* typedefs */
typedef NCollection_List <Plate_Plate> NLPlate_StackOfPlate;
typedef NCollection_List <Plate_Plate>::Iterator NLPlate_ListIteratorOfStackOfPlate;
typedef NCollection_Sequence <opencascade::handle <NLPlate_HGPPConstraint>> NLPlate_SequenceOfHGPPConstraint;
/* end typedefs declaration */

%nodefaultctor NLPlate_HGPPConstraint;
class NLPlate_HGPPConstraint : public Standard_Transient {
	public:
		%feature("compactdefaultargs") ActiveOrder;
		%feature("autodoc", "	:rtype: int
") ActiveOrder;
		virtual Standard_Integer ActiveOrder ();
		%feature("compactdefaultargs") G0Criterion;
		%feature("autodoc", "	:rtype: float
") G0Criterion;
		virtual Standard_Real G0Criterion ();
		%feature("compactdefaultargs") G0Target;
		%feature("autodoc", "	:rtype: gp_XYZ
") G0Target;
		virtual const gp_XYZ  G0Target ();
		%feature("compactdefaultargs") G1Criterion;
		%feature("autodoc", "	:rtype: float
") G1Criterion;
		virtual Standard_Real G1Criterion ();
		%feature("compactdefaultargs") G1Target;
		%feature("autodoc", "	:rtype: Plate_D1
") G1Target;
		virtual const Plate_D1 & G1Target ();
		%feature("compactdefaultargs") G2Criterion;
		%feature("autodoc", "	:rtype: float
") G2Criterion;
		virtual Standard_Real G2Criterion ();
		%feature("compactdefaultargs") G2Target;
		%feature("autodoc", "	:rtype: Plate_D2
") G2Target;
		virtual const Plate_D2 & G2Target ();
		%feature("compactdefaultargs") G3Criterion;
		%feature("autodoc", "	:rtype: float
") G3Criterion;
		virtual Standard_Real G3Criterion ();
		%feature("compactdefaultargs") G3Target;
		%feature("autodoc", "	:rtype: Plate_D3
") G3Target;
		virtual const Plate_D3 & G3Target ();
		%feature("compactdefaultargs") IncrementalLoadAllowed;
		%feature("autodoc", "	:rtype: bool
") IncrementalLoadAllowed;
		virtual Standard_Boolean IncrementalLoadAllowed ();
		%feature("compactdefaultargs") IsG0;
		%feature("autodoc", "	:rtype: bool
") IsG0;
		virtual Standard_Boolean IsG0 ();
		%feature("compactdefaultargs") Orientation;
		%feature("autodoc", "	:rtype: int
") Orientation;
		virtual Standard_Integer Orientation ();
		%feature("compactdefaultargs") SetActiveOrder;
		%feature("autodoc", "	:param ActiveOrder:
	:type ActiveOrder: int
	:rtype: void
") SetActiveOrder;
		virtual void SetActiveOrder (const Standard_Integer ActiveOrder);
		%feature("compactdefaultargs") SetG0Criterion;
		%feature("autodoc", "	:param TolDist:
	:type TolDist: float
	:rtype: void
") SetG0Criterion;
		virtual void SetG0Criterion (const Standard_Real TolDist);
		%feature("compactdefaultargs") SetG1Criterion;
		%feature("autodoc", "	:param TolAng:
	:type TolAng: float
	:rtype: void
") SetG1Criterion;
		virtual void SetG1Criterion (const Standard_Real TolAng);
		%feature("compactdefaultargs") SetG2Criterion;
		%feature("autodoc", "	:param TolCurv:
	:type TolCurv: float
	:rtype: void
") SetG2Criterion;
		virtual void SetG2Criterion (const Standard_Real TolCurv);
		%feature("compactdefaultargs") SetG3Criterion;
		%feature("autodoc", "	:param TolG3:
	:type TolG3: float
	:rtype: void
") SetG3Criterion;
		virtual void SetG3Criterion (const Standard_Real TolG3);
		%feature("compactdefaultargs") SetIncrementalLoadAllowed;
		%feature("autodoc", "	:param ILA:
	:type ILA: bool
	:rtype: void
") SetIncrementalLoadAllowed;
		virtual void SetIncrementalLoadAllowed (const Standard_Boolean ILA);
		%feature("compactdefaultargs") SetOrientation;
		%feature("autodoc", "	:param Orient: default value is 0
	:type Orient: int
	:rtype: void
") SetOrientation;
		virtual void SetOrientation (const Standard_Integer Orient = 0);
		%feature("compactdefaultargs") SetUV;
		%feature("autodoc", "	:param UV:
	:type UV: gp_XY
	:rtype: void
") SetUV;
		virtual void SetUV (const gp_XY & UV);
		%feature("compactdefaultargs") SetUVFreeSliding;
		%feature("autodoc", "	:param UVFree:
	:type UVFree: bool
	:rtype: void
") SetUVFreeSliding;
		virtual void SetUVFreeSliding (const Standard_Boolean UVFree);
		%feature("compactdefaultargs") UV;
		%feature("autodoc", "	:rtype: gp_XY
") UV;
		virtual const gp_XY  UV ();
		%feature("compactdefaultargs") UVFreeSliding;
		%feature("autodoc", "	:rtype: bool
") UVFreeSliding;
		virtual Standard_Boolean UVFreeSliding ();
};


%make_alias(NLPlate_HGPPConstraint)

%extend NLPlate_HGPPConstraint {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor NLPlate_NLPlate;
class NLPlate_NLPlate {
	public:
		%feature("compactdefaultargs") ConstraintsSliding;
		%feature("autodoc", "	:param NbIterations: default value is 3
	:type NbIterations: int
	:rtype: None
") ConstraintsSliding;
		void ConstraintsSliding (const Standard_Integer NbIterations = 3);
		%feature("compactdefaultargs") Continuity;
		%feature("autodoc", "	:rtype: int
") Continuity;
		Standard_Integer Continuity ();
		%feature("compactdefaultargs") Evaluate;
		%feature("autodoc", "	:param point2d:
	:type point2d: gp_XY
	:rtype: gp_XYZ
") Evaluate;
		gp_XYZ Evaluate (const gp_XY & point2d);
		%feature("compactdefaultargs") EvaluateDerivative;
		%feature("autodoc", "	:param point2d:
	:type point2d: gp_XY
	:param iu:
	:type iu: int
	:param iv:
	:type iv: int
	:rtype: gp_XYZ
") EvaluateDerivative;
		gp_XYZ EvaluateDerivative (const gp_XY & point2d,const Standard_Integer iu,const Standard_Integer iv);
		%feature("compactdefaultargs") IncrementalSolve;
		%feature("autodoc", "	:param ord: default value is 2
	:type ord: int
	:param InitialConsraintOrder: default value is 1
	:type InitialConsraintOrder: int
	:param NbIncrements: default value is 4
	:type NbIncrements: int
	:param UVSliding: default value is Standard_False
	:type UVSliding: bool
	:rtype: None
") IncrementalSolve;
		void IncrementalSolve (const Standard_Integer ord = 2,const Standard_Integer InitialConsraintOrder = 1,const Standard_Integer NbIncrements = 4,const Standard_Boolean UVSliding = Standard_False);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* reset the Plate in the initial state ( same as after Create((Surface))

	:rtype: None
") Init;
		void Init ();
		%feature("compactdefaultargs") IsDone;
		%feature("autodoc", "	* returns True if all has been correctly done.

	:rtype: bool
") IsDone;
		Standard_Boolean IsDone ();
		%feature("compactdefaultargs") Load;
		%feature("autodoc", "	:param GConst:
	:type GConst: opencascade::handle<NLPlate_HGPPConstraint> &
	:rtype: None
") Load;
		void Load (const opencascade::handle<NLPlate_HGPPConstraint> & GConst);
		%feature("compactdefaultargs") MaxActiveConstraintOrder;
		%feature("autodoc", "	:rtype: int
") MaxActiveConstraintOrder;
		Standard_Integer MaxActiveConstraintOrder ();
		%feature("compactdefaultargs") NLPlate_NLPlate;
		%feature("autodoc", "	:param InitialSurface:
	:type InitialSurface: opencascade::handle<Geom_Surface> &
	:rtype: None
") NLPlate_NLPlate;
		 NLPlate_NLPlate (const opencascade::handle<Geom_Surface> & InitialSurface);
		%feature("compactdefaultargs") Solve;
		%feature("autodoc", "	:param ord: default value is 2
	:type ord: int
	:param InitialConsraintOrder: default value is 1
	:type InitialConsraintOrder: int
	:rtype: None
") Solve;
		void Solve (const Standard_Integer ord = 2,const Standard_Integer InitialConsraintOrder = 1);
		%feature("compactdefaultargs") Solve2;
		%feature("autodoc", "	:param ord: default value is 2
	:type ord: int
	:param InitialConsraintOrder: default value is 1
	:type InitialConsraintOrder: int
	:rtype: None
") Solve2;
		void Solve2 (const Standard_Integer ord = 2,const Standard_Integer InitialConsraintOrder = 1);
		%feature("compactdefaultargs") destroy;
		%feature("autodoc", "	:rtype: None
") destroy;
		void destroy ();
};


%extend NLPlate_NLPlate {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor NLPlate_HPG0Constraint;
class NLPlate_HPG0Constraint : public NLPlate_HGPPConstraint {
	public:
		%feature("compactdefaultargs") ActiveOrder;
		%feature("autodoc", "	:rtype: int
") ActiveOrder;
		virtual Standard_Integer ActiveOrder ();
		%feature("compactdefaultargs") G0Target;
		%feature("autodoc", "	:rtype: gp_XYZ
") G0Target;
		virtual const gp_XYZ  G0Target ();
		%feature("compactdefaultargs") IncrementalLoadAllowed;
		%feature("autodoc", "	:rtype: bool
") IncrementalLoadAllowed;
		virtual Standard_Boolean IncrementalLoadAllowed ();
		%feature("compactdefaultargs") IsG0;
		%feature("autodoc", "	:rtype: bool
") IsG0;
		virtual Standard_Boolean IsG0 ();
		%feature("compactdefaultargs") NLPlate_HPG0Constraint;
		%feature("autodoc", "	:param UV:
	:type UV: gp_XY
	:param Value:
	:type Value: gp_XYZ
	:rtype: None
") NLPlate_HPG0Constraint;
		 NLPlate_HPG0Constraint (const gp_XY & UV,const gp_XYZ & Value);
		%feature("compactdefaultargs") SetIncrementalLoadAllowed;
		%feature("autodoc", "	:param ILA:
	:type ILA: bool
	:rtype: void
") SetIncrementalLoadAllowed;
		virtual void SetIncrementalLoadAllowed (const Standard_Boolean ILA);
		%feature("compactdefaultargs") SetUVFreeSliding;
		%feature("autodoc", "	:param UVFree:
	:type UVFree: bool
	:rtype: void
") SetUVFreeSliding;
		virtual void SetUVFreeSliding (const Standard_Boolean UVFree);
		%feature("compactdefaultargs") UVFreeSliding;
		%feature("autodoc", "	:rtype: bool
") UVFreeSliding;
		virtual Standard_Boolean UVFreeSliding ();
};


%make_alias(NLPlate_HPG0Constraint)

%extend NLPlate_HPG0Constraint {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor NLPlate_HPG1Constraint;
class NLPlate_HPG1Constraint : public NLPlate_HGPPConstraint {
	public:
		%feature("compactdefaultargs") ActiveOrder;
		%feature("autodoc", "	:rtype: int
") ActiveOrder;
		virtual Standard_Integer ActiveOrder ();
		%feature("compactdefaultargs") G1Target;
		%feature("autodoc", "	:rtype: Plate_D1
") G1Target;
		virtual const Plate_D1 & G1Target ();
		%feature("compactdefaultargs") IncrementalLoadAllowed;
		%feature("autodoc", "	:rtype: bool
") IncrementalLoadAllowed;
		virtual Standard_Boolean IncrementalLoadAllowed ();
		%feature("compactdefaultargs") IsG0;
		%feature("autodoc", "	:rtype: bool
") IsG0;
		virtual Standard_Boolean IsG0 ();
		%feature("compactdefaultargs") NLPlate_HPG1Constraint;
		%feature("autodoc", "	:param UV:
	:type UV: gp_XY
	:param D1T:
	:type D1T: Plate_D1 &
	:rtype: None
") NLPlate_HPG1Constraint;
		 NLPlate_HPG1Constraint (const gp_XY & UV,const Plate_D1 & D1T);
		%feature("compactdefaultargs") Orientation;
		%feature("autodoc", "	:rtype: int
") Orientation;
		virtual Standard_Integer Orientation ();
		%feature("compactdefaultargs") SetIncrementalLoadAllowed;
		%feature("autodoc", "	:param ILA:
	:type ILA: bool
	:rtype: void
") SetIncrementalLoadAllowed;
		virtual void SetIncrementalLoadAllowed (const Standard_Boolean ILA);
		%feature("compactdefaultargs") SetOrientation;
		%feature("autodoc", "	:param Orient: default value is 0
	:type Orient: int
	:rtype: void
") SetOrientation;
		virtual void SetOrientation (const Standard_Integer Orient = 0);
};


%make_alias(NLPlate_HPG1Constraint)

%extend NLPlate_HPG1Constraint {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor NLPlate_HPG0G1Constraint;
class NLPlate_HPG0G1Constraint : public NLPlate_HPG0Constraint {
	public:
		%feature("compactdefaultargs") ActiveOrder;
		%feature("autodoc", "	:rtype: int
") ActiveOrder;
		virtual Standard_Integer ActiveOrder ();
		%feature("compactdefaultargs") G1Target;
		%feature("autodoc", "	:rtype: Plate_D1
") G1Target;
		virtual const Plate_D1 & G1Target ();
		%feature("compactdefaultargs") NLPlate_HPG0G1Constraint;
		%feature("autodoc", "	:param UV:
	:type UV: gp_XY
	:param Value:
	:type Value: gp_XYZ
	:param D1T:
	:type D1T: Plate_D1 &
	:rtype: None
") NLPlate_HPG0G1Constraint;
		 NLPlate_HPG0G1Constraint (const gp_XY & UV,const gp_XYZ & Value,const Plate_D1 & D1T);
		%feature("compactdefaultargs") Orientation;
		%feature("autodoc", "	:rtype: int
") Orientation;
		virtual Standard_Integer Orientation ();
		%feature("compactdefaultargs") SetOrientation;
		%feature("autodoc", "	:param Orient: default value is 0
	:type Orient: int
	:rtype: void
") SetOrientation;
		virtual void SetOrientation (const Standard_Integer Orient = 0);
};


%make_alias(NLPlate_HPG0G1Constraint)

%extend NLPlate_HPG0G1Constraint {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor NLPlate_HPG2Constraint;
class NLPlate_HPG2Constraint : public NLPlate_HPG1Constraint {
	public:
		%feature("compactdefaultargs") ActiveOrder;
		%feature("autodoc", "	:rtype: int
") ActiveOrder;
		virtual Standard_Integer ActiveOrder ();
		%feature("compactdefaultargs") G2Target;
		%feature("autodoc", "	:rtype: Plate_D2
") G2Target;
		virtual const Plate_D2 & G2Target ();
		%feature("compactdefaultargs") NLPlate_HPG2Constraint;
		%feature("autodoc", "	:param UV:
	:type UV: gp_XY
	:param D1T:
	:type D1T: Plate_D1 &
	:param D2T:
	:type D2T: Plate_D2 &
	:rtype: None
") NLPlate_HPG2Constraint;
		 NLPlate_HPG2Constraint (const gp_XY & UV,const Plate_D1 & D1T,const Plate_D2 & D2T);
};


%make_alias(NLPlate_HPG2Constraint)

%extend NLPlate_HPG2Constraint {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor NLPlate_HPG0G2Constraint;
class NLPlate_HPG0G2Constraint : public NLPlate_HPG0G1Constraint {
	public:
		%feature("compactdefaultargs") ActiveOrder;
		%feature("autodoc", "	:rtype: int
") ActiveOrder;
		virtual Standard_Integer ActiveOrder ();
		%feature("compactdefaultargs") G2Target;
		%feature("autodoc", "	:rtype: Plate_D2
") G2Target;
		virtual const Plate_D2 & G2Target ();
		%feature("compactdefaultargs") NLPlate_HPG0G2Constraint;
		%feature("autodoc", "	:param UV:
	:type UV: gp_XY
	:param Value:
	:type Value: gp_XYZ
	:param D1T:
	:type D1T: Plate_D1 &
	:param D2T:
	:type D2T: Plate_D2 &
	:rtype: None
") NLPlate_HPG0G2Constraint;
		 NLPlate_HPG0G2Constraint (const gp_XY & UV,const gp_XYZ & Value,const Plate_D1 & D1T,const Plate_D2 & D2T);
};


%make_alias(NLPlate_HPG0G2Constraint)

%extend NLPlate_HPG0G2Constraint {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor NLPlate_HPG3Constraint;
class NLPlate_HPG3Constraint : public NLPlate_HPG2Constraint {
	public:
		%feature("compactdefaultargs") ActiveOrder;
		%feature("autodoc", "	:rtype: int
") ActiveOrder;
		virtual Standard_Integer ActiveOrder ();
		%feature("compactdefaultargs") G3Target;
		%feature("autodoc", "	:rtype: Plate_D3
") G3Target;
		virtual const Plate_D3 & G3Target ();
		%feature("compactdefaultargs") NLPlate_HPG3Constraint;
		%feature("autodoc", "	:param UV:
	:type UV: gp_XY
	:param D1T:
	:type D1T: Plate_D1 &
	:param D2T:
	:type D2T: Plate_D2 &
	:param D3T:
	:type D3T: Plate_D3 &
	:rtype: None
") NLPlate_HPG3Constraint;
		 NLPlate_HPG3Constraint (const gp_XY & UV,const Plate_D1 & D1T,const Plate_D2 & D2T,const Plate_D3 & D3T);
};


%make_alias(NLPlate_HPG3Constraint)

%extend NLPlate_HPG3Constraint {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor NLPlate_HPG0G3Constraint;
class NLPlate_HPG0G3Constraint : public NLPlate_HPG0G2Constraint {
	public:
		%feature("compactdefaultargs") ActiveOrder;
		%feature("autodoc", "	:rtype: int
") ActiveOrder;
		virtual Standard_Integer ActiveOrder ();
		%feature("compactdefaultargs") G3Target;
		%feature("autodoc", "	:rtype: Plate_D3
") G3Target;
		virtual const Plate_D3 & G3Target ();
		%feature("compactdefaultargs") NLPlate_HPG0G3Constraint;
		%feature("autodoc", "	:param UV:
	:type UV: gp_XY
	:param Value:
	:type Value: gp_XYZ
	:param D1T:
	:type D1T: Plate_D1 &
	:param D2T:
	:type D2T: Plate_D2 &
	:param D3T:
	:type D3T: Plate_D3 &
	:rtype: None
") NLPlate_HPG0G3Constraint;
		 NLPlate_HPG0G3Constraint (const gp_XY & UV,const gp_XYZ & Value,const Plate_D1 & D1T,const Plate_D2 & D2T,const Plate_D3 & D3T);
};


%make_alias(NLPlate_HPG0G3Constraint)

%extend NLPlate_HPG0G3Constraint {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
/* harray1 class */
/* harray2 class */
/* harray2 class */
