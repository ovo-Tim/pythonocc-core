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

%define APPSTDDOCSTRING
"AppStd module, see official documentation at
https://www.opencascade.com/doc/occt-7.4.0/refman/html/package_AppStd.html"
%enddef
%module (package="OCC.Core", docstring=APPSTDDOCSTRING) AppStd

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


%include AppStd_headers.i

/* public enums */
/* end public enums declaration */

/* handles */
%wrap_handle(AppStd_Application)
/* end handles declaration */

/* templates */
/* end templates declaration */

/* typedefs */
/* end typedefs declaration */

%nodefaultctor AppStd_Application;
class AppStd_Application : public TDocStd_Application {
	public:
		%feature("compactdefaultargs") ResourcesName;
		%feature("autodoc", "	* returns the file name which contains application resources

	:rtype: char *
") ResourcesName;
		const char * ResourcesName ();
};


%make_alias(AppStd_Application)

%extend AppStd_Application {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
/* harray1 class */
/* harray2 class */
/* harray2 class */
