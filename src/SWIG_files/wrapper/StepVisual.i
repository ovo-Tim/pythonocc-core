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

%define STEPVISUALDOCSTRING
"StepVisual module, see official documentation at
https://www.opencascade.com/doc/occt-7.4.0/refman/html/package_StepVisual.html"
%enddef
%module (package="OCC.Core", docstring=STEPVISUALDOCSTRING) StepVisual

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


%include StepVisual_headers.i

/* public enums */
enum StepVisual_NullStyle {
	StepVisual_Null = 0,
};

enum StepVisual_CentralOrParallel {
	StepVisual_copCentral = 0,
	StepVisual_copParallel = 1,
};

enum StepVisual_SurfaceSide {
	StepVisual_ssNegative = 0,
	StepVisual_ssPositive = 1,
	StepVisual_ssBoth = 2,
};

enum StepVisual_TextPath {
	StepVisual_tpUp = 0,
	StepVisual_tpRight = 1,
	StepVisual_tpDown = 2,
	StepVisual_tpLeft = 3,
};

enum StepVisual_MarkerType {
	StepVisual_mtDot = 0,
	StepVisual_mtX = 1,
	StepVisual_mtPlus = 2,
	StepVisual_mtAsterisk = 3,
	StepVisual_mtRing = 4,
	StepVisual_mtSquare = 5,
	StepVisual_mtTriangle = 6,
};

/* end public enums declaration */

/* handles */
%wrap_handle(StepVisual_AnnotationFillArea)
%wrap_handle(StepVisual_AnnotationText)
%wrap_handle(StepVisual_AreaInSet)
%wrap_handle(StepVisual_CameraImage)
%wrap_handle(StepVisual_CameraModel)
%wrap_handle(StepVisual_CameraModelD3MultiClippingIntersection)
%wrap_handle(StepVisual_CameraModelD3MultiClippingUnion)
%wrap_handle(StepVisual_CameraUsage)
%wrap_handle(StepVisual_Colour)
%wrap_handle(StepVisual_CompositeText)
%wrap_handle(StepVisual_CurveStyle)
%wrap_handle(StepVisual_CurveStyleFont)
%wrap_handle(StepVisual_CurveStyleFontPattern)
%wrap_handle(StepVisual_DraughtingCallout)
%wrap_handle(StepVisual_DraughtingModel)
%wrap_handle(StepVisual_ExternallyDefinedCurveFont)
%wrap_handle(StepVisual_ExternallyDefinedTextFont)
%wrap_handle(StepVisual_FillAreaStyle)
%wrap_handle(StepVisual_FillAreaStyleColour)
%wrap_handle(StepVisual_Invisibility)
%wrap_handle(StepVisual_MarkerMember)
%wrap_handle(StepVisual_NullStyleMember)
%wrap_handle(StepVisual_PlanarExtent)
%wrap_handle(StepVisual_PointStyle)
%wrap_handle(StepVisual_PreDefinedItem)
%wrap_handle(StepVisual_PresentationLayerAssignment)
%wrap_handle(StepVisual_PresentationLayerUsage)
%wrap_handle(StepVisual_PresentationRepresentation)
%wrap_handle(StepVisual_PresentationSet)
%wrap_handle(StepVisual_PresentationSize)
%wrap_handle(StepVisual_PresentationStyleAssignment)
%wrap_handle(StepVisual_PresentedItem)
%wrap_handle(StepVisual_PresentedItemRepresentation)
%wrap_handle(StepVisual_StyledItem)
%wrap_handle(StepVisual_SurfaceSideStyle)
%wrap_handle(StepVisual_SurfaceStyleBoundary)
%wrap_handle(StepVisual_SurfaceStyleControlGrid)
%wrap_handle(StepVisual_SurfaceStyleFillArea)
%wrap_handle(StepVisual_SurfaceStyleParameterLine)
%wrap_handle(StepVisual_SurfaceStyleSegmentationCurve)
%wrap_handle(StepVisual_SurfaceStyleSilhouette)
%wrap_handle(StepVisual_SurfaceStyleUsage)
%wrap_handle(StepVisual_Template)
%wrap_handle(StepVisual_TemplateInstance)
%wrap_handle(StepVisual_TessellatedItem)
%wrap_handle(StepVisual_TextLiteral)
%wrap_handle(StepVisual_TextStyle)
%wrap_handle(StepVisual_TextStyleForDefinedFont)
%wrap_handle(StepVisual_ViewVolume)
%wrap_handle(StepVisual_AnnotationOccurrence)
%wrap_handle(StepVisual_BackgroundColour)
%wrap_handle(StepVisual_CameraImage2dWithScale)
%wrap_handle(StepVisual_CameraImage3dWithScale)
%wrap_handle(StepVisual_CameraModelD2)
%wrap_handle(StepVisual_CameraModelD3)
%wrap_handle(StepVisual_CharacterizedObjectAndCharacterizedRepresentationAndDraughtingModelAndRepresentation)
%wrap_handle(StepVisual_ColourSpecification)
%wrap_handle(StepVisual_CompositeTextWithExtent)
%wrap_handle(StepVisual_ContextDependentInvisibility)
%wrap_handle(StepVisual_CoordinatesList)
%wrap_handle(StepVisual_MechanicalDesignGeometricPresentationRepresentation)
%wrap_handle(StepVisual_OverRidingStyledItem)
%wrap_handle(StepVisual_PlanarBox)
%wrap_handle(StepVisual_PreDefinedColour)
%wrap_handle(StepVisual_PreDefinedCurveFont)
%wrap_handle(StepVisual_PreDefinedTextFont)
%wrap_handle(StepVisual_PresentationArea)
%wrap_handle(StepVisual_PresentationStyleByContext)
%wrap_handle(StepVisual_PresentationView)
%wrap_handle(StepVisual_TessellatedAnnotationOccurrence)
%wrap_handle(StepVisual_TessellatedCurveSet)
%wrap_handle(StepVisual_TessellatedGeometricSet)
%wrap_handle(StepVisual_TextStyleWithBoxCharacteristics)
%wrap_handle(StepVisual_AnnotationCurveOccurrence)
%wrap_handle(StepVisual_AnnotationFillAreaOccurrence)
%wrap_handle(StepVisual_AnnotationPlane)
%wrap_handle(StepVisual_AnnotationTextOccurrence)
%wrap_handle(StepVisual_CameraModelD3MultiClipping)
%wrap_handle(StepVisual_ColourRgb)
%wrap_handle(StepVisual_ContextDependentOverRidingStyledItem)
%wrap_handle(StepVisual_DraughtingAnnotationOccurrence)
%wrap_handle(StepVisual_DraughtingPreDefinedColour)
%wrap_handle(StepVisual_DraughtingPreDefinedCurveFont)
%wrap_handle(StepVisual_MechanicalDesignGeometricPresentationArea)
%wrap_handle(StepVisual_AnnotationCurveOccurrenceAndAnnotationOccurrenceAndGeomReprItemAndReprItemAndStyledItem)
%wrap_handle(StepVisual_HArray1OfAnnotationPlaneElement)
%wrap_handle(StepVisual_HArray1OfDraughtingCalloutElement)
%wrap_handle(StepVisual_HArray1OfDirectionCountSelect)
%wrap_handle(StepVisual_HArray1OfStyleContextSelect)
%wrap_handle(StepVisual_HArray1OfPresentationStyleSelect)
%wrap_handle(StepVisual_HArray1OfCurveStyleFontPattern)
%wrap_handle(StepVisual_HArray1OfBoxCharacteristicSelect)
%wrap_handle(StepVisual_HArray1OfPresentationStyleAssignment)
%wrap_handle(StepVisual_HArray1OfFillStyleSelect)
%wrap_handle(StepVisual_HArray1OfTextOrCharacter)
%wrap_handle(StepVisual_HArray1OfSurfaceStyleElementSelect)
%wrap_handle(StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect)
%wrap_handle(StepVisual_HArray1OfLayeredItem)
%wrap_handle(StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect)
%wrap_handle(StepVisual_HArray1OfInvisibleItem)
/* end handles declaration */

/* templates */
%template(StepVisual_Array1OfTessellatedItem) NCollection_Array1 <opencascade::handle <StepVisual_TessellatedItem>>;

%extend NCollection_Array1 <opencascade::handle <StepVisual_TessellatedItem>> {
    %pythoncode {
    def __getitem__(self, index):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            return self.Value(index + self.Lower())

    def __setitem__(self, index, value):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            self.SetValue(index + self.Lower(), value)

    def __len__(self):
        return self.Length()

    def __iter__(self):
        self.low = self.Lower()
        self.up = self.Upper()
        self.current = self.Lower() - 1
        return self

    def next(self):
        if self.current >= self.Upper():
            raise StopIteration
        else:
            self.current += 1
        return self.Value(self.current)

    __next__ = next
    }
};
%template(StepVisual_Array1OfLayeredItem) NCollection_Array1 <StepVisual_LayeredItem>;

%extend NCollection_Array1 <StepVisual_LayeredItem> {
    %pythoncode {
    def __getitem__(self, index):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            return self.Value(index + self.Lower())

    def __setitem__(self, index, value):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            self.SetValue(index + self.Lower(), value)

    def __len__(self):
        return self.Length()

    def __iter__(self):
        self.low = self.Lower()
        self.up = self.Upper()
        self.current = self.Lower() - 1
        return self

    def next(self):
        if self.current >= self.Upper():
            raise StopIteration
        else:
            self.current += 1
        return self.Value(self.current)

    __next__ = next
    }
};
%template(StepVisual_Array1OfAnnotationPlaneElement) NCollection_Array1 <StepVisual_AnnotationPlaneElement>;

%extend NCollection_Array1 <StepVisual_AnnotationPlaneElement> {
    %pythoncode {
    def __getitem__(self, index):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            return self.Value(index + self.Lower())

    def __setitem__(self, index, value):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            self.SetValue(index + self.Lower(), value)

    def __len__(self):
        return self.Length()

    def __iter__(self):
        self.low = self.Lower()
        self.up = self.Upper()
        self.current = self.Lower() - 1
        return self

    def next(self):
        if self.current >= self.Upper():
            raise StopIteration
        else:
            self.current += 1
        return self.Value(self.current)

    __next__ = next
    }
};
%template(StepVisual_Array1OfPresentationStyleAssignment) NCollection_Array1 <opencascade::handle <StepVisual_PresentationStyleAssignment>>;

%extend NCollection_Array1 <opencascade::handle <StepVisual_PresentationStyleAssignment>> {
    %pythoncode {
    def __getitem__(self, index):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            return self.Value(index + self.Lower())

    def __setitem__(self, index, value):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            self.SetValue(index + self.Lower(), value)

    def __len__(self):
        return self.Length()

    def __iter__(self):
        self.low = self.Lower()
        self.up = self.Upper()
        self.current = self.Lower() - 1
        return self

    def next(self):
        if self.current >= self.Upper():
            raise StopIteration
        else:
            self.current += 1
        return self.Value(self.current)

    __next__ = next
    }
};
%template(StepVisual_Array1OfSurfaceStyleElementSelect) NCollection_Array1 <StepVisual_SurfaceStyleElementSelect>;

%extend NCollection_Array1 <StepVisual_SurfaceStyleElementSelect> {
    %pythoncode {
    def __getitem__(self, index):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            return self.Value(index + self.Lower())

    def __setitem__(self, index, value):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            self.SetValue(index + self.Lower(), value)

    def __len__(self):
        return self.Length()

    def __iter__(self):
        self.low = self.Lower()
        self.up = self.Upper()
        self.current = self.Lower() - 1
        return self

    def next(self):
        if self.current >= self.Upper():
            raise StopIteration
        else:
            self.current += 1
        return self.Value(self.current)

    __next__ = next
    }
};
%template(StepVisual_Array1OfInvisibleItem) NCollection_Array1 <StepVisual_InvisibleItem>;

%extend NCollection_Array1 <StepVisual_InvisibleItem> {
    %pythoncode {
    def __getitem__(self, index):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            return self.Value(index + self.Lower())

    def __setitem__(self, index, value):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            self.SetValue(index + self.Lower(), value)

    def __len__(self):
        return self.Length()

    def __iter__(self):
        self.low = self.Lower()
        self.up = self.Upper()
        self.current = self.Lower() - 1
        return self

    def next(self):
        if self.current >= self.Upper():
            raise StopIteration
        else:
            self.current += 1
        return self.Value(self.current)

    __next__ = next
    }
};
%template(StepVisual_Array1OfCameraModelD3MultiClippingInterectionSelect) NCollection_Array1 <StepVisual_CameraModelD3MultiClippingInterectionSelect>;

%extend NCollection_Array1 <StepVisual_CameraModelD3MultiClippingInterectionSelect> {
    %pythoncode {
    def __getitem__(self, index):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            return self.Value(index + self.Lower())

    def __setitem__(self, index, value):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            self.SetValue(index + self.Lower(), value)

    def __len__(self):
        return self.Length()

    def __iter__(self):
        self.low = self.Lower()
        self.up = self.Upper()
        self.current = self.Lower() - 1
        return self

    def next(self):
        if self.current >= self.Upper():
            raise StopIteration
        else:
            self.current += 1
        return self.Value(self.current)

    __next__ = next
    }
};
%template(StepVisual_Array1OfTextOrCharacter) NCollection_Array1 <StepVisual_TextOrCharacter>;

%extend NCollection_Array1 <StepVisual_TextOrCharacter> {
    %pythoncode {
    def __getitem__(self, index):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            return self.Value(index + self.Lower())

    def __setitem__(self, index, value):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            self.SetValue(index + self.Lower(), value)

    def __len__(self):
        return self.Length()

    def __iter__(self):
        self.low = self.Lower()
        self.up = self.Upper()
        self.current = self.Lower() - 1
        return self

    def next(self):
        if self.current >= self.Upper():
            raise StopIteration
        else:
            self.current += 1
        return self.Value(self.current)

    __next__ = next
    }
};
%template(StepVisual_Array1OfCameraModelD3MultiClippingUnionSelect) NCollection_Array1 <StepVisual_CameraModelD3MultiClippingUnionSelect>;

%extend NCollection_Array1 <StepVisual_CameraModelD3MultiClippingUnionSelect> {
    %pythoncode {
    def __getitem__(self, index):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            return self.Value(index + self.Lower())

    def __setitem__(self, index, value):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            self.SetValue(index + self.Lower(), value)

    def __len__(self):
        return self.Length()

    def __iter__(self):
        self.low = self.Lower()
        self.up = self.Upper()
        self.current = self.Lower() - 1
        return self

    def next(self):
        if self.current >= self.Upper():
            raise StopIteration
        else:
            self.current += 1
        return self.Value(self.current)

    __next__ = next
    }
};
%template(StepVisual_Array1OfPresentationStyleSelect) NCollection_Array1 <StepVisual_PresentationStyleSelect>;

%extend NCollection_Array1 <StepVisual_PresentationStyleSelect> {
    %pythoncode {
    def __getitem__(self, index):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            return self.Value(index + self.Lower())

    def __setitem__(self, index, value):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            self.SetValue(index + self.Lower(), value)

    def __len__(self):
        return self.Length()

    def __iter__(self):
        self.low = self.Lower()
        self.up = self.Upper()
        self.current = self.Lower() - 1
        return self

    def next(self):
        if self.current >= self.Upper():
            raise StopIteration
        else:
            self.current += 1
        return self.Value(self.current)

    __next__ = next
    }
};
%template(StepVisual_Array1OfBoxCharacteristicSelect) NCollection_Array1 <StepVisual_BoxCharacteristicSelect>;

%extend NCollection_Array1 <StepVisual_BoxCharacteristicSelect> {
    %pythoncode {
    def __getitem__(self, index):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            return self.Value(index + self.Lower())

    def __setitem__(self, index, value):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            self.SetValue(index + self.Lower(), value)

    def __len__(self):
        return self.Length()

    def __iter__(self):
        self.low = self.Lower()
        self.up = self.Upper()
        self.current = self.Lower() - 1
        return self

    def next(self):
        if self.current >= self.Upper():
            raise StopIteration
        else:
            self.current += 1
        return self.Value(self.current)

    __next__ = next
    }
};
%template(StepVisual_Array1OfCurveStyleFontPattern) NCollection_Array1 <opencascade::handle <StepVisual_CurveStyleFontPattern>>;

%extend NCollection_Array1 <opencascade::handle <StepVisual_CurveStyleFontPattern>> {
    %pythoncode {
    def __getitem__(self, index):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            return self.Value(index + self.Lower())

    def __setitem__(self, index, value):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            self.SetValue(index + self.Lower(), value)

    def __len__(self):
        return self.Length()

    def __iter__(self):
        self.low = self.Lower()
        self.up = self.Upper()
        self.current = self.Lower() - 1
        return self

    def next(self):
        if self.current >= self.Upper():
            raise StopIteration
        else:
            self.current += 1
        return self.Value(self.current)

    __next__ = next
    }
};
%template(StepVisual_VectorOfHSequenceOfInteger) NCollection_Vector <opencascade::handle <TColStd_HSequenceOfInteger>>;
%template(StepVisual_Array1OfDirectionCountSelect) NCollection_Array1 <StepVisual_DirectionCountSelect>;

%extend NCollection_Array1 <StepVisual_DirectionCountSelect> {
    %pythoncode {
    def __getitem__(self, index):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            return self.Value(index + self.Lower())

    def __setitem__(self, index, value):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            self.SetValue(index + self.Lower(), value)

    def __len__(self):
        return self.Length()

    def __iter__(self):
        self.low = self.Lower()
        self.up = self.Upper()
        self.current = self.Lower() - 1
        return self

    def next(self):
        if self.current >= self.Upper():
            raise StopIteration
        else:
            self.current += 1
        return self.Value(self.current)

    __next__ = next
    }
};
%template(StepVisual_Array1OfDraughtingCalloutElement) NCollection_Array1 <StepVisual_DraughtingCalloutElement>;

%extend NCollection_Array1 <StepVisual_DraughtingCalloutElement> {
    %pythoncode {
    def __getitem__(self, index):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            return self.Value(index + self.Lower())

    def __setitem__(self, index, value):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            self.SetValue(index + self.Lower(), value)

    def __len__(self):
        return self.Length()

    def __iter__(self):
        self.low = self.Lower()
        self.up = self.Upper()
        self.current = self.Lower() - 1
        return self

    def next(self):
        if self.current >= self.Upper():
            raise StopIteration
        else:
            self.current += 1
        return self.Value(self.current)

    __next__ = next
    }
};
%template(StepVisual_Array1OfFillStyleSelect) NCollection_Array1 <StepVisual_FillStyleSelect>;

%extend NCollection_Array1 <StepVisual_FillStyleSelect> {
    %pythoncode {
    def __getitem__(self, index):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            return self.Value(index + self.Lower())

    def __setitem__(self, index, value):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            self.SetValue(index + self.Lower(), value)

    def __len__(self):
        return self.Length()

    def __iter__(self):
        self.low = self.Lower()
        self.up = self.Upper()
        self.current = self.Lower() - 1
        return self

    def next(self):
        if self.current >= self.Upper():
            raise StopIteration
        else:
            self.current += 1
        return self.Value(self.current)

    __next__ = next
    }
};
%template(StepVisual_Array1OfStyleContextSelect) NCollection_Array1 <StepVisual_StyleContextSelect>;

%extend NCollection_Array1 <StepVisual_StyleContextSelect> {
    %pythoncode {
    def __getitem__(self, index):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            return self.Value(index + self.Lower())

    def __setitem__(self, index, value):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            self.SetValue(index + self.Lower(), value)

    def __len__(self):
        return self.Length()

    def __iter__(self):
        self.low = self.Lower()
        self.up = self.Upper()
        self.current = self.Lower() - 1
        return self

    def next(self):
        if self.current >= self.Upper():
            raise StopIteration
        else:
            self.current += 1
        return self.Value(self.current)

    __next__ = next
    }
};
/* end templates declaration */

/* typedefs */
typedef NCollection_Array1 <opencascade::handle <StepVisual_TessellatedItem>> StepVisual_Array1OfTessellatedItem;
typedef NCollection_Array1 <StepVisual_LayeredItem> StepVisual_Array1OfLayeredItem;
typedef NCollection_Array1 <StepVisual_AnnotationPlaneElement> StepVisual_Array1OfAnnotationPlaneElement;
typedef NCollection_Array1 <opencascade::handle <StepVisual_PresentationStyleAssignment>> StepVisual_Array1OfPresentationStyleAssignment;
typedef NCollection_Array1 <StepVisual_SurfaceStyleElementSelect> StepVisual_Array1OfSurfaceStyleElementSelect;
typedef NCollection_Array1 <StepVisual_InvisibleItem> StepVisual_Array1OfInvisibleItem;
typedef NCollection_Array1 <StepVisual_CameraModelD3MultiClippingInterectionSelect> StepVisual_Array1OfCameraModelD3MultiClippingInterectionSelect;
typedef NCollection_Array1 <StepVisual_TextOrCharacter> StepVisual_Array1OfTextOrCharacter;
typedef NCollection_Array1 <StepVisual_CameraModelD3MultiClippingUnionSelect> StepVisual_Array1OfCameraModelD3MultiClippingUnionSelect;
typedef NCollection_Array1 <StepVisual_PresentationStyleSelect> StepVisual_Array1OfPresentationStyleSelect;
typedef NCollection_Array1 <StepVisual_BoxCharacteristicSelect> StepVisual_Array1OfBoxCharacteristicSelect;
typedef NCollection_Array1 <opencascade::handle <StepVisual_CurveStyleFontPattern>> StepVisual_Array1OfCurveStyleFontPattern;
typedef NCollection_Vector <opencascade::handle <TColStd_HSequenceOfInteger>> StepVisual_VectorOfHSequenceOfInteger;
typedef NCollection_Array1 <StepVisual_DirectionCountSelect> StepVisual_Array1OfDirectionCountSelect;
typedef NCollection_Array1 <StepVisual_DraughtingCalloutElement> StepVisual_Array1OfDraughtingCalloutElement;
typedef NCollection_Array1 <StepVisual_FillStyleSelect> StepVisual_Array1OfFillStyleSelect;
typedef NCollection_Array1 <StepVisual_StyleContextSelect> StepVisual_Array1OfStyleContextSelect;
/* end typedefs declaration */

%nodefaultctor StepVisual_AnnotationFillArea;
class StepVisual_AnnotationFillArea : public StepShape_GeometricCurveSet {
	public:
		%feature("compactdefaultargs") StepVisual_AnnotationFillArea;
		%feature("autodoc", "	* Returns a AnnotationFillArea

	:rtype: None
") StepVisual_AnnotationFillArea;
		 StepVisual_AnnotationFillArea ();
};


%make_alias(StepVisual_AnnotationFillArea)

%extend StepVisual_AnnotationFillArea {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_AnnotationPlaneElement;
class StepVisual_AnnotationPlaneElement : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a IdAttributeSelect Kind Entity that is : 1 -> DraughtingCallout 2 -> StyledItem 0 else

	:param ent:
	:type ent: opencascade::handle<Standard_Transient> &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const opencascade::handle<Standard_Transient> & ent);
		%feature("compactdefaultargs") DraughtingCallout;
		%feature("autodoc", "	* returns Value as a DraughtingCallout (Null if another type)

	:rtype: opencascade::handle<StepVisual_DraughtingCallout>
") DraughtingCallout;
		opencascade::handle<StepVisual_DraughtingCallout> DraughtingCallout ();
		%feature("compactdefaultargs") StepVisual_AnnotationPlaneElement;
		%feature("autodoc", "	* Returns a AnnotationPlaneElement select type

	:rtype: None
") StepVisual_AnnotationPlaneElement;
		 StepVisual_AnnotationPlaneElement ();
		%feature("compactdefaultargs") StyledItem;
		%feature("autodoc", "	* returns Value as a StyledItem (Null if another type)

	:rtype: opencascade::handle<StepVisual_StyledItem>
") StyledItem;
		opencascade::handle<StepVisual_StyledItem> StyledItem ();
};


%extend StepVisual_AnnotationPlaneElement {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_AnnotationText;
class StepVisual_AnnotationText : public StepRepr_MappedItem {
	public:
		%feature("compactdefaultargs") StepVisual_AnnotationText;
		%feature("autodoc", "	* Returns a AnnotationText

	:rtype: None
") StepVisual_AnnotationText;
		 StepVisual_AnnotationText ();
};


%make_alias(StepVisual_AnnotationText)

%extend StepVisual_AnnotationText {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_AreaInSet;
class StepVisual_AreaInSet : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Area;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_PresentationArea>
") Area;
		opencascade::handle<StepVisual_PresentationArea> Area ();
		%feature("compactdefaultargs") InSet;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_PresentationSet>
") InSet;
		opencascade::handle<StepVisual_PresentationSet> InSet ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aArea:
	:type aArea: opencascade::handle<StepVisual_PresentationArea> &
	:param aInSet:
	:type aInSet: opencascade::handle<StepVisual_PresentationSet> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<StepVisual_PresentationArea> & aArea,const opencascade::handle<StepVisual_PresentationSet> & aInSet);
		%feature("compactdefaultargs") SetArea;
		%feature("autodoc", "	:param aArea:
	:type aArea: opencascade::handle<StepVisual_PresentationArea> &
	:rtype: None
") SetArea;
		void SetArea (const opencascade::handle<StepVisual_PresentationArea> & aArea);
		%feature("compactdefaultargs") SetInSet;
		%feature("autodoc", "	:param aInSet:
	:type aInSet: opencascade::handle<StepVisual_PresentationSet> &
	:rtype: None
") SetInSet;
		void SetInSet (const opencascade::handle<StepVisual_PresentationSet> & aInSet);
		%feature("compactdefaultargs") StepVisual_AreaInSet;
		%feature("autodoc", "	* Returns a AreaInSet

	:rtype: None
") StepVisual_AreaInSet;
		 StepVisual_AreaInSet ();
};


%make_alias(StepVisual_AreaInSet)

%extend StepVisual_AreaInSet {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_AreaOrView;
class StepVisual_AreaOrView : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a AreaOrView Kind Entity that is : 1 -> PresentationArea 2 -> PresentationView 0 else

	:param ent:
	:type ent: opencascade::handle<Standard_Transient> &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const opencascade::handle<Standard_Transient> & ent);
		%feature("compactdefaultargs") PresentationArea;
		%feature("autodoc", "	* returns Value as a PresentationArea (Null if another type)

	:rtype: opencascade::handle<StepVisual_PresentationArea>
") PresentationArea;
		opencascade::handle<StepVisual_PresentationArea> PresentationArea ();
		%feature("compactdefaultargs") PresentationView;
		%feature("autodoc", "	* returns Value as a PresentationView (Null if another type)

	:rtype: opencascade::handle<StepVisual_PresentationView>
") PresentationView;
		opencascade::handle<StepVisual_PresentationView> PresentationView ();
		%feature("compactdefaultargs") StepVisual_AreaOrView;
		%feature("autodoc", "	* Returns a AreaOrView SelectType

	:rtype: None
") StepVisual_AreaOrView;
		 StepVisual_AreaOrView ();
};


%extend StepVisual_AreaOrView {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_BoxCharacteristicSelect;
class StepVisual_BoxCharacteristicSelect {
	public:
		%feature("compactdefaultargs") RealValue;
		%feature("autodoc", "	:rtype: float
") RealValue;
		Standard_Real RealValue ();
		%feature("compactdefaultargs") SetRealValue;
		%feature("autodoc", "	:param aValue:
	:type aValue: float
	:rtype: None
") SetRealValue;
		void SetRealValue (const Standard_Real aValue);
		%feature("compactdefaultargs") SetTypeOfContent;
		%feature("autodoc", "	:param aType:
	:type aType: int
	:rtype: None
") SetTypeOfContent;
		void SetTypeOfContent (const Standard_Integer aType);
		%feature("compactdefaultargs") StepVisual_BoxCharacteristicSelect;
		%feature("autodoc", "	:rtype: None
") StepVisual_BoxCharacteristicSelect;
		 StepVisual_BoxCharacteristicSelect ();
		%feature("compactdefaultargs") TypeOfContent;
		%feature("autodoc", "	:rtype: int
") TypeOfContent;
		Standard_Integer TypeOfContent ();
};


%extend StepVisual_BoxCharacteristicSelect {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_CameraImage;
class StepVisual_CameraImage : public StepRepr_MappedItem {
	public:
		%feature("compactdefaultargs") StepVisual_CameraImage;
		%feature("autodoc", "	* Returns a CameraImage

	:rtype: None
") StepVisual_CameraImage;
		 StepVisual_CameraImage ();
};


%make_alias(StepVisual_CameraImage)

%extend StepVisual_CameraImage {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_CameraModel;
class StepVisual_CameraModel : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("compactdefaultargs") StepVisual_CameraModel;
		%feature("autodoc", "	* Returns a CameraModel

	:rtype: None
") StepVisual_CameraModel;
		 StepVisual_CameraModel ();
};


%make_alias(StepVisual_CameraModel)

%extend StepVisual_CameraModel {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_CameraModelD3MultiClippingInterectionSelect;
class StepVisual_CameraModelD3MultiClippingInterectionSelect : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") CameraModelD3MultiClippingUnion;
		%feature("autodoc", "	* returns Value as a CameraModelD3MultiClippingUnion (Null if another type)

	:rtype: opencascade::handle<StepVisual_CameraModelD3MultiClippingUnion>
") CameraModelD3MultiClippingUnion;
		opencascade::handle<StepVisual_CameraModelD3MultiClippingUnion> CameraModelD3MultiClippingUnion ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a IdAttributeSelect Kind Entity that is : 1 -> Plane 2 -> CameraModelD3MultiClippingUnion 0 else

	:param ent:
	:type ent: opencascade::handle<Standard_Transient> &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const opencascade::handle<Standard_Transient> & ent);
		%feature("compactdefaultargs") Plane;
		%feature("autodoc", "	* returns Value as a Plane (Null if another type)

	:rtype: opencascade::handle<StepGeom_Plane>
") Plane;
		opencascade::handle<StepGeom_Plane> Plane ();
		%feature("compactdefaultargs") StepVisual_CameraModelD3MultiClippingInterectionSelect;
		%feature("autodoc", "	* Returns a CameraModelD3MultiClippingInterectionSelect select type

	:rtype: None
") StepVisual_CameraModelD3MultiClippingInterectionSelect;
		 StepVisual_CameraModelD3MultiClippingInterectionSelect ();
};


%extend StepVisual_CameraModelD3MultiClippingInterectionSelect {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_CameraModelD3MultiClippingIntersection;
class StepVisual_CameraModelD3MultiClippingIntersection : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param theName:
	:type theName: opencascade::handle<TCollection_HAsciiString> &
	:param theShapeClipping:
	:type theShapeClipping: opencascade::handle<StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & theName,const opencascade::handle<StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect> & theShapeClipping);
		%feature("compactdefaultargs") SetShapeClipping;
		%feature("autodoc", "	:param theShapeClipping:
	:type theShapeClipping: opencascade::handle<StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect> &
	:rtype: None
") SetShapeClipping;
		void SetShapeClipping (const opencascade::handle<StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect> & theShapeClipping);
		%feature("compactdefaultargs") ShapeClipping;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect>
") ShapeClipping;
		const opencascade::handle<StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect> ShapeClipping ();
		%feature("compactdefaultargs") StepVisual_CameraModelD3MultiClippingIntersection;
		%feature("autodoc", "	* Returns a StepVisual_CameraModelD3MultiClippingIntersection

	:rtype: None
") StepVisual_CameraModelD3MultiClippingIntersection;
		 StepVisual_CameraModelD3MultiClippingIntersection ();
};


%make_alias(StepVisual_CameraModelD3MultiClippingIntersection)

%extend StepVisual_CameraModelD3MultiClippingIntersection {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_CameraModelD3MultiClippingUnion;
class StepVisual_CameraModelD3MultiClippingUnion : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param theName:
	:type theName: opencascade::handle<TCollection_HAsciiString> &
	:param theShapeClipping:
	:type theShapeClipping: opencascade::handle<StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & theName,const opencascade::handle<StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect> & theShapeClipping);
		%feature("compactdefaultargs") SetShapeClipping;
		%feature("autodoc", "	:param theShapeClipping:
	:type theShapeClipping: opencascade::handle<StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect> &
	:rtype: None
") SetShapeClipping;
		void SetShapeClipping (const opencascade::handle<StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect> & theShapeClipping);
		%feature("compactdefaultargs") ShapeClipping;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect>
") ShapeClipping;
		const opencascade::handle<StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect> ShapeClipping ();
		%feature("compactdefaultargs") StepVisual_CameraModelD3MultiClippingUnion;
		%feature("autodoc", "	* Returns a StepVisual_CameraModelD3MultiClippingUnion

	:rtype: None
") StepVisual_CameraModelD3MultiClippingUnion;
		 StepVisual_CameraModelD3MultiClippingUnion ();
};


%make_alias(StepVisual_CameraModelD3MultiClippingUnion)

%extend StepVisual_CameraModelD3MultiClippingUnion {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_CameraModelD3MultiClippingUnionSelect;
class StepVisual_CameraModelD3MultiClippingUnionSelect : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") CameraModelD3MultiClippingIntersection;
		%feature("autodoc", "	* returns Value as a CameraModelD3MultiClippingIntersection (Null if another type)

	:rtype: opencascade::handle<StepVisual_CameraModelD3MultiClippingIntersection>
") CameraModelD3MultiClippingIntersection;
		opencascade::handle<StepVisual_CameraModelD3MultiClippingIntersection> CameraModelD3MultiClippingIntersection ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a IdAttributeSelect Kind Entity that is : 1 -> Plane 2 -> CameraModelD3MultiClippingIntersection 0 else

	:param ent:
	:type ent: opencascade::handle<Standard_Transient> &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const opencascade::handle<Standard_Transient> & ent);
		%feature("compactdefaultargs") Plane;
		%feature("autodoc", "	* returns Value as a Plane (Null if another type)

	:rtype: opencascade::handle<StepGeom_Plane>
") Plane;
		opencascade::handle<StepGeom_Plane> Plane ();
		%feature("compactdefaultargs") StepVisual_CameraModelD3MultiClippingUnionSelect;
		%feature("autodoc", "	* Returns a CameraModelD3MultiClippingUnionSelect select type

	:rtype: None
") StepVisual_CameraModelD3MultiClippingUnionSelect;
		 StepVisual_CameraModelD3MultiClippingUnionSelect ();
};


%extend StepVisual_CameraModelD3MultiClippingUnionSelect {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_CameraUsage;
class StepVisual_CameraUsage : public StepRepr_RepresentationMap {
	public:
		%feature("compactdefaultargs") StepVisual_CameraUsage;
		%feature("autodoc", "	* Returns a CameraUsage

	:rtype: None
") StepVisual_CameraUsage;
		 StepVisual_CameraUsage ();
};


%make_alias(StepVisual_CameraUsage)

%extend StepVisual_CameraUsage {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_Colour;
class StepVisual_Colour : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepVisual_Colour;
		%feature("autodoc", "	* Returns a Colour

	:rtype: None
") StepVisual_Colour;
		 StepVisual_Colour ();
};


%make_alias(StepVisual_Colour)

%extend StepVisual_Colour {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_CompositeText;
class StepVisual_CompositeText : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("compactdefaultargs") CollectedText;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_HArray1OfTextOrCharacter>
") CollectedText;
		opencascade::handle<StepVisual_HArray1OfTextOrCharacter> CollectedText ();
		%feature("compactdefaultargs") CollectedTextValue;
		%feature("autodoc", "	:param num:
	:type num: int
	:rtype: StepVisual_TextOrCharacter
") CollectedTextValue;
		StepVisual_TextOrCharacter CollectedTextValue (const Standard_Integer num);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:param aCollectedText:
	:type aCollectedText: opencascade::handle<StepVisual_HArray1OfTextOrCharacter> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & aName,const opencascade::handle<StepVisual_HArray1OfTextOrCharacter> & aCollectedText);
		%feature("compactdefaultargs") NbCollectedText;
		%feature("autodoc", "	:rtype: int
") NbCollectedText;
		Standard_Integer NbCollectedText ();
		%feature("compactdefaultargs") SetCollectedText;
		%feature("autodoc", "	:param aCollectedText:
	:type aCollectedText: opencascade::handle<StepVisual_HArray1OfTextOrCharacter> &
	:rtype: None
") SetCollectedText;
		void SetCollectedText (const opencascade::handle<StepVisual_HArray1OfTextOrCharacter> & aCollectedText);
		%feature("compactdefaultargs") StepVisual_CompositeText;
		%feature("autodoc", "	* Returns a CompositeText

	:rtype: None
") StepVisual_CompositeText;
		 StepVisual_CompositeText ();
};


%make_alias(StepVisual_CompositeText)

%extend StepVisual_CompositeText {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_CurveStyle;
class StepVisual_CurveStyle : public Standard_Transient {
	public:
		%feature("compactdefaultargs") CurveColour;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_Colour>
") CurveColour;
		opencascade::handle<StepVisual_Colour> CurveColour ();
		%feature("compactdefaultargs") CurveFont;
		%feature("autodoc", "	:rtype: StepVisual_CurveStyleFontSelect
") CurveFont;
		StepVisual_CurveStyleFontSelect CurveFont ();
		%feature("compactdefaultargs") CurveWidth;
		%feature("autodoc", "	:rtype: StepBasic_SizeSelect
") CurveWidth;
		StepBasic_SizeSelect CurveWidth ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:param aCurveFont:
	:type aCurveFont: StepVisual_CurveStyleFontSelect &
	:param aCurveWidth:
	:type aCurveWidth: StepBasic_SizeSelect &
	:param aCurveColour:
	:type aCurveColour: opencascade::handle<StepVisual_Colour> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & aName,const StepVisual_CurveStyleFontSelect & aCurveFont,const StepBasic_SizeSelect & aCurveWidth,const opencascade::handle<StepVisual_Colour> & aCurveColour);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	:rtype: opencascade::handle<TCollection_HAsciiString>
") Name;
		opencascade::handle<TCollection_HAsciiString> Name ();
		%feature("compactdefaultargs") SetCurveColour;
		%feature("autodoc", "	:param aCurveColour:
	:type aCurveColour: opencascade::handle<StepVisual_Colour> &
	:rtype: None
") SetCurveColour;
		void SetCurveColour (const opencascade::handle<StepVisual_Colour> & aCurveColour);
		%feature("compactdefaultargs") SetCurveFont;
		%feature("autodoc", "	:param aCurveFont:
	:type aCurveFont: StepVisual_CurveStyleFontSelect &
	:rtype: None
") SetCurveFont;
		void SetCurveFont (const StepVisual_CurveStyleFontSelect & aCurveFont);
		%feature("compactdefaultargs") SetCurveWidth;
		%feature("autodoc", "	:param aCurveWidth:
	:type aCurveWidth: StepBasic_SizeSelect &
	:rtype: None
") SetCurveWidth;
		void SetCurveWidth (const StepBasic_SizeSelect & aCurveWidth);
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:rtype: None
") SetName;
		void SetName (const opencascade::handle<TCollection_HAsciiString> & aName);
		%feature("compactdefaultargs") StepVisual_CurveStyle;
		%feature("autodoc", "	* Returns a CurveStyle

	:rtype: None
") StepVisual_CurveStyle;
		 StepVisual_CurveStyle ();
};


%make_alias(StepVisual_CurveStyle)

%extend StepVisual_CurveStyle {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_CurveStyleFont;
class StepVisual_CurveStyleFont : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:param aPatternList:
	:type aPatternList: opencascade::handle<StepVisual_HArray1OfCurveStyleFontPattern> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & aName,const opencascade::handle<StepVisual_HArray1OfCurveStyleFontPattern> & aPatternList);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	:rtype: opencascade::handle<TCollection_HAsciiString>
") Name;
		opencascade::handle<TCollection_HAsciiString> Name ();
		%feature("compactdefaultargs") NbPatternList;
		%feature("autodoc", "	:rtype: int
") NbPatternList;
		Standard_Integer NbPatternList ();
		%feature("compactdefaultargs") PatternList;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_HArray1OfCurveStyleFontPattern>
") PatternList;
		opencascade::handle<StepVisual_HArray1OfCurveStyleFontPattern> PatternList ();
		%feature("compactdefaultargs") PatternListValue;
		%feature("autodoc", "	:param num:
	:type num: int
	:rtype: opencascade::handle<StepVisual_CurveStyleFontPattern>
") PatternListValue;
		opencascade::handle<StepVisual_CurveStyleFontPattern> PatternListValue (const Standard_Integer num);
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:rtype: None
") SetName;
		void SetName (const opencascade::handle<TCollection_HAsciiString> & aName);
		%feature("compactdefaultargs") SetPatternList;
		%feature("autodoc", "	:param aPatternList:
	:type aPatternList: opencascade::handle<StepVisual_HArray1OfCurveStyleFontPattern> &
	:rtype: None
") SetPatternList;
		void SetPatternList (const opencascade::handle<StepVisual_HArray1OfCurveStyleFontPattern> & aPatternList);
		%feature("compactdefaultargs") StepVisual_CurveStyleFont;
		%feature("autodoc", "	* Returns a CurveStyleFont

	:rtype: None
") StepVisual_CurveStyleFont;
		 StepVisual_CurveStyleFont ();
};


%make_alias(StepVisual_CurveStyleFont)

%extend StepVisual_CurveStyleFont {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_CurveStyleFontPattern;
class StepVisual_CurveStyleFontPattern : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aVisibleSegmentLength:
	:type aVisibleSegmentLength: float
	:param aInvisibleSegmentLength:
	:type aInvisibleSegmentLength: float
	:rtype: None
") Init;
		void Init (const Standard_Real aVisibleSegmentLength,const Standard_Real aInvisibleSegmentLength);
		%feature("compactdefaultargs") InvisibleSegmentLength;
		%feature("autodoc", "	:rtype: float
") InvisibleSegmentLength;
		Standard_Real InvisibleSegmentLength ();
		%feature("compactdefaultargs") SetInvisibleSegmentLength;
		%feature("autodoc", "	:param aInvisibleSegmentLength:
	:type aInvisibleSegmentLength: float
	:rtype: None
") SetInvisibleSegmentLength;
		void SetInvisibleSegmentLength (const Standard_Real aInvisibleSegmentLength);
		%feature("compactdefaultargs") SetVisibleSegmentLength;
		%feature("autodoc", "	:param aVisibleSegmentLength:
	:type aVisibleSegmentLength: float
	:rtype: None
") SetVisibleSegmentLength;
		void SetVisibleSegmentLength (const Standard_Real aVisibleSegmentLength);
		%feature("compactdefaultargs") StepVisual_CurveStyleFontPattern;
		%feature("autodoc", "	* Returns a CurveStyleFontPattern

	:rtype: None
") StepVisual_CurveStyleFontPattern;
		 StepVisual_CurveStyleFontPattern ();
		%feature("compactdefaultargs") VisibleSegmentLength;
		%feature("autodoc", "	:rtype: float
") VisibleSegmentLength;
		Standard_Real VisibleSegmentLength ();
};


%make_alias(StepVisual_CurveStyleFontPattern)

%extend StepVisual_CurveStyleFontPattern {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_CurveStyleFontSelect;
class StepVisual_CurveStyleFontSelect : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a CurveStyleFontSelect Kind Entity that is : 1 -> CurveStyleFont 2 -> PreDefinedCurveFont 3 -> ExternallyDefinedCurveFont 0 else

	:param ent:
	:type ent: opencascade::handle<Standard_Transient> &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const opencascade::handle<Standard_Transient> & ent);
		%feature("compactdefaultargs") CurveStyleFont;
		%feature("autodoc", "	* returns Value as a CurveStyleFont (Null if another type)

	:rtype: opencascade::handle<StepVisual_CurveStyleFont>
") CurveStyleFont;
		opencascade::handle<StepVisual_CurveStyleFont> CurveStyleFont ();
		%feature("compactdefaultargs") ExternallyDefinedCurveFont;
		%feature("autodoc", "	* returns Value as a ExternallyDefinedCurveFont (Null if another type)

	:rtype: opencascade::handle<StepVisual_ExternallyDefinedCurveFont>
") ExternallyDefinedCurveFont;
		opencascade::handle<StepVisual_ExternallyDefinedCurveFont> ExternallyDefinedCurveFont ();
		%feature("compactdefaultargs") PreDefinedCurveFont;
		%feature("autodoc", "	* returns Value as a PreDefinedCurveFont (Null if another type)

	:rtype: opencascade::handle<StepVisual_PreDefinedCurveFont>
") PreDefinedCurveFont;
		opencascade::handle<StepVisual_PreDefinedCurveFont> PreDefinedCurveFont ();
		%feature("compactdefaultargs") StepVisual_CurveStyleFontSelect;
		%feature("autodoc", "	* Returns a CurveStyleFontSelect SelectType

	:rtype: None
") StepVisual_CurveStyleFontSelect;
		 StepVisual_CurveStyleFontSelect ();
};


%extend StepVisual_CurveStyleFontSelect {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_DirectionCountSelect;
class StepVisual_DirectionCountSelect {
	public:
		%feature("compactdefaultargs") SetTypeOfContent;
		%feature("autodoc", "	:param aTypeOfContent:
	:type aTypeOfContent: int
	:rtype: None
") SetTypeOfContent;
		void SetTypeOfContent (const Standard_Integer aTypeOfContent);
		%feature("compactdefaultargs") SetUDirectionCount;
		%feature("autodoc", "	:param aUDirectionCount:
	:type aUDirectionCount: int
	:rtype: None
") SetUDirectionCount;
		void SetUDirectionCount (const Standard_Integer aUDirectionCount);
		%feature("compactdefaultargs") SetVDirectionCount;
		%feature("autodoc", "	:param aUDirectionCount:
	:type aUDirectionCount: int
	:rtype: None
") SetVDirectionCount;
		void SetVDirectionCount (const Standard_Integer aUDirectionCount);
		%feature("compactdefaultargs") StepVisual_DirectionCountSelect;
		%feature("autodoc", "	:rtype: None
") StepVisual_DirectionCountSelect;
		 StepVisual_DirectionCountSelect ();
		%feature("compactdefaultargs") TypeOfContent;
		%feature("autodoc", "	:rtype: int
") TypeOfContent;
		Standard_Integer TypeOfContent ();
		%feature("compactdefaultargs") UDirectionCount;
		%feature("autodoc", "	:rtype: int
") UDirectionCount;
		Standard_Integer UDirectionCount ();
		%feature("compactdefaultargs") VDirectionCount;
		%feature("autodoc", "	:rtype: int
") VDirectionCount;
		Standard_Integer VDirectionCount ();
};


%extend StepVisual_DirectionCountSelect {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_DraughtingCallout;
class StepVisual_DraughtingCallout : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("compactdefaultargs") Contents;
		%feature("autodoc", "	* Returns field Contents

	:rtype: inline opencascade::handle<StepVisual_HArray1OfDraughtingCalloutElement>
") Contents;
		inline opencascade::handle<StepVisual_HArray1OfDraughtingCalloutElement> Contents ();
		%feature("compactdefaultargs") ContentsValue;
		%feature("autodoc", "	* Returns Contents with the given number

	:param theNum:
	:type theNum: int
	:rtype: inline StepVisual_DraughtingCalloutElement
") ContentsValue;
		inline StepVisual_DraughtingCalloutElement ContentsValue (const Standard_Integer theNum);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Init

	:param theName:
	:type theName: opencascade::handle<TCollection_HAsciiString> &
	:param theContents:
	:type theContents: opencascade::handle<StepVisual_HArray1OfDraughtingCalloutElement> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & theName,const opencascade::handle<StepVisual_HArray1OfDraughtingCalloutElement> & theContents);
		%feature("compactdefaultargs") NbContents;
		%feature("autodoc", "	* Returns number of Contents

	:rtype: inline int
") NbContents;
		inline Standard_Integer NbContents ();
		%feature("compactdefaultargs") SetContents;
		%feature("autodoc", "	* Set field Contents

	:param theContents:
	:type theContents: opencascade::handle<StepVisual_HArray1OfDraughtingCalloutElement> &
	:rtype: inline void
") SetContents;
		inline void SetContents (const opencascade::handle<StepVisual_HArray1OfDraughtingCalloutElement> & theContents);
		%feature("compactdefaultargs") SetContentsValue;
		%feature("autodoc", "	* Sets Contents with given number

	:param theNum:
	:type theNum: int
	:param theItem:
	:type theItem: StepVisual_DraughtingCalloutElement &
	:rtype: inline void
") SetContentsValue;
		inline void SetContentsValue (const Standard_Integer theNum,const StepVisual_DraughtingCalloutElement & theItem);
		%feature("compactdefaultargs") StepVisual_DraughtingCallout;
		%feature("autodoc", "	* Returns a DraughtingCallout

	:rtype: None
") StepVisual_DraughtingCallout;
		 StepVisual_DraughtingCallout ();
};


%make_alias(StepVisual_DraughtingCallout)

%extend StepVisual_DraughtingCallout {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_DraughtingCalloutElement;
class StepVisual_DraughtingCalloutElement : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") AnnotationCurveOccurrence;
		%feature("autodoc", "	* returns Value as a AnnotationCurveOccurrence (Null if another type)

	:rtype: opencascade::handle<StepVisual_AnnotationCurveOccurrence>
") AnnotationCurveOccurrence;
		opencascade::handle<StepVisual_AnnotationCurveOccurrence> AnnotationCurveOccurrence ();
		%feature("compactdefaultargs") AnnotationFillAreaOccurrence;
		%feature("autodoc", "	* returns Value as a AnnotationFillAreaOccurrence

	:rtype: opencascade::handle<StepVisual_AnnotationFillAreaOccurrence>
") AnnotationFillAreaOccurrence;
		opencascade::handle<StepVisual_AnnotationFillAreaOccurrence> AnnotationFillAreaOccurrence ();
		%feature("compactdefaultargs") AnnotationTextOccurrence;
		%feature("autodoc", "	* returns Value as a AnnotationTextOccurrence

	:rtype: opencascade::handle<StepVisual_AnnotationTextOccurrence>
") AnnotationTextOccurrence;
		opencascade::handle<StepVisual_AnnotationTextOccurrence> AnnotationTextOccurrence ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a IdAttributeSelect Kind Entity that is : 1 -> AnnotationCurveOccurrence 2 -> AnnotationTextOccurrence 3 -> TessellatedAnnotationOccurrence 4 -> AnnotationFillAreaOccurrence 0 else

	:param ent:
	:type ent: opencascade::handle<Standard_Transient> &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const opencascade::handle<Standard_Transient> & ent);
		%feature("compactdefaultargs") StepVisual_DraughtingCalloutElement;
		%feature("autodoc", "	* Returns a DraughtingCalloutElement select type

	:rtype: None
") StepVisual_DraughtingCalloutElement;
		 StepVisual_DraughtingCalloutElement ();
		%feature("compactdefaultargs") TessellatedAnnotationOccurrence;
		%feature("autodoc", "	* returns Value as a TessellatedAnnotationOccurrence

	:rtype: opencascade::handle<StepVisual_TessellatedAnnotationOccurrence>
") TessellatedAnnotationOccurrence;
		opencascade::handle<StepVisual_TessellatedAnnotationOccurrence> TessellatedAnnotationOccurrence ();
};


%extend StepVisual_DraughtingCalloutElement {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_DraughtingModel;
class StepVisual_DraughtingModel : public StepRepr_Representation {
	public:
		%feature("compactdefaultargs") StepVisual_DraughtingModel;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepVisual_DraughtingModel;
		 StepVisual_DraughtingModel ();
};


%make_alias(StepVisual_DraughtingModel)

%extend StepVisual_DraughtingModel {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_ExternallyDefinedCurveFont;
class StepVisual_ExternallyDefinedCurveFont : public StepBasic_ExternallyDefinedItem {
	public:
		%feature("compactdefaultargs") StepVisual_ExternallyDefinedCurveFont;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepVisual_ExternallyDefinedCurveFont;
		 StepVisual_ExternallyDefinedCurveFont ();
};


%make_alias(StepVisual_ExternallyDefinedCurveFont)

%extend StepVisual_ExternallyDefinedCurveFont {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_ExternallyDefinedTextFont;
class StepVisual_ExternallyDefinedTextFont : public StepBasic_ExternallyDefinedItem {
	public:
		%feature("compactdefaultargs") StepVisual_ExternallyDefinedTextFont;
		%feature("autodoc", "	* Empty constructor

	:rtype: None
") StepVisual_ExternallyDefinedTextFont;
		 StepVisual_ExternallyDefinedTextFont ();
};


%make_alias(StepVisual_ExternallyDefinedTextFont)

%extend StepVisual_ExternallyDefinedTextFont {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_FillAreaStyle;
class StepVisual_FillAreaStyle : public Standard_Transient {
	public:
		%feature("compactdefaultargs") FillStyles;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_HArray1OfFillStyleSelect>
") FillStyles;
		opencascade::handle<StepVisual_HArray1OfFillStyleSelect> FillStyles ();
		%feature("compactdefaultargs") FillStylesValue;
		%feature("autodoc", "	:param num:
	:type num: int
	:rtype: StepVisual_FillStyleSelect
") FillStylesValue;
		StepVisual_FillStyleSelect FillStylesValue (const Standard_Integer num);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:param aFillStyles:
	:type aFillStyles: opencascade::handle<StepVisual_HArray1OfFillStyleSelect> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & aName,const opencascade::handle<StepVisual_HArray1OfFillStyleSelect> & aFillStyles);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	:rtype: opencascade::handle<TCollection_HAsciiString>
") Name;
		opencascade::handle<TCollection_HAsciiString> Name ();
		%feature("compactdefaultargs") NbFillStyles;
		%feature("autodoc", "	:rtype: int
") NbFillStyles;
		Standard_Integer NbFillStyles ();
		%feature("compactdefaultargs") SetFillStyles;
		%feature("autodoc", "	:param aFillStyles:
	:type aFillStyles: opencascade::handle<StepVisual_HArray1OfFillStyleSelect> &
	:rtype: None
") SetFillStyles;
		void SetFillStyles (const opencascade::handle<StepVisual_HArray1OfFillStyleSelect> & aFillStyles);
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:rtype: None
") SetName;
		void SetName (const opencascade::handle<TCollection_HAsciiString> & aName);
		%feature("compactdefaultargs") StepVisual_FillAreaStyle;
		%feature("autodoc", "	* Returns a FillAreaStyle

	:rtype: None
") StepVisual_FillAreaStyle;
		 StepVisual_FillAreaStyle ();
};


%make_alias(StepVisual_FillAreaStyle)

%extend StepVisual_FillAreaStyle {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_FillAreaStyleColour;
class StepVisual_FillAreaStyleColour : public Standard_Transient {
	public:
		%feature("compactdefaultargs") FillColour;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_Colour>
") FillColour;
		opencascade::handle<StepVisual_Colour> FillColour ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:param aFillColour:
	:type aFillColour: opencascade::handle<StepVisual_Colour> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & aName,const opencascade::handle<StepVisual_Colour> & aFillColour);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	:rtype: opencascade::handle<TCollection_HAsciiString>
") Name;
		opencascade::handle<TCollection_HAsciiString> Name ();
		%feature("compactdefaultargs") SetFillColour;
		%feature("autodoc", "	:param aFillColour:
	:type aFillColour: opencascade::handle<StepVisual_Colour> &
	:rtype: None
") SetFillColour;
		void SetFillColour (const opencascade::handle<StepVisual_Colour> & aFillColour);
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:rtype: None
") SetName;
		void SetName (const opencascade::handle<TCollection_HAsciiString> & aName);
		%feature("compactdefaultargs") StepVisual_FillAreaStyleColour;
		%feature("autodoc", "	* Returns a FillAreaStyleColour

	:rtype: None
") StepVisual_FillAreaStyleColour;
		 StepVisual_FillAreaStyleColour ();
};


%make_alias(StepVisual_FillAreaStyleColour)

%extend StepVisual_FillAreaStyleColour {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_FillStyleSelect;
class StepVisual_FillStyleSelect : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a FillStyleSelect Kind Entity that is : 1 -> FillAreaStyleColour 2 -> ExternallyDefinedTileStyle 3 -> FillAreaStyleTiles 4 -> ExternallyDefinedHatchStyle 5 -> FillAreaStyleHatching 0 else

	:param ent:
	:type ent: opencascade::handle<Standard_Transient> &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const opencascade::handle<Standard_Transient> & ent);
		%feature("compactdefaultargs") FillAreaStyleColour;
		%feature("autodoc", "	* returns Value as a FillAreaStyleColour (Null if another type)

	:rtype: opencascade::handle<StepVisual_FillAreaStyleColour>
") FillAreaStyleColour;
		opencascade::handle<StepVisual_FillAreaStyleColour> FillAreaStyleColour ();
		%feature("compactdefaultargs") StepVisual_FillStyleSelect;
		%feature("autodoc", "	* Returns a FillStyleSelect SelectType

	:rtype: None
") StepVisual_FillStyleSelect;
		 StepVisual_FillStyleSelect ();
};


%extend StepVisual_FillStyleSelect {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_FontSelect;
class StepVisual_FontSelect : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a FontSelect Kind Entity that is : 1 -> PreDefinedTextFont 2 -> ExternallyDefinedTextFont 0 else

	:param ent:
	:type ent: opencascade::handle<Standard_Transient> &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const opencascade::handle<Standard_Transient> & ent);
		%feature("compactdefaultargs") ExternallyDefinedTextFont;
		%feature("autodoc", "	* returns Value as a ExternallyDefinedTextFont (Null if another type)

	:rtype: opencascade::handle<StepVisual_ExternallyDefinedTextFont>
") ExternallyDefinedTextFont;
		opencascade::handle<StepVisual_ExternallyDefinedTextFont> ExternallyDefinedTextFont ();
		%feature("compactdefaultargs") PreDefinedTextFont;
		%feature("autodoc", "	* returns Value as a PreDefinedTextFont (Null if another type)

	:rtype: opencascade::handle<StepVisual_PreDefinedTextFont>
") PreDefinedTextFont;
		opencascade::handle<StepVisual_PreDefinedTextFont> PreDefinedTextFont ();
		%feature("compactdefaultargs") StepVisual_FontSelect;
		%feature("autodoc", "	* Returns a FontSelect SelectType

	:rtype: None
") StepVisual_FontSelect;
		 StepVisual_FontSelect ();
};


%extend StepVisual_FontSelect {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_Invisibility;
class StepVisual_Invisibility : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aInvisibleItems:
	:type aInvisibleItems: opencascade::handle<StepVisual_HArray1OfInvisibleItem> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<StepVisual_HArray1OfInvisibleItem> & aInvisibleItems);
		%feature("compactdefaultargs") InvisibleItems;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_HArray1OfInvisibleItem>
") InvisibleItems;
		opencascade::handle<StepVisual_HArray1OfInvisibleItem> InvisibleItems ();
		%feature("compactdefaultargs") InvisibleItemsValue;
		%feature("autodoc", "	:param num:
	:type num: int
	:rtype: StepVisual_InvisibleItem
") InvisibleItemsValue;
		StepVisual_InvisibleItem InvisibleItemsValue (const Standard_Integer num);
		%feature("compactdefaultargs") NbInvisibleItems;
		%feature("autodoc", "	:rtype: int
") NbInvisibleItems;
		Standard_Integer NbInvisibleItems ();
		%feature("compactdefaultargs") SetInvisibleItems;
		%feature("autodoc", "	:param aInvisibleItems:
	:type aInvisibleItems: opencascade::handle<StepVisual_HArray1OfInvisibleItem> &
	:rtype: None
") SetInvisibleItems;
		void SetInvisibleItems (const opencascade::handle<StepVisual_HArray1OfInvisibleItem> & aInvisibleItems);
		%feature("compactdefaultargs") StepVisual_Invisibility;
		%feature("autodoc", "	* Returns a Invisibility

	:rtype: None
") StepVisual_Invisibility;
		 StepVisual_Invisibility ();
};


%make_alias(StepVisual_Invisibility)

%extend StepVisual_Invisibility {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_InvisibilityContext;
class StepVisual_InvisibilityContext : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a InvisibilityContext Kind Entity that is : 1 -> PresentationRepresentation 2 -> PresentationSet 2 -> DraughtingModel 0 else

	:param ent:
	:type ent: opencascade::handle<Standard_Transient> &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const opencascade::handle<Standard_Transient> & ent);
		%feature("compactdefaultargs") DraughtingModel;
		%feature("autodoc", "	* returns Value as a PresentationSet (Null if another type)

	:rtype: opencascade::handle<StepVisual_DraughtingModel>
") DraughtingModel;
		opencascade::handle<StepVisual_DraughtingModel> DraughtingModel ();
		%feature("compactdefaultargs") PresentationRepresentation;
		%feature("autodoc", "	* returns Value as a PresentationRepresentation (Null if another type)

	:rtype: opencascade::handle<StepVisual_PresentationRepresentation>
") PresentationRepresentation;
		opencascade::handle<StepVisual_PresentationRepresentation> PresentationRepresentation ();
		%feature("compactdefaultargs") PresentationSet;
		%feature("autodoc", "	* returns Value as a PresentationSet (Null if another type)

	:rtype: opencascade::handle<StepVisual_PresentationSet>
") PresentationSet;
		opencascade::handle<StepVisual_PresentationSet> PresentationSet ();
		%feature("compactdefaultargs") StepVisual_InvisibilityContext;
		%feature("autodoc", "	* Returns a InvisibilityContext SelectType

	:rtype: None
") StepVisual_InvisibilityContext;
		 StepVisual_InvisibilityContext ();
};


%extend StepVisual_InvisibilityContext {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_InvisibleItem;
class StepVisual_InvisibleItem : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a InvisibleItem Kind Entity that is : 1 -> StyledItem 2 -> PresentationLayerAssignment 3 -> PresentationRepresentation 0 else

	:param ent:
	:type ent: opencascade::handle<Standard_Transient> &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const opencascade::handle<Standard_Transient> & ent);
		%feature("compactdefaultargs") PresentationLayerAssignment;
		%feature("autodoc", "	* returns Value as a PresentationLayerAssignment (Null if another type)

	:rtype: opencascade::handle<StepVisual_PresentationLayerAssignment>
") PresentationLayerAssignment;
		opencascade::handle<StepVisual_PresentationLayerAssignment> PresentationLayerAssignment ();
		%feature("compactdefaultargs") PresentationRepresentation;
		%feature("autodoc", "	* returns Value as a PresentationRepresentation (Null if another type)

	:rtype: opencascade::handle<StepVisual_PresentationRepresentation>
") PresentationRepresentation;
		opencascade::handle<StepVisual_PresentationRepresentation> PresentationRepresentation ();
		%feature("compactdefaultargs") StepVisual_InvisibleItem;
		%feature("autodoc", "	* Returns a InvisibleItem SelectType

	:rtype: None
") StepVisual_InvisibleItem;
		 StepVisual_InvisibleItem ();
		%feature("compactdefaultargs") StyledItem;
		%feature("autodoc", "	* returns Value as a StyledItem (Null if another type)

	:rtype: opencascade::handle<StepVisual_StyledItem>
") StyledItem;
		opencascade::handle<StepVisual_StyledItem> StyledItem ();
};


%extend StepVisual_InvisibleItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_LayeredItem;
class StepVisual_LayeredItem : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a LayeredItem Kind Entity that is : 1 -> PresentationRepresentation 2 -> RepresentationItem 0 else

	:param ent:
	:type ent: opencascade::handle<Standard_Transient> &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const opencascade::handle<Standard_Transient> & ent);
		%feature("compactdefaultargs") PresentationRepresentation;
		%feature("autodoc", "	* returns Value as a PresentationRepresentation (Null if another type)

	:rtype: opencascade::handle<StepVisual_PresentationRepresentation>
") PresentationRepresentation;
		opencascade::handle<StepVisual_PresentationRepresentation> PresentationRepresentation ();
		%feature("compactdefaultargs") RepresentationItem;
		%feature("autodoc", "	* returns Value as a RepresentationItem (Null if another type)

	:rtype: opencascade::handle<StepRepr_RepresentationItem>
") RepresentationItem;
		opencascade::handle<StepRepr_RepresentationItem> RepresentationItem ();
		%feature("compactdefaultargs") StepVisual_LayeredItem;
		%feature("autodoc", "	* Returns a LayeredItem SelectType

	:rtype: None
") StepVisual_LayeredItem;
		 StepVisual_LayeredItem ();
};


%extend StepVisual_LayeredItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_MarkerMember;
class StepVisual_MarkerMember : public StepData_SelectInt {
	public:
		%feature("compactdefaultargs") EnumText;
		%feature("autodoc", "	:rtype: char *
") EnumText;
		virtual const char * EnumText ();
		%feature("compactdefaultargs") HasName;
		%feature("autodoc", "	:rtype: bool
") HasName;
		virtual Standard_Boolean HasName ();
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	:rtype: char *
") Name;
		virtual const char * Name ();
		%feature("compactdefaultargs") SetEnumText;
		%feature("autodoc", "	:param val:
	:type val: int
	:param text:
	:type text: char *
	:rtype: void
") SetEnumText;
		virtual void SetEnumText (const Standard_Integer val,const char * text);
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	:param name:
	:type name: char *
	:rtype: bool
") SetName;
		virtual Standard_Boolean SetName (const char * name);
		%feature("compactdefaultargs") SetValue;
		%feature("autodoc", "	:param val:
	:type val: StepVisual_MarkerType
	:rtype: None
") SetValue;
		void SetValue (const StepVisual_MarkerType val);
		%feature("compactdefaultargs") StepVisual_MarkerMember;
		%feature("autodoc", "	:rtype: None
") StepVisual_MarkerMember;
		 StepVisual_MarkerMember ();
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "	:rtype: StepVisual_MarkerType
") Value;
		StepVisual_MarkerType Value ();
};


%make_alias(StepVisual_MarkerMember)

%extend StepVisual_MarkerMember {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_MarkerSelect;
class StepVisual_MarkerSelect : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") CaseMem;
		%feature("autodoc", "	* Returns 1 for a SelectMember enum, named MARKER_TYPE

	:param sm:
	:type sm: opencascade::handle<StepData_SelectMember> &
	:rtype: int
") CaseMem;
		virtual Standard_Integer CaseMem (const opencascade::handle<StepData_SelectMember> & sm);
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a MarkerSelect Kind Entity that is : 0 else

	:param ent:
	:type ent: opencascade::handle<Standard_Transient> &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const opencascade::handle<Standard_Transient> & ent);
		%feature("compactdefaultargs") MarkerMember;
		%feature("autodoc", "	* Gives access to the MarkerMember in order to get/set its value

	:rtype: opencascade::handle<StepVisual_MarkerMember>
") MarkerMember;
		opencascade::handle<StepVisual_MarkerMember> MarkerMember ();
		%feature("compactdefaultargs") NewMember;
		%feature("autodoc", "	* Returns a new MarkerMember

	:rtype: opencascade::handle<StepData_SelectMember>
") NewMember;
		virtual opencascade::handle<StepData_SelectMember> NewMember ();
		%feature("compactdefaultargs") StepVisual_MarkerSelect;
		%feature("autodoc", "	* Returns a MarkerSelect SelectType

	:rtype: None
") StepVisual_MarkerSelect;
		 StepVisual_MarkerSelect ();
};


%extend StepVisual_MarkerSelect {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_NullStyleMember;
class StepVisual_NullStyleMember : public StepData_SelectInt {
	public:
		%feature("compactdefaultargs") EnumText;
		%feature("autodoc", "	:rtype: char *
") EnumText;
		virtual const char * EnumText ();
		%feature("compactdefaultargs") HasName;
		%feature("autodoc", "	:rtype: bool
") HasName;
		Standard_Boolean HasName ();
		%feature("compactdefaultargs") Kind;
		%feature("autodoc", "	:rtype: int
") Kind;
		Standard_Integer Kind ();
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	:rtype: char *
") Name;
		const char * Name ();
		%feature("compactdefaultargs") SetEnumText;
		%feature("autodoc", "	:param theValue:
	:type theValue: int
	:param theText:
	:type theText: char *
	:rtype: void
") SetEnumText;
		virtual void SetEnumText (const Standard_Integer theValue,const char * theText);
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	:param Standard_CString:
	:type Standard_CString: 
	:rtype: bool
") SetName;
		Standard_Boolean SetName (const Standard_CString);
		%feature("compactdefaultargs") SetValue;
		%feature("autodoc", "	:param theValue:
	:type theValue: StepVisual_NullStyle
	:rtype: None
") SetValue;
		void SetValue (const StepVisual_NullStyle theValue);
		%feature("compactdefaultargs") StepVisual_NullStyleMember;
		%feature("autodoc", "	:rtype: None
") StepVisual_NullStyleMember;
		 StepVisual_NullStyleMember ();
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "	:rtype: StepVisual_NullStyle
") Value;
		StepVisual_NullStyle Value ();
};


%make_alias(StepVisual_NullStyleMember)

%extend StepVisual_NullStyleMember {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_PlanarExtent;
class StepVisual_PlanarExtent : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:param aSizeInX:
	:type aSizeInX: float
	:param aSizeInY:
	:type aSizeInY: float
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & aName,const Standard_Real aSizeInX,const Standard_Real aSizeInY);
		%feature("compactdefaultargs") SetSizeInX;
		%feature("autodoc", "	:param aSizeInX:
	:type aSizeInX: float
	:rtype: None
") SetSizeInX;
		void SetSizeInX (const Standard_Real aSizeInX);
		%feature("compactdefaultargs") SetSizeInY;
		%feature("autodoc", "	:param aSizeInY:
	:type aSizeInY: float
	:rtype: None
") SetSizeInY;
		void SetSizeInY (const Standard_Real aSizeInY);
		%feature("compactdefaultargs") SizeInX;
		%feature("autodoc", "	:rtype: float
") SizeInX;
		Standard_Real SizeInX ();
		%feature("compactdefaultargs") SizeInY;
		%feature("autodoc", "	:rtype: float
") SizeInY;
		Standard_Real SizeInY ();
		%feature("compactdefaultargs") StepVisual_PlanarExtent;
		%feature("autodoc", "	* Returns a PlanarExtent

	:rtype: None
") StepVisual_PlanarExtent;
		 StepVisual_PlanarExtent ();
};


%make_alias(StepVisual_PlanarExtent)

%extend StepVisual_PlanarExtent {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_PointStyle;
class StepVisual_PointStyle : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:param aMarker:
	:type aMarker: StepVisual_MarkerSelect &
	:param aMarkerSize:
	:type aMarkerSize: StepBasic_SizeSelect &
	:param aMarkerColour:
	:type aMarkerColour: opencascade::handle<StepVisual_Colour> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & aName,const StepVisual_MarkerSelect & aMarker,const StepBasic_SizeSelect & aMarkerSize,const opencascade::handle<StepVisual_Colour> & aMarkerColour);
		%feature("compactdefaultargs") Marker;
		%feature("autodoc", "	:rtype: StepVisual_MarkerSelect
") Marker;
		StepVisual_MarkerSelect Marker ();
		%feature("compactdefaultargs") MarkerColour;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_Colour>
") MarkerColour;
		opencascade::handle<StepVisual_Colour> MarkerColour ();
		%feature("compactdefaultargs") MarkerSize;
		%feature("autodoc", "	:rtype: StepBasic_SizeSelect
") MarkerSize;
		StepBasic_SizeSelect MarkerSize ();
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	:rtype: opencascade::handle<TCollection_HAsciiString>
") Name;
		opencascade::handle<TCollection_HAsciiString> Name ();
		%feature("compactdefaultargs") SetMarker;
		%feature("autodoc", "	:param aMarker:
	:type aMarker: StepVisual_MarkerSelect &
	:rtype: None
") SetMarker;
		void SetMarker (const StepVisual_MarkerSelect & aMarker);
		%feature("compactdefaultargs") SetMarkerColour;
		%feature("autodoc", "	:param aMarkerColour:
	:type aMarkerColour: opencascade::handle<StepVisual_Colour> &
	:rtype: None
") SetMarkerColour;
		void SetMarkerColour (const opencascade::handle<StepVisual_Colour> & aMarkerColour);
		%feature("compactdefaultargs") SetMarkerSize;
		%feature("autodoc", "	:param aMarkerSize:
	:type aMarkerSize: StepBasic_SizeSelect &
	:rtype: None
") SetMarkerSize;
		void SetMarkerSize (const StepBasic_SizeSelect & aMarkerSize);
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:rtype: None
") SetName;
		void SetName (const opencascade::handle<TCollection_HAsciiString> & aName);
		%feature("compactdefaultargs") StepVisual_PointStyle;
		%feature("autodoc", "	* Returns a PointStyle

	:rtype: None
") StepVisual_PointStyle;
		 StepVisual_PointStyle ();
};


%make_alias(StepVisual_PointStyle)

%extend StepVisual_PointStyle {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_PreDefinedItem;
class StepVisual_PreDefinedItem : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & aName);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	:rtype: opencascade::handle<TCollection_HAsciiString>
") Name;
		opencascade::handle<TCollection_HAsciiString> Name ();
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:rtype: None
") SetName;
		void SetName (const opencascade::handle<TCollection_HAsciiString> & aName);
		%feature("compactdefaultargs") StepVisual_PreDefinedItem;
		%feature("autodoc", "	* Returns a PreDefinedItem

	:rtype: None
") StepVisual_PreDefinedItem;
		 StepVisual_PreDefinedItem ();
};


%make_alias(StepVisual_PreDefinedItem)

%extend StepVisual_PreDefinedItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_PresentationLayerAssignment;
class StepVisual_PresentationLayerAssignment : public Standard_Transient {
	public:
		%feature("compactdefaultargs") AssignedItems;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_HArray1OfLayeredItem>
") AssignedItems;
		opencascade::handle<StepVisual_HArray1OfLayeredItem> AssignedItems ();
		%feature("compactdefaultargs") AssignedItemsValue;
		%feature("autodoc", "	:param num:
	:type num: int
	:rtype: StepVisual_LayeredItem
") AssignedItemsValue;
		StepVisual_LayeredItem AssignedItemsValue (const Standard_Integer num);
		%feature("compactdefaultargs") Description;
		%feature("autodoc", "	:rtype: opencascade::handle<TCollection_HAsciiString>
") Description;
		opencascade::handle<TCollection_HAsciiString> Description ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:param aDescription:
	:type aDescription: opencascade::handle<TCollection_HAsciiString> &
	:param aAssignedItems:
	:type aAssignedItems: opencascade::handle<StepVisual_HArray1OfLayeredItem> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & aName,const opencascade::handle<TCollection_HAsciiString> & aDescription,const opencascade::handle<StepVisual_HArray1OfLayeredItem> & aAssignedItems);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	:rtype: opencascade::handle<TCollection_HAsciiString>
") Name;
		opencascade::handle<TCollection_HAsciiString> Name ();
		%feature("compactdefaultargs") NbAssignedItems;
		%feature("autodoc", "	:rtype: int
") NbAssignedItems;
		Standard_Integer NbAssignedItems ();
		%feature("compactdefaultargs") SetAssignedItems;
		%feature("autodoc", "	:param aAssignedItems:
	:type aAssignedItems: opencascade::handle<StepVisual_HArray1OfLayeredItem> &
	:rtype: None
") SetAssignedItems;
		void SetAssignedItems (const opencascade::handle<StepVisual_HArray1OfLayeredItem> & aAssignedItems);
		%feature("compactdefaultargs") SetDescription;
		%feature("autodoc", "	:param aDescription:
	:type aDescription: opencascade::handle<TCollection_HAsciiString> &
	:rtype: None
") SetDescription;
		void SetDescription (const opencascade::handle<TCollection_HAsciiString> & aDescription);
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:rtype: None
") SetName;
		void SetName (const opencascade::handle<TCollection_HAsciiString> & aName);
		%feature("compactdefaultargs") StepVisual_PresentationLayerAssignment;
		%feature("autodoc", "	* Returns a PresentationLayerAssignment

	:rtype: None
") StepVisual_PresentationLayerAssignment;
		 StepVisual_PresentationLayerAssignment ();
};


%make_alias(StepVisual_PresentationLayerAssignment)

%extend StepVisual_PresentationLayerAssignment {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_PresentationLayerUsage;
class StepVisual_PresentationLayerUsage : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Assignment;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_PresentationLayerAssignment>
") Assignment;
		opencascade::handle<StepVisual_PresentationLayerAssignment> Assignment ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aAssignment:
	:type aAssignment: opencascade::handle<StepVisual_PresentationLayerAssignment> &
	:param aPresentation:
	:type aPresentation: opencascade::handle<StepVisual_PresentationRepresentation> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<StepVisual_PresentationLayerAssignment> & aAssignment,const opencascade::handle<StepVisual_PresentationRepresentation> & aPresentation);
		%feature("compactdefaultargs") Presentation;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_PresentationRepresentation>
") Presentation;
		opencascade::handle<StepVisual_PresentationRepresentation> Presentation ();
		%feature("compactdefaultargs") SetAssignment;
		%feature("autodoc", "	:param aAssignment:
	:type aAssignment: opencascade::handle<StepVisual_PresentationLayerAssignment> &
	:rtype: None
") SetAssignment;
		void SetAssignment (const opencascade::handle<StepVisual_PresentationLayerAssignment> & aAssignment);
		%feature("compactdefaultargs") SetPresentation;
		%feature("autodoc", "	:param aPresentation:
	:type aPresentation: opencascade::handle<StepVisual_PresentationRepresentation> &
	:rtype: None
") SetPresentation;
		void SetPresentation (const opencascade::handle<StepVisual_PresentationRepresentation> & aPresentation);
		%feature("compactdefaultargs") StepVisual_PresentationLayerUsage;
		%feature("autodoc", "	:rtype: None
") StepVisual_PresentationLayerUsage;
		 StepVisual_PresentationLayerUsage ();
};


%make_alias(StepVisual_PresentationLayerUsage)

%extend StepVisual_PresentationLayerUsage {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_PresentationRepresentation;
class StepVisual_PresentationRepresentation : public StepRepr_Representation {
	public:
		%feature("compactdefaultargs") StepVisual_PresentationRepresentation;
		%feature("autodoc", "	* Returns a PresentationRepresentation

	:rtype: None
") StepVisual_PresentationRepresentation;
		 StepVisual_PresentationRepresentation ();
};


%make_alias(StepVisual_PresentationRepresentation)

%extend StepVisual_PresentationRepresentation {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_PresentationRepresentationSelect;
class StepVisual_PresentationRepresentationSelect : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a PresentationRepresentationSelect Kind Entity that is : 1 -> PresentationRepresentation 2 -> PresentationSet 0 else

	:param ent:
	:type ent: opencascade::handle<Standard_Transient> &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const opencascade::handle<Standard_Transient> & ent);
		%feature("compactdefaultargs") PresentationRepresentation;
		%feature("autodoc", "	* returns Value as a PresentationRepresentation (Null if another type)

	:rtype: opencascade::handle<StepVisual_PresentationRepresentation>
") PresentationRepresentation;
		opencascade::handle<StepVisual_PresentationRepresentation> PresentationRepresentation ();
		%feature("compactdefaultargs") PresentationSet;
		%feature("autodoc", "	* returns Value as a PresentationSet (Null if another type)

	:rtype: opencascade::handle<StepVisual_PresentationSet>
") PresentationSet;
		opencascade::handle<StepVisual_PresentationSet> PresentationSet ();
		%feature("compactdefaultargs") StepVisual_PresentationRepresentationSelect;
		%feature("autodoc", "	* Returns a PresentationRepresentationSelect SelectType

	:rtype: None
") StepVisual_PresentationRepresentationSelect;
		 StepVisual_PresentationRepresentationSelect ();
};


%extend StepVisual_PresentationRepresentationSelect {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_PresentationSet;
class StepVisual_PresentationSet : public Standard_Transient {
	public:
		%feature("compactdefaultargs") StepVisual_PresentationSet;
		%feature("autodoc", "	* Returns a PresentationSet

	:rtype: None
") StepVisual_PresentationSet;
		 StepVisual_PresentationSet ();
};


%make_alias(StepVisual_PresentationSet)

%extend StepVisual_PresentationSet {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_PresentationSize;
class StepVisual_PresentationSize : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aUnit:
	:type aUnit: StepVisual_PresentationSizeAssignmentSelect &
	:param aSize:
	:type aSize: opencascade::handle<StepVisual_PlanarBox> &
	:rtype: None
") Init;
		void Init (const StepVisual_PresentationSizeAssignmentSelect & aUnit,const opencascade::handle<StepVisual_PlanarBox> & aSize);
		%feature("compactdefaultargs") SetSize;
		%feature("autodoc", "	:param aSize:
	:type aSize: opencascade::handle<StepVisual_PlanarBox> &
	:rtype: None
") SetSize;
		void SetSize (const opencascade::handle<StepVisual_PlanarBox> & aSize);
		%feature("compactdefaultargs") SetUnit;
		%feature("autodoc", "	:param aUnit:
	:type aUnit: StepVisual_PresentationSizeAssignmentSelect &
	:rtype: None
") SetUnit;
		void SetUnit (const StepVisual_PresentationSizeAssignmentSelect & aUnit);
		%feature("compactdefaultargs") Size;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_PlanarBox>
") Size;
		opencascade::handle<StepVisual_PlanarBox> Size ();
		%feature("compactdefaultargs") StepVisual_PresentationSize;
		%feature("autodoc", "	* Returns a PresentationSize

	:rtype: None
") StepVisual_PresentationSize;
		 StepVisual_PresentationSize ();
		%feature("compactdefaultargs") Unit;
		%feature("autodoc", "	:rtype: StepVisual_PresentationSizeAssignmentSelect
") Unit;
		StepVisual_PresentationSizeAssignmentSelect Unit ();
};


%make_alias(StepVisual_PresentationSize)

%extend StepVisual_PresentationSize {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_PresentationSizeAssignmentSelect;
class StepVisual_PresentationSizeAssignmentSelect : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") AreaInSet;
		%feature("autodoc", "	* returns Value as a AreaInSet (Null if another type)

	:rtype: opencascade::handle<StepVisual_AreaInSet>
") AreaInSet;
		opencascade::handle<StepVisual_AreaInSet> AreaInSet ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a PresentationSizeAssignmentSelect Kind Entity that is : 1 -> PresentationView 2 -> PresentationArea 3 -> AreaInSet 0 else

	:param ent:
	:type ent: opencascade::handle<Standard_Transient> &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const opencascade::handle<Standard_Transient> & ent);
		%feature("compactdefaultargs") PresentationArea;
		%feature("autodoc", "	* returns Value as a PresentationArea (Null if another type)

	:rtype: opencascade::handle<StepVisual_PresentationArea>
") PresentationArea;
		opencascade::handle<StepVisual_PresentationArea> PresentationArea ();
		%feature("compactdefaultargs") PresentationView;
		%feature("autodoc", "	* returns Value as a PresentationView (Null if another type)

	:rtype: opencascade::handle<StepVisual_PresentationView>
") PresentationView;
		opencascade::handle<StepVisual_PresentationView> PresentationView ();
		%feature("compactdefaultargs") StepVisual_PresentationSizeAssignmentSelect;
		%feature("autodoc", "	* Returns a PresentationSizeAssignmentSelect SelectType

	:rtype: None
") StepVisual_PresentationSizeAssignmentSelect;
		 StepVisual_PresentationSizeAssignmentSelect ();
};


%extend StepVisual_PresentationSizeAssignmentSelect {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_PresentationStyleAssignment;
class StepVisual_PresentationStyleAssignment : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aStyles:
	:type aStyles: opencascade::handle<StepVisual_HArray1OfPresentationStyleSelect> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<StepVisual_HArray1OfPresentationStyleSelect> & aStyles);
		%feature("compactdefaultargs") NbStyles;
		%feature("autodoc", "	:rtype: int
") NbStyles;
		Standard_Integer NbStyles ();
		%feature("compactdefaultargs") SetStyles;
		%feature("autodoc", "	:param aStyles:
	:type aStyles: opencascade::handle<StepVisual_HArray1OfPresentationStyleSelect> &
	:rtype: None
") SetStyles;
		void SetStyles (const opencascade::handle<StepVisual_HArray1OfPresentationStyleSelect> & aStyles);
		%feature("compactdefaultargs") StepVisual_PresentationStyleAssignment;
		%feature("autodoc", "	* Returns a PresentationStyleAssignment

	:rtype: None
") StepVisual_PresentationStyleAssignment;
		 StepVisual_PresentationStyleAssignment ();
		%feature("compactdefaultargs") Styles;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_HArray1OfPresentationStyleSelect>
") Styles;
		opencascade::handle<StepVisual_HArray1OfPresentationStyleSelect> Styles ();
		%feature("compactdefaultargs") StylesValue;
		%feature("autodoc", "	:param num:
	:type num: int
	:rtype: StepVisual_PresentationStyleSelect
") StylesValue;
		StepVisual_PresentationStyleSelect StylesValue (const Standard_Integer num);
};


%make_alias(StepVisual_PresentationStyleAssignment)

%extend StepVisual_PresentationStyleAssignment {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_PresentationStyleSelect;
class StepVisual_PresentationStyleSelect : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a PresentationStyleSelect Kind Entity that is : 1 -> PointStyle 2 -> CurveStyle 3 -> SurfaceStyleUsage 4 -> SymbolStyle 5 -> FillAreaStyle 6 -> TextStyle 7 -> NullStyle 0 else

	:param ent:
	:type ent: opencascade::handle<Standard_Transient> &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const opencascade::handle<Standard_Transient> & ent);
		%feature("compactdefaultargs") CurveStyle;
		%feature("autodoc", "	* returns Value as a CurveStyle (Null if another type)

	:rtype: opencascade::handle<StepVisual_CurveStyle>
") CurveStyle;
		opencascade::handle<StepVisual_CurveStyle> CurveStyle ();
		%feature("compactdefaultargs") NullStyle;
		%feature("autodoc", "	* returns Value as a NullStyleMember (Null if another type)

	:rtype: opencascade::handle<StepVisual_NullStyleMember>
") NullStyle;
		opencascade::handle<StepVisual_NullStyleMember> NullStyle ();
		%feature("compactdefaultargs") PointStyle;
		%feature("autodoc", "	* returns Value as a PointStyle (Null if another type)

	:rtype: opencascade::handle<StepVisual_PointStyle>
") PointStyle;
		opencascade::handle<StepVisual_PointStyle> PointStyle ();
		%feature("compactdefaultargs") StepVisual_PresentationStyleSelect;
		%feature("autodoc", "	* Returns a PresentationStyleSelect SelectType

	:rtype: None
") StepVisual_PresentationStyleSelect;
		 StepVisual_PresentationStyleSelect ();
		%feature("compactdefaultargs") SurfaceStyleUsage;
		%feature("autodoc", "	* returns Value as a SurfaceStyleUsage (Null if another type)

	:rtype: opencascade::handle<StepVisual_SurfaceStyleUsage>
") SurfaceStyleUsage;
		opencascade::handle<StepVisual_SurfaceStyleUsage> SurfaceStyleUsage ();
};


%extend StepVisual_PresentationStyleSelect {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_PresentedItem;
class StepVisual_PresentedItem : public Standard_Transient {
	public:
};


%make_alias(StepVisual_PresentedItem)

%extend StepVisual_PresentedItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_PresentedItemRepresentation;
class StepVisual_PresentedItemRepresentation : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aPresentation:
	:type aPresentation: StepVisual_PresentationRepresentationSelect &
	:param aItem:
	:type aItem: opencascade::handle<StepVisual_PresentedItem> &
	:rtype: None
") Init;
		void Init (const StepVisual_PresentationRepresentationSelect & aPresentation,const opencascade::handle<StepVisual_PresentedItem> & aItem);
		%feature("compactdefaultargs") Item;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_PresentedItem>
") Item;
		opencascade::handle<StepVisual_PresentedItem> Item ();
		%feature("compactdefaultargs") Presentation;
		%feature("autodoc", "	:rtype: StepVisual_PresentationRepresentationSelect
") Presentation;
		StepVisual_PresentationRepresentationSelect Presentation ();
		%feature("compactdefaultargs") SetItem;
		%feature("autodoc", "	:param aItem:
	:type aItem: opencascade::handle<StepVisual_PresentedItem> &
	:rtype: None
") SetItem;
		void SetItem (const opencascade::handle<StepVisual_PresentedItem> & aItem);
		%feature("compactdefaultargs") SetPresentation;
		%feature("autodoc", "	:param aPresentation:
	:type aPresentation: StepVisual_PresentationRepresentationSelect &
	:rtype: None
") SetPresentation;
		void SetPresentation (const StepVisual_PresentationRepresentationSelect & aPresentation);
		%feature("compactdefaultargs") StepVisual_PresentedItemRepresentation;
		%feature("autodoc", "	:rtype: None
") StepVisual_PresentedItemRepresentation;
		 StepVisual_PresentedItemRepresentation ();
};


%make_alias(StepVisual_PresentedItemRepresentation)

%extend StepVisual_PresentedItemRepresentation {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_StyleContextSelect;
class StepVisual_StyleContextSelect : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a StyleContextSelect Kind Entity that is : 1 -> Representation 2 -> RepresentationItem 3 -> PresentationSet 0 else

	:param ent:
	:type ent: opencascade::handle<Standard_Transient> &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const opencascade::handle<Standard_Transient> & ent);
		%feature("compactdefaultargs") PresentationSet;
		%feature("autodoc", "	* returns Value as a PresentationSet (Null if another type)

	:rtype: opencascade::handle<StepVisual_PresentationSet>
") PresentationSet;
		opencascade::handle<StepVisual_PresentationSet> PresentationSet ();
		%feature("compactdefaultargs") Representation;
		%feature("autodoc", "	* returns Value as a Representation (Null if another type)

	:rtype: opencascade::handle<StepRepr_Representation>
") Representation;
		opencascade::handle<StepRepr_Representation> Representation ();
		%feature("compactdefaultargs") RepresentationItem;
		%feature("autodoc", "	* returns Value as a RepresentationItem (Null if another type)

	:rtype: opencascade::handle<StepRepr_RepresentationItem>
") RepresentationItem;
		opencascade::handle<StepRepr_RepresentationItem> RepresentationItem ();
		%feature("compactdefaultargs") StepVisual_StyleContextSelect;
		%feature("autodoc", "	* Returns a StyleContextSelect SelectType

	:rtype: None
") StepVisual_StyleContextSelect;
		 StepVisual_StyleContextSelect ();
};


%extend StepVisual_StyleContextSelect {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_StyledItem;
class StepVisual_StyledItem : public StepRepr_RepresentationItem {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:param aStyles:
	:type aStyles: opencascade::handle<StepVisual_HArray1OfPresentationStyleAssignment> &
	:param aItem:
	:type aItem: opencascade::handle<Standard_Transient> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & aName,const opencascade::handle<StepVisual_HArray1OfPresentationStyleAssignment> & aStyles,const opencascade::handle<Standard_Transient> & aItem);
		%feature("compactdefaultargs") Item;
		%feature("autodoc", "	:rtype: opencascade::handle<StepRepr_RepresentationItem>
") Item;
		const opencascade::handle<StepRepr_RepresentationItem> & Item ();
		%feature("compactdefaultargs") ItemAP242;
		%feature("autodoc", "	:rtype: StepVisual_StyledItemTarget
") ItemAP242;
		StepVisual_StyledItemTarget ItemAP242 ();
		%feature("compactdefaultargs") NbStyles;
		%feature("autodoc", "	:rtype: int
") NbStyles;
		Standard_Integer NbStyles ();
		%feature("compactdefaultargs") SetItem;
		%feature("autodoc", "	:param aItem:
	:type aItem: opencascade::handle<StepRepr_RepresentationItem> &
	:rtype: None
") SetItem;
		void SetItem (const opencascade::handle<StepRepr_RepresentationItem> & aItem);
		%feature("compactdefaultargs") SetItem;
		%feature("autodoc", "	:param aItem:
	:type aItem: StepVisual_StyledItemTarget &
	:rtype: None
") SetItem;
		void SetItem (const StepVisual_StyledItemTarget & aItem);
		%feature("compactdefaultargs") SetStyles;
		%feature("autodoc", "	:param aStyles:
	:type aStyles: opencascade::handle<StepVisual_HArray1OfPresentationStyleAssignment> &
	:rtype: None
") SetStyles;
		void SetStyles (const opencascade::handle<StepVisual_HArray1OfPresentationStyleAssignment> & aStyles);
		%feature("compactdefaultargs") StepVisual_StyledItem;
		%feature("autodoc", "	* Returns a StyledItem

	:rtype: None
") StepVisual_StyledItem;
		 StepVisual_StyledItem ();
		%feature("compactdefaultargs") Styles;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_HArray1OfPresentationStyleAssignment>
") Styles;
		const opencascade::handle<StepVisual_HArray1OfPresentationStyleAssignment> & Styles ();
		%feature("compactdefaultargs") StylesValue;
		%feature("autodoc", "	:param num:
	:type num: int
	:rtype: opencascade::handle<StepVisual_PresentationStyleAssignment>
") StylesValue;
		const opencascade::handle<StepVisual_PresentationStyleAssignment> & StylesValue (const Standard_Integer num);
};


%make_alias(StepVisual_StyledItem)

%extend StepVisual_StyledItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_StyledItemTarget;
class StepVisual_StyledItemTarget : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a StyledItemTarget Kind Entity that is : 1 -> GeometricRepresentationItem 2 -> MappedItem 3 -> Representation 4 -> TopologicalRepresentationItem 0 else

	:param ent:
	:type ent: opencascade::handle<Standard_Transient> &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const opencascade::handle<Standard_Transient> & ent);
		%feature("compactdefaultargs") GeometricRepresentationItem;
		%feature("autodoc", "	* returns Value as a GeometricRepresentationItem (Null if another type)

	:rtype: opencascade::handle<StepGeom_GeometricRepresentationItem>
") GeometricRepresentationItem;
		opencascade::handle<StepGeom_GeometricRepresentationItem> GeometricRepresentationItem ();
		%feature("compactdefaultargs") MappedItem;
		%feature("autodoc", "	* returns Value as a MappedItem (Null if another type)

	:rtype: opencascade::handle<StepRepr_MappedItem>
") MappedItem;
		opencascade::handle<StepRepr_MappedItem> MappedItem ();
		%feature("compactdefaultargs") Representation;
		%feature("autodoc", "	* returns Value as a Representation (Null if another type)

	:rtype: opencascade::handle<StepRepr_Representation>
") Representation;
		opencascade::handle<StepRepr_Representation> Representation ();
		%feature("compactdefaultargs") StepVisual_StyledItemTarget;
		%feature("autodoc", "	* Returns a StyledItemTarget select type

	:rtype: None
") StepVisual_StyledItemTarget;
		 StepVisual_StyledItemTarget ();
		%feature("compactdefaultargs") TopologicalRepresentationItem;
		%feature("autodoc", "	* returns Value as a TopologicalRepresentationItem (Null if another type)

	:rtype: opencascade::handle<StepShape_TopologicalRepresentationItem>
") TopologicalRepresentationItem;
		opencascade::handle<StepShape_TopologicalRepresentationItem> TopologicalRepresentationItem ();
};


%extend StepVisual_StyledItemTarget {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_SurfaceSideStyle;
class StepVisual_SurfaceSideStyle : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:param aStyles:
	:type aStyles: opencascade::handle<StepVisual_HArray1OfSurfaceStyleElementSelect> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & aName,const opencascade::handle<StepVisual_HArray1OfSurfaceStyleElementSelect> & aStyles);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	:rtype: opencascade::handle<TCollection_HAsciiString>
") Name;
		opencascade::handle<TCollection_HAsciiString> Name ();
		%feature("compactdefaultargs") NbStyles;
		%feature("autodoc", "	:rtype: int
") NbStyles;
		Standard_Integer NbStyles ();
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:rtype: None
") SetName;
		void SetName (const opencascade::handle<TCollection_HAsciiString> & aName);
		%feature("compactdefaultargs") SetStyles;
		%feature("autodoc", "	:param aStyles:
	:type aStyles: opencascade::handle<StepVisual_HArray1OfSurfaceStyleElementSelect> &
	:rtype: None
") SetStyles;
		void SetStyles (const opencascade::handle<StepVisual_HArray1OfSurfaceStyleElementSelect> & aStyles);
		%feature("compactdefaultargs") StepVisual_SurfaceSideStyle;
		%feature("autodoc", "	* Returns a SurfaceSideStyle

	:rtype: None
") StepVisual_SurfaceSideStyle;
		 StepVisual_SurfaceSideStyle ();
		%feature("compactdefaultargs") Styles;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_HArray1OfSurfaceStyleElementSelect>
") Styles;
		opencascade::handle<StepVisual_HArray1OfSurfaceStyleElementSelect> Styles ();
		%feature("compactdefaultargs") StylesValue;
		%feature("autodoc", "	:param num:
	:type num: int
	:rtype: StepVisual_SurfaceStyleElementSelect
") StylesValue;
		StepVisual_SurfaceStyleElementSelect StylesValue (const Standard_Integer num);
};


%make_alias(StepVisual_SurfaceSideStyle)

%extend StepVisual_SurfaceSideStyle {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_SurfaceStyleBoundary;
class StepVisual_SurfaceStyleBoundary : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aStyleOfBoundary:
	:type aStyleOfBoundary: opencascade::handle<StepVisual_CurveStyle> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<StepVisual_CurveStyle> & aStyleOfBoundary);
		%feature("compactdefaultargs") SetStyleOfBoundary;
		%feature("autodoc", "	:param aStyleOfBoundary:
	:type aStyleOfBoundary: opencascade::handle<StepVisual_CurveStyle> &
	:rtype: None
") SetStyleOfBoundary;
		void SetStyleOfBoundary (const opencascade::handle<StepVisual_CurveStyle> & aStyleOfBoundary);
		%feature("compactdefaultargs") StepVisual_SurfaceStyleBoundary;
		%feature("autodoc", "	* Returns a SurfaceStyleBoundary

	:rtype: None
") StepVisual_SurfaceStyleBoundary;
		 StepVisual_SurfaceStyleBoundary ();
		%feature("compactdefaultargs") StyleOfBoundary;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_CurveStyle>
") StyleOfBoundary;
		opencascade::handle<StepVisual_CurveStyle> StyleOfBoundary ();
};


%make_alias(StepVisual_SurfaceStyleBoundary)

%extend StepVisual_SurfaceStyleBoundary {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_SurfaceStyleControlGrid;
class StepVisual_SurfaceStyleControlGrid : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aStyleOfControlGrid:
	:type aStyleOfControlGrid: opencascade::handle<StepVisual_CurveStyle> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<StepVisual_CurveStyle> & aStyleOfControlGrid);
		%feature("compactdefaultargs") SetStyleOfControlGrid;
		%feature("autodoc", "	:param aStyleOfControlGrid:
	:type aStyleOfControlGrid: opencascade::handle<StepVisual_CurveStyle> &
	:rtype: None
") SetStyleOfControlGrid;
		void SetStyleOfControlGrid (const opencascade::handle<StepVisual_CurveStyle> & aStyleOfControlGrid);
		%feature("compactdefaultargs") StepVisual_SurfaceStyleControlGrid;
		%feature("autodoc", "	* Returns a SurfaceStyleControlGrid

	:rtype: None
") StepVisual_SurfaceStyleControlGrid;
		 StepVisual_SurfaceStyleControlGrid ();
		%feature("compactdefaultargs") StyleOfControlGrid;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_CurveStyle>
") StyleOfControlGrid;
		opencascade::handle<StepVisual_CurveStyle> StyleOfControlGrid ();
};


%make_alias(StepVisual_SurfaceStyleControlGrid)

%extend StepVisual_SurfaceStyleControlGrid {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_SurfaceStyleElementSelect;
class StepVisual_SurfaceStyleElementSelect : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a SurfaceStyleElementSelect Kind Entity that is : 1 -> SurfaceStyleFillArea 2 -> SurfaceStyleBoundary 3 -> SurfaceStyleParameterLine 4 -> SurfaceStyleSilhouette 5 -> SurfaceStyleSegmentationCurve 6 -> SurfaceStyleControlGrid 0 else

	:param ent:
	:type ent: opencascade::handle<Standard_Transient> &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const opencascade::handle<Standard_Transient> & ent);
		%feature("compactdefaultargs") StepVisual_SurfaceStyleElementSelect;
		%feature("autodoc", "	* Returns a SurfaceStyleElementSelect SelectType

	:rtype: None
") StepVisual_SurfaceStyleElementSelect;
		 StepVisual_SurfaceStyleElementSelect ();
		%feature("compactdefaultargs") SurfaceStyleBoundary;
		%feature("autodoc", "	* returns Value as a SurfaceStyleBoundary (Null if another type)

	:rtype: opencascade::handle<StepVisual_SurfaceStyleBoundary>
") SurfaceStyleBoundary;
		opencascade::handle<StepVisual_SurfaceStyleBoundary> SurfaceStyleBoundary ();
		%feature("compactdefaultargs") SurfaceStyleFillArea;
		%feature("autodoc", "	* returns Value as a SurfaceStyleFillArea (Null if another type)

	:rtype: opencascade::handle<StepVisual_SurfaceStyleFillArea>
") SurfaceStyleFillArea;
		opencascade::handle<StepVisual_SurfaceStyleFillArea> SurfaceStyleFillArea ();
		%feature("compactdefaultargs") SurfaceStyleParameterLine;
		%feature("autodoc", "	* returns Value as a SurfaceStyleParameterLine (Null if another type)

	:rtype: opencascade::handle<StepVisual_SurfaceStyleParameterLine>
") SurfaceStyleParameterLine;
		opencascade::handle<StepVisual_SurfaceStyleParameterLine> SurfaceStyleParameterLine ();
};


%extend StepVisual_SurfaceStyleElementSelect {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_SurfaceStyleFillArea;
class StepVisual_SurfaceStyleFillArea : public Standard_Transient {
	public:
		%feature("compactdefaultargs") FillArea;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_FillAreaStyle>
") FillArea;
		opencascade::handle<StepVisual_FillAreaStyle> FillArea ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aFillArea:
	:type aFillArea: opencascade::handle<StepVisual_FillAreaStyle> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<StepVisual_FillAreaStyle> & aFillArea);
		%feature("compactdefaultargs") SetFillArea;
		%feature("autodoc", "	:param aFillArea:
	:type aFillArea: opencascade::handle<StepVisual_FillAreaStyle> &
	:rtype: None
") SetFillArea;
		void SetFillArea (const opencascade::handle<StepVisual_FillAreaStyle> & aFillArea);
		%feature("compactdefaultargs") StepVisual_SurfaceStyleFillArea;
		%feature("autodoc", "	* Returns a SurfaceStyleFillArea

	:rtype: None
") StepVisual_SurfaceStyleFillArea;
		 StepVisual_SurfaceStyleFillArea ();
};


%make_alias(StepVisual_SurfaceStyleFillArea)

%extend StepVisual_SurfaceStyleFillArea {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_SurfaceStyleParameterLine;
class StepVisual_SurfaceStyleParameterLine : public Standard_Transient {
	public:
		%feature("compactdefaultargs") DirectionCounts;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_HArray1OfDirectionCountSelect>
") DirectionCounts;
		opencascade::handle<StepVisual_HArray1OfDirectionCountSelect> DirectionCounts ();
		%feature("compactdefaultargs") DirectionCountsValue;
		%feature("autodoc", "	:param num:
	:type num: int
	:rtype: StepVisual_DirectionCountSelect
") DirectionCountsValue;
		StepVisual_DirectionCountSelect DirectionCountsValue (const Standard_Integer num);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aStyleOfParameterLines:
	:type aStyleOfParameterLines: opencascade::handle<StepVisual_CurveStyle> &
	:param aDirectionCounts:
	:type aDirectionCounts: opencascade::handle<StepVisual_HArray1OfDirectionCountSelect> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<StepVisual_CurveStyle> & aStyleOfParameterLines,const opencascade::handle<StepVisual_HArray1OfDirectionCountSelect> & aDirectionCounts);
		%feature("compactdefaultargs") NbDirectionCounts;
		%feature("autodoc", "	:rtype: int
") NbDirectionCounts;
		Standard_Integer NbDirectionCounts ();
		%feature("compactdefaultargs") SetDirectionCounts;
		%feature("autodoc", "	:param aDirectionCounts:
	:type aDirectionCounts: opencascade::handle<StepVisual_HArray1OfDirectionCountSelect> &
	:rtype: None
") SetDirectionCounts;
		void SetDirectionCounts (const opencascade::handle<StepVisual_HArray1OfDirectionCountSelect> & aDirectionCounts);
		%feature("compactdefaultargs") SetStyleOfParameterLines;
		%feature("autodoc", "	:param aStyleOfParameterLines:
	:type aStyleOfParameterLines: opencascade::handle<StepVisual_CurveStyle> &
	:rtype: None
") SetStyleOfParameterLines;
		void SetStyleOfParameterLines (const opencascade::handle<StepVisual_CurveStyle> & aStyleOfParameterLines);
		%feature("compactdefaultargs") StepVisual_SurfaceStyleParameterLine;
		%feature("autodoc", "	* Returns a SurfaceStyleParameterLine

	:rtype: None
") StepVisual_SurfaceStyleParameterLine;
		 StepVisual_SurfaceStyleParameterLine ();
		%feature("compactdefaultargs") StyleOfParameterLines;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_CurveStyle>
") StyleOfParameterLines;
		opencascade::handle<StepVisual_CurveStyle> StyleOfParameterLines ();
};


%make_alias(StepVisual_SurfaceStyleParameterLine)

%extend StepVisual_SurfaceStyleParameterLine {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_SurfaceStyleSegmentationCurve;
class StepVisual_SurfaceStyleSegmentationCurve : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aStyleOfSegmentationCurve:
	:type aStyleOfSegmentationCurve: opencascade::handle<StepVisual_CurveStyle> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<StepVisual_CurveStyle> & aStyleOfSegmentationCurve);
		%feature("compactdefaultargs") SetStyleOfSegmentationCurve;
		%feature("autodoc", "	:param aStyleOfSegmentationCurve:
	:type aStyleOfSegmentationCurve: opencascade::handle<StepVisual_CurveStyle> &
	:rtype: None
") SetStyleOfSegmentationCurve;
		void SetStyleOfSegmentationCurve (const opencascade::handle<StepVisual_CurveStyle> & aStyleOfSegmentationCurve);
		%feature("compactdefaultargs") StepVisual_SurfaceStyleSegmentationCurve;
		%feature("autodoc", "	* Returns a SurfaceStyleSegmentationCurve

	:rtype: None
") StepVisual_SurfaceStyleSegmentationCurve;
		 StepVisual_SurfaceStyleSegmentationCurve ();
		%feature("compactdefaultargs") StyleOfSegmentationCurve;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_CurveStyle>
") StyleOfSegmentationCurve;
		opencascade::handle<StepVisual_CurveStyle> StyleOfSegmentationCurve ();
};


%make_alias(StepVisual_SurfaceStyleSegmentationCurve)

%extend StepVisual_SurfaceStyleSegmentationCurve {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_SurfaceStyleSilhouette;
class StepVisual_SurfaceStyleSilhouette : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aStyleOfSilhouette:
	:type aStyleOfSilhouette: opencascade::handle<StepVisual_CurveStyle> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<StepVisual_CurveStyle> & aStyleOfSilhouette);
		%feature("compactdefaultargs") SetStyleOfSilhouette;
		%feature("autodoc", "	:param aStyleOfSilhouette:
	:type aStyleOfSilhouette: opencascade::handle<StepVisual_CurveStyle> &
	:rtype: None
") SetStyleOfSilhouette;
		void SetStyleOfSilhouette (const opencascade::handle<StepVisual_CurveStyle> & aStyleOfSilhouette);
		%feature("compactdefaultargs") StepVisual_SurfaceStyleSilhouette;
		%feature("autodoc", "	* Returns a SurfaceStyleSilhouette

	:rtype: None
") StepVisual_SurfaceStyleSilhouette;
		 StepVisual_SurfaceStyleSilhouette ();
		%feature("compactdefaultargs") StyleOfSilhouette;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_CurveStyle>
") StyleOfSilhouette;
		opencascade::handle<StepVisual_CurveStyle> StyleOfSilhouette ();
};


%make_alias(StepVisual_SurfaceStyleSilhouette)

%extend StepVisual_SurfaceStyleSilhouette {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_SurfaceStyleUsage;
class StepVisual_SurfaceStyleUsage : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aSide:
	:type aSide: StepVisual_SurfaceSide
	:param aStyle:
	:type aStyle: opencascade::handle<StepVisual_SurfaceSideStyle> &
	:rtype: None
") Init;
		void Init (const StepVisual_SurfaceSide aSide,const opencascade::handle<StepVisual_SurfaceSideStyle> & aStyle);
		%feature("compactdefaultargs") SetSide;
		%feature("autodoc", "	:param aSide:
	:type aSide: StepVisual_SurfaceSide
	:rtype: None
") SetSide;
		void SetSide (const StepVisual_SurfaceSide aSide);
		%feature("compactdefaultargs") SetStyle;
		%feature("autodoc", "	:param aStyle:
	:type aStyle: opencascade::handle<StepVisual_SurfaceSideStyle> &
	:rtype: None
") SetStyle;
		void SetStyle (const opencascade::handle<StepVisual_SurfaceSideStyle> & aStyle);
		%feature("compactdefaultargs") Side;
		%feature("autodoc", "	:rtype: StepVisual_SurfaceSide
") Side;
		StepVisual_SurfaceSide Side ();
		%feature("compactdefaultargs") StepVisual_SurfaceStyleUsage;
		%feature("autodoc", "	* Returns a SurfaceStyleUsage

	:rtype: None
") StepVisual_SurfaceStyleUsage;
		 StepVisual_SurfaceStyleUsage ();
		%feature("compactdefaultargs") Style;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_SurfaceSideStyle>
") Style;
		opencascade::handle<StepVisual_SurfaceSideStyle> Style ();
};


%make_alias(StepVisual_SurfaceStyleUsage)

%extend StepVisual_SurfaceStyleUsage {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_Template;
class StepVisual_Template : public StepRepr_Representation {
	public:
		%feature("compactdefaultargs") StepVisual_Template;
		%feature("autodoc", "	* Returns a Template

	:rtype: None
") StepVisual_Template;
		 StepVisual_Template ();
};


%make_alias(StepVisual_Template)

%extend StepVisual_Template {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_TemplateInstance;
class StepVisual_TemplateInstance : public StepRepr_MappedItem {
	public:
		%feature("compactdefaultargs") StepVisual_TemplateInstance;
		%feature("autodoc", "	* Returns a TemplateInstance

	:rtype: None
") StepVisual_TemplateInstance;
		 StepVisual_TemplateInstance ();
};


%make_alias(StepVisual_TemplateInstance)

%extend StepVisual_TemplateInstance {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_TessellatedItem;
class StepVisual_TessellatedItem : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("compactdefaultargs") StepVisual_TessellatedItem;
		%feature("autodoc", "	* Returns a DraughtingCalloutElement select type

	:rtype: None
") StepVisual_TessellatedItem;
		 StepVisual_TessellatedItem ();
};


%make_alias(StepVisual_TessellatedItem)

%extend StepVisual_TessellatedItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_TextLiteral;
class StepVisual_TextLiteral : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("compactdefaultargs") Alignment;
		%feature("autodoc", "	:rtype: opencascade::handle<TCollection_HAsciiString>
") Alignment;
		opencascade::handle<TCollection_HAsciiString> Alignment ();
		%feature("compactdefaultargs") Font;
		%feature("autodoc", "	:rtype: StepVisual_FontSelect
") Font;
		StepVisual_FontSelect Font ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:param aLiteral:
	:type aLiteral: opencascade::handle<TCollection_HAsciiString> &
	:param aPlacement:
	:type aPlacement: StepGeom_Axis2Placement &
	:param aAlignment:
	:type aAlignment: opencascade::handle<TCollection_HAsciiString> &
	:param aPath:
	:type aPath: StepVisual_TextPath
	:param aFont:
	:type aFont: StepVisual_FontSelect &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & aName,const opencascade::handle<TCollection_HAsciiString> & aLiteral,const StepGeom_Axis2Placement & aPlacement,const opencascade::handle<TCollection_HAsciiString> & aAlignment,const StepVisual_TextPath aPath,const StepVisual_FontSelect & aFont);
		%feature("compactdefaultargs") Literal;
		%feature("autodoc", "	:rtype: opencascade::handle<TCollection_HAsciiString>
") Literal;
		opencascade::handle<TCollection_HAsciiString> Literal ();
		%feature("compactdefaultargs") Path;
		%feature("autodoc", "	:rtype: StepVisual_TextPath
") Path;
		StepVisual_TextPath Path ();
		%feature("compactdefaultargs") Placement;
		%feature("autodoc", "	:rtype: StepGeom_Axis2Placement
") Placement;
		StepGeom_Axis2Placement Placement ();
		%feature("compactdefaultargs") SetAlignment;
		%feature("autodoc", "	:param aAlignment:
	:type aAlignment: opencascade::handle<TCollection_HAsciiString> &
	:rtype: None
") SetAlignment;
		void SetAlignment (const opencascade::handle<TCollection_HAsciiString> & aAlignment);
		%feature("compactdefaultargs") SetFont;
		%feature("autodoc", "	:param aFont:
	:type aFont: StepVisual_FontSelect &
	:rtype: None
") SetFont;
		void SetFont (const StepVisual_FontSelect & aFont);
		%feature("compactdefaultargs") SetLiteral;
		%feature("autodoc", "	:param aLiteral:
	:type aLiteral: opencascade::handle<TCollection_HAsciiString> &
	:rtype: None
") SetLiteral;
		void SetLiteral (const opencascade::handle<TCollection_HAsciiString> & aLiteral);
		%feature("compactdefaultargs") SetPath;
		%feature("autodoc", "	:param aPath:
	:type aPath: StepVisual_TextPath
	:rtype: None
") SetPath;
		void SetPath (const StepVisual_TextPath aPath);
		%feature("compactdefaultargs") SetPlacement;
		%feature("autodoc", "	:param aPlacement:
	:type aPlacement: StepGeom_Axis2Placement &
	:rtype: None
") SetPlacement;
		void SetPlacement (const StepGeom_Axis2Placement & aPlacement);
		%feature("compactdefaultargs") StepVisual_TextLiteral;
		%feature("autodoc", "	* Returns a TextLiteral

	:rtype: None
") StepVisual_TextLiteral;
		 StepVisual_TextLiteral ();
};


%make_alias(StepVisual_TextLiteral)

%extend StepVisual_TextLiteral {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_TextOrCharacter;
class StepVisual_TextOrCharacter : public StepData_SelectType {
	public:
		%feature("compactdefaultargs") AnnotationText;
		%feature("autodoc", "	* returns Value as a AnnotationText (Null if another type)

	:rtype: opencascade::handle<StepVisual_AnnotationText>
") AnnotationText;
		opencascade::handle<StepVisual_AnnotationText> AnnotationText ();
		%feature("compactdefaultargs") CaseNum;
		%feature("autodoc", "	* Recognizes a TextOrCharacter Kind Entity that is : 1 -> AnnotationText 2 -> CompositeText 3 -> TextLiteral 0 else

	:param ent:
	:type ent: opencascade::handle<Standard_Transient> &
	:rtype: int
") CaseNum;
		Standard_Integer CaseNum (const opencascade::handle<Standard_Transient> & ent);
		%feature("compactdefaultargs") CompositeText;
		%feature("autodoc", "	* returns Value as a CompositeText (Null if another type)

	:rtype: opencascade::handle<StepVisual_CompositeText>
") CompositeText;
		opencascade::handle<StepVisual_CompositeText> CompositeText ();
		%feature("compactdefaultargs") StepVisual_TextOrCharacter;
		%feature("autodoc", "	* Returns a TextOrCharacter SelectType

	:rtype: None
") StepVisual_TextOrCharacter;
		 StepVisual_TextOrCharacter ();
		%feature("compactdefaultargs") TextLiteral;
		%feature("autodoc", "	* returns Value as a TextLiteral (Null if another type)

	:rtype: opencascade::handle<StepVisual_TextLiteral>
") TextLiteral;
		opencascade::handle<StepVisual_TextLiteral> TextLiteral ();
};


%extend StepVisual_TextOrCharacter {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_TextStyle;
class StepVisual_TextStyle : public Standard_Transient {
	public:
		%feature("compactdefaultargs") CharacterAppearance;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_TextStyleForDefinedFont>
") CharacterAppearance;
		opencascade::handle<StepVisual_TextStyleForDefinedFont> CharacterAppearance ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:param aCharacterAppearance:
	:type aCharacterAppearance: opencascade::handle<StepVisual_TextStyleForDefinedFont> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & aName,const opencascade::handle<StepVisual_TextStyleForDefinedFont> & aCharacterAppearance);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	:rtype: opencascade::handle<TCollection_HAsciiString>
") Name;
		opencascade::handle<TCollection_HAsciiString> Name ();
		%feature("compactdefaultargs") SetCharacterAppearance;
		%feature("autodoc", "	:param aCharacterAppearance:
	:type aCharacterAppearance: opencascade::handle<StepVisual_TextStyleForDefinedFont> &
	:rtype: None
") SetCharacterAppearance;
		void SetCharacterAppearance (const opencascade::handle<StepVisual_TextStyleForDefinedFont> & aCharacterAppearance);
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:rtype: None
") SetName;
		void SetName (const opencascade::handle<TCollection_HAsciiString> & aName);
		%feature("compactdefaultargs") StepVisual_TextStyle;
		%feature("autodoc", "	* Returns a TextStyle

	:rtype: None
") StepVisual_TextStyle;
		 StepVisual_TextStyle ();
};


%make_alias(StepVisual_TextStyle)

%extend StepVisual_TextStyle {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_TextStyleForDefinedFont;
class StepVisual_TextStyleForDefinedFont : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aTextColour:
	:type aTextColour: opencascade::handle<StepVisual_Colour> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<StepVisual_Colour> & aTextColour);
		%feature("compactdefaultargs") SetTextColour;
		%feature("autodoc", "	:param aTextColour:
	:type aTextColour: opencascade::handle<StepVisual_Colour> &
	:rtype: None
") SetTextColour;
		void SetTextColour (const opencascade::handle<StepVisual_Colour> & aTextColour);
		%feature("compactdefaultargs") StepVisual_TextStyleForDefinedFont;
		%feature("autodoc", "	* Returns a TextStyleForDefinedFont

	:rtype: None
") StepVisual_TextStyleForDefinedFont;
		 StepVisual_TextStyleForDefinedFont ();
		%feature("compactdefaultargs") TextColour;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_Colour>
") TextColour;
		opencascade::handle<StepVisual_Colour> TextColour ();
};


%make_alias(StepVisual_TextStyleForDefinedFont)

%extend StepVisual_TextStyleForDefinedFont {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_ViewVolume;
class StepVisual_ViewVolume : public Standard_Transient {
	public:
		%feature("compactdefaultargs") BackPlaneClipping;
		%feature("autodoc", "	:rtype: bool
") BackPlaneClipping;
		Standard_Boolean BackPlaneClipping ();
		%feature("compactdefaultargs") BackPlaneDistance;
		%feature("autodoc", "	:rtype: float
") BackPlaneDistance;
		Standard_Real BackPlaneDistance ();
		%feature("compactdefaultargs") FrontPlaneClipping;
		%feature("autodoc", "	:rtype: bool
") FrontPlaneClipping;
		Standard_Boolean FrontPlaneClipping ();
		%feature("compactdefaultargs") FrontPlaneDistance;
		%feature("autodoc", "	:rtype: float
") FrontPlaneDistance;
		Standard_Real FrontPlaneDistance ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aProjectionType:
	:type aProjectionType: StepVisual_CentralOrParallel
	:param aProjectionPoint:
	:type aProjectionPoint: opencascade::handle<StepGeom_CartesianPoint> &
	:param aViewPlaneDistance:
	:type aViewPlaneDistance: float
	:param aFrontPlaneDistance:
	:type aFrontPlaneDistance: float
	:param aFrontPlaneClipping:
	:type aFrontPlaneClipping: bool
	:param aBackPlaneDistance:
	:type aBackPlaneDistance: float
	:param aBackPlaneClipping:
	:type aBackPlaneClipping: bool
	:param aViewVolumeSidesClipping:
	:type aViewVolumeSidesClipping: bool
	:param aViewWindow:
	:type aViewWindow: opencascade::handle<StepVisual_PlanarBox> &
	:rtype: None
") Init;
		void Init (const StepVisual_CentralOrParallel aProjectionType,const opencascade::handle<StepGeom_CartesianPoint> & aProjectionPoint,const Standard_Real aViewPlaneDistance,const Standard_Real aFrontPlaneDistance,const Standard_Boolean aFrontPlaneClipping,const Standard_Real aBackPlaneDistance,const Standard_Boolean aBackPlaneClipping,const Standard_Boolean aViewVolumeSidesClipping,const opencascade::handle<StepVisual_PlanarBox> & aViewWindow);
		%feature("compactdefaultargs") ProjectionPoint;
		%feature("autodoc", "	:rtype: opencascade::handle<StepGeom_CartesianPoint>
") ProjectionPoint;
		opencascade::handle<StepGeom_CartesianPoint> ProjectionPoint ();
		%feature("compactdefaultargs") ProjectionType;
		%feature("autodoc", "	:rtype: StepVisual_CentralOrParallel
") ProjectionType;
		StepVisual_CentralOrParallel ProjectionType ();
		%feature("compactdefaultargs") SetBackPlaneClipping;
		%feature("autodoc", "	:param aBackPlaneClipping:
	:type aBackPlaneClipping: bool
	:rtype: None
") SetBackPlaneClipping;
		void SetBackPlaneClipping (const Standard_Boolean aBackPlaneClipping);
		%feature("compactdefaultargs") SetBackPlaneDistance;
		%feature("autodoc", "	:param aBackPlaneDistance:
	:type aBackPlaneDistance: float
	:rtype: None
") SetBackPlaneDistance;
		void SetBackPlaneDistance (const Standard_Real aBackPlaneDistance);
		%feature("compactdefaultargs") SetFrontPlaneClipping;
		%feature("autodoc", "	:param aFrontPlaneClipping:
	:type aFrontPlaneClipping: bool
	:rtype: None
") SetFrontPlaneClipping;
		void SetFrontPlaneClipping (const Standard_Boolean aFrontPlaneClipping);
		%feature("compactdefaultargs") SetFrontPlaneDistance;
		%feature("autodoc", "	:param aFrontPlaneDistance:
	:type aFrontPlaneDistance: float
	:rtype: None
") SetFrontPlaneDistance;
		void SetFrontPlaneDistance (const Standard_Real aFrontPlaneDistance);
		%feature("compactdefaultargs") SetProjectionPoint;
		%feature("autodoc", "	:param aProjectionPoint:
	:type aProjectionPoint: opencascade::handle<StepGeom_CartesianPoint> &
	:rtype: None
") SetProjectionPoint;
		void SetProjectionPoint (const opencascade::handle<StepGeom_CartesianPoint> & aProjectionPoint);
		%feature("compactdefaultargs") SetProjectionType;
		%feature("autodoc", "	:param aProjectionType:
	:type aProjectionType: StepVisual_CentralOrParallel
	:rtype: None
") SetProjectionType;
		void SetProjectionType (const StepVisual_CentralOrParallel aProjectionType);
		%feature("compactdefaultargs") SetViewPlaneDistance;
		%feature("autodoc", "	:param aViewPlaneDistance:
	:type aViewPlaneDistance: float
	:rtype: None
") SetViewPlaneDistance;
		void SetViewPlaneDistance (const Standard_Real aViewPlaneDistance);
		%feature("compactdefaultargs") SetViewVolumeSidesClipping;
		%feature("autodoc", "	:param aViewVolumeSidesClipping:
	:type aViewVolumeSidesClipping: bool
	:rtype: None
") SetViewVolumeSidesClipping;
		void SetViewVolumeSidesClipping (const Standard_Boolean aViewVolumeSidesClipping);
		%feature("compactdefaultargs") SetViewWindow;
		%feature("autodoc", "	:param aViewWindow:
	:type aViewWindow: opencascade::handle<StepVisual_PlanarBox> &
	:rtype: None
") SetViewWindow;
		void SetViewWindow (const opencascade::handle<StepVisual_PlanarBox> & aViewWindow);
		%feature("compactdefaultargs") StepVisual_ViewVolume;
		%feature("autodoc", "	* Returns a ViewVolume

	:rtype: None
") StepVisual_ViewVolume;
		 StepVisual_ViewVolume ();
		%feature("compactdefaultargs") ViewPlaneDistance;
		%feature("autodoc", "	:rtype: float
") ViewPlaneDistance;
		Standard_Real ViewPlaneDistance ();
		%feature("compactdefaultargs") ViewVolumeSidesClipping;
		%feature("autodoc", "	:rtype: bool
") ViewVolumeSidesClipping;
		Standard_Boolean ViewVolumeSidesClipping ();
		%feature("compactdefaultargs") ViewWindow;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_PlanarBox>
") ViewWindow;
		opencascade::handle<StepVisual_PlanarBox> ViewWindow ();
};


%make_alias(StepVisual_ViewVolume)

%extend StepVisual_ViewVolume {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_AnnotationOccurrence;
class StepVisual_AnnotationOccurrence : public StepVisual_StyledItem {
	public:
		%feature("compactdefaultargs") StepVisual_AnnotationOccurrence;
		%feature("autodoc", "	* Returns a AnnotationOccurrence

	:rtype: None
") StepVisual_AnnotationOccurrence;
		 StepVisual_AnnotationOccurrence ();
};


%make_alias(StepVisual_AnnotationOccurrence)

%extend StepVisual_AnnotationOccurrence {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_BackgroundColour;
class StepVisual_BackgroundColour : public StepVisual_Colour {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aPresentation:
	:type aPresentation: StepVisual_AreaOrView &
	:rtype: None
") Init;
		void Init (const StepVisual_AreaOrView & aPresentation);
		%feature("compactdefaultargs") Presentation;
		%feature("autodoc", "	:rtype: StepVisual_AreaOrView
") Presentation;
		StepVisual_AreaOrView Presentation ();
		%feature("compactdefaultargs") SetPresentation;
		%feature("autodoc", "	:param aPresentation:
	:type aPresentation: StepVisual_AreaOrView &
	:rtype: None
") SetPresentation;
		void SetPresentation (const StepVisual_AreaOrView & aPresentation);
		%feature("compactdefaultargs") StepVisual_BackgroundColour;
		%feature("autodoc", "	* Returns a BackgroundColour

	:rtype: None
") StepVisual_BackgroundColour;
		 StepVisual_BackgroundColour ();
};


%make_alias(StepVisual_BackgroundColour)

%extend StepVisual_BackgroundColour {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_CameraImage2dWithScale;
class StepVisual_CameraImage2dWithScale : public StepVisual_CameraImage {
	public:
		%feature("compactdefaultargs") StepVisual_CameraImage2dWithScale;
		%feature("autodoc", "	:rtype: None
") StepVisual_CameraImage2dWithScale;
		 StepVisual_CameraImage2dWithScale ();
};


%make_alias(StepVisual_CameraImage2dWithScale)

%extend StepVisual_CameraImage2dWithScale {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_CameraImage3dWithScale;
class StepVisual_CameraImage3dWithScale : public StepVisual_CameraImage {
	public:
		%feature("compactdefaultargs") StepVisual_CameraImage3dWithScale;
		%feature("autodoc", "	:rtype: None
") StepVisual_CameraImage3dWithScale;
		 StepVisual_CameraImage3dWithScale ();
};


%make_alias(StepVisual_CameraImage3dWithScale)

%extend StepVisual_CameraImage3dWithScale {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_CameraModelD2;
class StepVisual_CameraModelD2 : public StepVisual_CameraModel {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:param aViewWindow:
	:type aViewWindow: opencascade::handle<StepVisual_PlanarBox> &
	:param aViewWindowClipping:
	:type aViewWindowClipping: bool
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & aName,const opencascade::handle<StepVisual_PlanarBox> & aViewWindow,const Standard_Boolean aViewWindowClipping);
		%feature("compactdefaultargs") SetViewWindow;
		%feature("autodoc", "	:param aViewWindow:
	:type aViewWindow: opencascade::handle<StepVisual_PlanarBox> &
	:rtype: None
") SetViewWindow;
		void SetViewWindow (const opencascade::handle<StepVisual_PlanarBox> & aViewWindow);
		%feature("compactdefaultargs") SetViewWindowClipping;
		%feature("autodoc", "	:param aViewWindowClipping:
	:type aViewWindowClipping: bool
	:rtype: None
") SetViewWindowClipping;
		void SetViewWindowClipping (const Standard_Boolean aViewWindowClipping);
		%feature("compactdefaultargs") StepVisual_CameraModelD2;
		%feature("autodoc", "	* Returns a CameraModelD2

	:rtype: None
") StepVisual_CameraModelD2;
		 StepVisual_CameraModelD2 ();
		%feature("compactdefaultargs") ViewWindow;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_PlanarBox>
") ViewWindow;
		opencascade::handle<StepVisual_PlanarBox> ViewWindow ();
		%feature("compactdefaultargs") ViewWindowClipping;
		%feature("autodoc", "	:rtype: bool
") ViewWindowClipping;
		Standard_Boolean ViewWindowClipping ();
};


%make_alias(StepVisual_CameraModelD2)

%extend StepVisual_CameraModelD2 {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_CameraModelD3;
class StepVisual_CameraModelD3 : public StepVisual_CameraModel {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:param aViewReferenceSystem:
	:type aViewReferenceSystem: opencascade::handle<StepGeom_Axis2Placement3d> &
	:param aPerspectiveOfVolume:
	:type aPerspectiveOfVolume: opencascade::handle<StepVisual_ViewVolume> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & aName,const opencascade::handle<StepGeom_Axis2Placement3d> & aViewReferenceSystem,const opencascade::handle<StepVisual_ViewVolume> & aPerspectiveOfVolume);
		%feature("compactdefaultargs") PerspectiveOfVolume;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_ViewVolume>
") PerspectiveOfVolume;
		opencascade::handle<StepVisual_ViewVolume> PerspectiveOfVolume ();
		%feature("compactdefaultargs") SetPerspectiveOfVolume;
		%feature("autodoc", "	:param aPerspectiveOfVolume:
	:type aPerspectiveOfVolume: opencascade::handle<StepVisual_ViewVolume> &
	:rtype: None
") SetPerspectiveOfVolume;
		void SetPerspectiveOfVolume (const opencascade::handle<StepVisual_ViewVolume> & aPerspectiveOfVolume);
		%feature("compactdefaultargs") SetViewReferenceSystem;
		%feature("autodoc", "	:param aViewReferenceSystem:
	:type aViewReferenceSystem: opencascade::handle<StepGeom_Axis2Placement3d> &
	:rtype: None
") SetViewReferenceSystem;
		void SetViewReferenceSystem (const opencascade::handle<StepGeom_Axis2Placement3d> & aViewReferenceSystem);
		%feature("compactdefaultargs") StepVisual_CameraModelD3;
		%feature("autodoc", "	* Returns a CameraModelD3

	:rtype: None
") StepVisual_CameraModelD3;
		 StepVisual_CameraModelD3 ();
		%feature("compactdefaultargs") ViewReferenceSystem;
		%feature("autodoc", "	:rtype: opencascade::handle<StepGeom_Axis2Placement3d>
") ViewReferenceSystem;
		opencascade::handle<StepGeom_Axis2Placement3d> ViewReferenceSystem ();
};


%make_alias(StepVisual_CameraModelD3)

%extend StepVisual_CameraModelD3 {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_CharacterizedObjectAndCharacterizedRepresentationAndDraughtingModelAndRepresentation;
class StepVisual_CharacterizedObjectAndCharacterizedRepresentationAndDraughtingModelAndRepresentation : public StepVisual_DraughtingModel {
	public:
		%feature("compactdefaultargs") StepVisual_CharacterizedObjectAndCharacterizedRepresentationAndDraughtingModelAndRepresentation;
		%feature("autodoc", "	:rtype: None
") StepVisual_CharacterizedObjectAndCharacterizedRepresentationAndDraughtingModelAndRepresentation;
		 StepVisual_CharacterizedObjectAndCharacterizedRepresentationAndDraughtingModelAndRepresentation ();
};


%make_alias(StepVisual_CharacterizedObjectAndCharacterizedRepresentationAndDraughtingModelAndRepresentation)

%extend StepVisual_CharacterizedObjectAndCharacterizedRepresentationAndDraughtingModelAndRepresentation {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_ColourSpecification;
class StepVisual_ColourSpecification : public StepVisual_Colour {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & aName);
		%feature("compactdefaultargs") Name;
		%feature("autodoc", "	:rtype: opencascade::handle<TCollection_HAsciiString>
") Name;
		opencascade::handle<TCollection_HAsciiString> Name ();
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:rtype: None
") SetName;
		void SetName (const opencascade::handle<TCollection_HAsciiString> & aName);
		%feature("compactdefaultargs") StepVisual_ColourSpecification;
		%feature("autodoc", "	* Returns a ColourSpecification

	:rtype: None
") StepVisual_ColourSpecification;
		 StepVisual_ColourSpecification ();
};


%make_alias(StepVisual_ColourSpecification)

%extend StepVisual_ColourSpecification {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_CompositeTextWithExtent;
class StepVisual_CompositeTextWithExtent : public StepVisual_CompositeText {
	public:
		%feature("compactdefaultargs") Extent;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_PlanarExtent>
") Extent;
		opencascade::handle<StepVisual_PlanarExtent> Extent ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:param aCollectedText:
	:type aCollectedText: opencascade::handle<StepVisual_HArray1OfTextOrCharacter> &
	:param aExtent:
	:type aExtent: opencascade::handle<StepVisual_PlanarExtent> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & aName,const opencascade::handle<StepVisual_HArray1OfTextOrCharacter> & aCollectedText,const opencascade::handle<StepVisual_PlanarExtent> & aExtent);
		%feature("compactdefaultargs") SetExtent;
		%feature("autodoc", "	:param aExtent:
	:type aExtent: opencascade::handle<StepVisual_PlanarExtent> &
	:rtype: None
") SetExtent;
		void SetExtent (const opencascade::handle<StepVisual_PlanarExtent> & aExtent);
		%feature("compactdefaultargs") StepVisual_CompositeTextWithExtent;
		%feature("autodoc", "	* Returns a CompositeTextWithExtent

	:rtype: None
") StepVisual_CompositeTextWithExtent;
		 StepVisual_CompositeTextWithExtent ();
};


%make_alias(StepVisual_CompositeTextWithExtent)

%extend StepVisual_CompositeTextWithExtent {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_ContextDependentInvisibility;
class StepVisual_ContextDependentInvisibility : public StepVisual_Invisibility {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aInvisibleItems:
	:type aInvisibleItems: opencascade::handle<StepVisual_HArray1OfInvisibleItem> &
	:param aPresentationContext:
	:type aPresentationContext: StepVisual_InvisibilityContext &
	:rtype: None
") Init;
		void Init (const opencascade::handle<StepVisual_HArray1OfInvisibleItem> & aInvisibleItems,const StepVisual_InvisibilityContext & aPresentationContext);
		%feature("compactdefaultargs") PresentationContext;
		%feature("autodoc", "	:rtype: StepVisual_InvisibilityContext
") PresentationContext;
		StepVisual_InvisibilityContext PresentationContext ();
		%feature("compactdefaultargs") SetPresentationContext;
		%feature("autodoc", "	:param aPresentationContext:
	:type aPresentationContext: StepVisual_InvisibilityContext &
	:rtype: None
") SetPresentationContext;
		void SetPresentationContext (const StepVisual_InvisibilityContext & aPresentationContext);
		%feature("compactdefaultargs") StepVisual_ContextDependentInvisibility;
		%feature("autodoc", "	* Returns a ContextDependentInvisibility

	:rtype: None
") StepVisual_ContextDependentInvisibility;
		 StepVisual_ContextDependentInvisibility ();
};


%make_alias(StepVisual_ContextDependentInvisibility)

%extend StepVisual_ContextDependentInvisibility {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_CoordinatesList;
class StepVisual_CoordinatesList : public StepVisual_TessellatedItem {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param theName:
	:type theName: opencascade::handle<TCollection_HAsciiString> &
	:param thePoints:
	:type thePoints: opencascade::handle<TColgp_HArray1OfXYZ>
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & theName,const opencascade::handle<TColgp_HArray1OfXYZ> & thePoints);
		%feature("compactdefaultargs") Points;
		%feature("autodoc", "	:rtype: opencascade::handle<TColgp_HArray1OfXYZ>
") Points;
		opencascade::handle<TColgp_HArray1OfXYZ> Points ();
		%feature("compactdefaultargs") StepVisual_CoordinatesList;
		%feature("autodoc", "	* Returns a coordinate list

	:rtype: None
") StepVisual_CoordinatesList;
		 StepVisual_CoordinatesList ();
};


%make_alias(StepVisual_CoordinatesList)

%extend StepVisual_CoordinatesList {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_MechanicalDesignGeometricPresentationRepresentation;
class StepVisual_MechanicalDesignGeometricPresentationRepresentation : public StepVisual_PresentationRepresentation {
	public:
		%feature("compactdefaultargs") StepVisual_MechanicalDesignGeometricPresentationRepresentation;
		%feature("autodoc", "	* Returns a MechanicalDesignGeometricPresentationRepresentation

	:rtype: None
") StepVisual_MechanicalDesignGeometricPresentationRepresentation;
		 StepVisual_MechanicalDesignGeometricPresentationRepresentation ();
};


%make_alias(StepVisual_MechanicalDesignGeometricPresentationRepresentation)

%extend StepVisual_MechanicalDesignGeometricPresentationRepresentation {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_OverRidingStyledItem;
class StepVisual_OverRidingStyledItem : public StepVisual_StyledItem {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:param aStyles:
	:type aStyles: opencascade::handle<StepVisual_HArray1OfPresentationStyleAssignment> &
	:param aItem:
	:type aItem: opencascade::handle<Standard_Transient> &
	:param aOverRiddenStyle:
	:type aOverRiddenStyle: opencascade::handle<StepVisual_StyledItem> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & aName,const opencascade::handle<StepVisual_HArray1OfPresentationStyleAssignment> & aStyles,const opencascade::handle<Standard_Transient> & aItem,const opencascade::handle<StepVisual_StyledItem> & aOverRiddenStyle);
		%feature("compactdefaultargs") OverRiddenStyle;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_StyledItem>
") OverRiddenStyle;
		opencascade::handle<StepVisual_StyledItem> OverRiddenStyle ();
		%feature("compactdefaultargs") SetOverRiddenStyle;
		%feature("autodoc", "	:param aOverRiddenStyle:
	:type aOverRiddenStyle: opencascade::handle<StepVisual_StyledItem> &
	:rtype: None
") SetOverRiddenStyle;
		void SetOverRiddenStyle (const opencascade::handle<StepVisual_StyledItem> & aOverRiddenStyle);
		%feature("compactdefaultargs") StepVisual_OverRidingStyledItem;
		%feature("autodoc", "	* Returns a OverRidingStyledItem

	:rtype: None
") StepVisual_OverRidingStyledItem;
		 StepVisual_OverRidingStyledItem ();
};


%make_alias(StepVisual_OverRidingStyledItem)

%extend StepVisual_OverRidingStyledItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_PlanarBox;
class StepVisual_PlanarBox : public StepVisual_PlanarExtent {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:param aSizeInX:
	:type aSizeInX: float
	:param aSizeInY:
	:type aSizeInY: float
	:param aPlacement:
	:type aPlacement: StepGeom_Axis2Placement &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & aName,const Standard_Real aSizeInX,const Standard_Real aSizeInY,const StepGeom_Axis2Placement & aPlacement);
		%feature("compactdefaultargs") Placement;
		%feature("autodoc", "	:rtype: StepGeom_Axis2Placement
") Placement;
		StepGeom_Axis2Placement Placement ();
		%feature("compactdefaultargs") SetPlacement;
		%feature("autodoc", "	:param aPlacement:
	:type aPlacement: StepGeom_Axis2Placement &
	:rtype: None
") SetPlacement;
		void SetPlacement (const StepGeom_Axis2Placement & aPlacement);
		%feature("compactdefaultargs") StepVisual_PlanarBox;
		%feature("autodoc", "	* Returns a PlanarBox

	:rtype: None
") StepVisual_PlanarBox;
		 StepVisual_PlanarBox ();
};


%make_alias(StepVisual_PlanarBox)

%extend StepVisual_PlanarBox {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_PreDefinedColour;
class StepVisual_PreDefinedColour : public StepVisual_Colour {
	public:
		%feature("compactdefaultargs") GetPreDefinedItem;
		%feature("autodoc", "	* return a pre_defined_item part

	:rtype: opencascade::handle<StepVisual_PreDefinedItem>
") GetPreDefinedItem;
		const opencascade::handle<StepVisual_PreDefinedItem> & GetPreDefinedItem ();
		%feature("compactdefaultargs") SetPreDefinedItem;
		%feature("autodoc", "	* set a pre_defined_item part

	:param item:
	:type item: opencascade::handle<StepVisual_PreDefinedItem> &
	:rtype: None
") SetPreDefinedItem;
		void SetPreDefinedItem (const opencascade::handle<StepVisual_PreDefinedItem> & item);
		%feature("compactdefaultargs") StepVisual_PreDefinedColour;
		%feature("autodoc", "	* Returns a PreDefinedColour

	:rtype: None
") StepVisual_PreDefinedColour;
		 StepVisual_PreDefinedColour ();
};


%make_alias(StepVisual_PreDefinedColour)

%extend StepVisual_PreDefinedColour {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_PreDefinedCurveFont;
class StepVisual_PreDefinedCurveFont : public StepVisual_PreDefinedItem {
	public:
		%feature("compactdefaultargs") StepVisual_PreDefinedCurveFont;
		%feature("autodoc", "	* Returns a PreDefinedCurveFont

	:rtype: None
") StepVisual_PreDefinedCurveFont;
		 StepVisual_PreDefinedCurveFont ();
};


%make_alias(StepVisual_PreDefinedCurveFont)

%extend StepVisual_PreDefinedCurveFont {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_PreDefinedTextFont;
class StepVisual_PreDefinedTextFont : public StepVisual_PreDefinedItem {
	public:
		%feature("compactdefaultargs") StepVisual_PreDefinedTextFont;
		%feature("autodoc", "	* Returns a PreDefinedTextFont

	:rtype: None
") StepVisual_PreDefinedTextFont;
		 StepVisual_PreDefinedTextFont ();
};


%make_alias(StepVisual_PreDefinedTextFont)

%extend StepVisual_PreDefinedTextFont {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_PresentationArea;
class StepVisual_PresentationArea : public StepVisual_PresentationRepresentation {
	public:
		%feature("compactdefaultargs") StepVisual_PresentationArea;
		%feature("autodoc", "	* Returns a PresentationArea

	:rtype: None
") StepVisual_PresentationArea;
		 StepVisual_PresentationArea ();
};


%make_alias(StepVisual_PresentationArea)

%extend StepVisual_PresentationArea {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_PresentationStyleByContext;
class StepVisual_PresentationStyleByContext : public StepVisual_PresentationStyleAssignment {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aStyles:
	:type aStyles: opencascade::handle<StepVisual_HArray1OfPresentationStyleSelect> &
	:param aStyleContext:
	:type aStyleContext: StepVisual_StyleContextSelect &
	:rtype: None
") Init;
		void Init (const opencascade::handle<StepVisual_HArray1OfPresentationStyleSelect> & aStyles,const StepVisual_StyleContextSelect & aStyleContext);
		%feature("compactdefaultargs") SetStyleContext;
		%feature("autodoc", "	:param aStyleContext:
	:type aStyleContext: StepVisual_StyleContextSelect &
	:rtype: None
") SetStyleContext;
		void SetStyleContext (const StepVisual_StyleContextSelect & aStyleContext);
		%feature("compactdefaultargs") StepVisual_PresentationStyleByContext;
		%feature("autodoc", "	* Returns a PresentationStyleByContext

	:rtype: None
") StepVisual_PresentationStyleByContext;
		 StepVisual_PresentationStyleByContext ();
		%feature("compactdefaultargs") StyleContext;
		%feature("autodoc", "	:rtype: StepVisual_StyleContextSelect
") StyleContext;
		StepVisual_StyleContextSelect StyleContext ();
};


%make_alias(StepVisual_PresentationStyleByContext)

%extend StepVisual_PresentationStyleByContext {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_PresentationView;
class StepVisual_PresentationView : public StepVisual_PresentationRepresentation {
	public:
		%feature("compactdefaultargs") StepVisual_PresentationView;
		%feature("autodoc", "	* Returns a PresentationView

	:rtype: None
") StepVisual_PresentationView;
		 StepVisual_PresentationView ();
};


%make_alias(StepVisual_PresentationView)

%extend StepVisual_PresentationView {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_TessellatedAnnotationOccurrence;
class StepVisual_TessellatedAnnotationOccurrence : public StepVisual_StyledItem {
	public:
		%feature("compactdefaultargs") StepVisual_TessellatedAnnotationOccurrence;
		%feature("autodoc", "	* Returns a TesselatedAnnotationOccurence

	:rtype: None
") StepVisual_TessellatedAnnotationOccurrence;
		 StepVisual_TessellatedAnnotationOccurrence ();
};


%make_alias(StepVisual_TessellatedAnnotationOccurrence)

%extend StepVisual_TessellatedAnnotationOccurrence {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_TessellatedCurveSet;
class StepVisual_TessellatedCurveSet : public StepVisual_TessellatedItem {
	public:
		%feature("compactdefaultargs") CoordList;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_CoordinatesList>
") CoordList;
		opencascade::handle<StepVisual_CoordinatesList> CoordList ();
		%feature("compactdefaultargs") Curves;
		%feature("autodoc", "	:rtype: NCollection_Handle<StepVisual_VectorOfHSequenceOfInteger>
") Curves;
		NCollection_Handle<StepVisual_VectorOfHSequenceOfInteger> Curves ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param theName:
	:type theName: opencascade::handle<TCollection_HAsciiString> &
	:param theCoordList:
	:type theCoordList: opencascade::handle<StepVisual_CoordinatesList> &
	:param theCurves:
	:type theCurves: NCollection_Handle<StepVisual_VectorOfHSequenceOfInteger> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & theName,const opencascade::handle<StepVisual_CoordinatesList> & theCoordList,const NCollection_Handle<StepVisual_VectorOfHSequenceOfInteger> & theCurves);
		%feature("compactdefaultargs") StepVisual_TessellatedCurveSet;
		%feature("autodoc", "	* Returns a DraughtingCalloutElement select type

	:rtype: None
") StepVisual_TessellatedCurveSet;
		 StepVisual_TessellatedCurveSet ();
};


%make_alias(StepVisual_TessellatedCurveSet)

%extend StepVisual_TessellatedCurveSet {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_TessellatedGeometricSet;
class StepVisual_TessellatedGeometricSet : public StepVisual_TessellatedItem {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param theName:
	:type theName: opencascade::handle<TCollection_HAsciiString> &
	:param theItems:
	:type theItems: NCollection_Handle<StepVisual_Array1OfTessellatedItem> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & theName,const NCollection_Handle<StepVisual_Array1OfTessellatedItem> & theItems);
		%feature("compactdefaultargs") Items;
		%feature("autodoc", "	:rtype: NCollection_Handle<StepVisual_Array1OfTessellatedItem>
") Items;
		NCollection_Handle<StepVisual_Array1OfTessellatedItem> Items ();
		%feature("compactdefaultargs") StepVisual_TessellatedGeometricSet;
		%feature("autodoc", "	* Returns a DraughtingCalloutElement select type

	:rtype: None
") StepVisual_TessellatedGeometricSet;
		 StepVisual_TessellatedGeometricSet ();
};


%make_alias(StepVisual_TessellatedGeometricSet)

%extend StepVisual_TessellatedGeometricSet {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_TextStyleWithBoxCharacteristics;
class StepVisual_TextStyleWithBoxCharacteristics : public StepVisual_TextStyle {
	public:
		%feature("compactdefaultargs") Characteristics;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_HArray1OfBoxCharacteristicSelect>
") Characteristics;
		opencascade::handle<StepVisual_HArray1OfBoxCharacteristicSelect> Characteristics ();
		%feature("compactdefaultargs") CharacteristicsValue;
		%feature("autodoc", "	:param num:
	:type num: int
	:rtype: StepVisual_BoxCharacteristicSelect
") CharacteristicsValue;
		StepVisual_BoxCharacteristicSelect CharacteristicsValue (const Standard_Integer num);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:param aCharacterAppearance:
	:type aCharacterAppearance: opencascade::handle<StepVisual_TextStyleForDefinedFont> &
	:param aCharacteristics:
	:type aCharacteristics: opencascade::handle<StepVisual_HArray1OfBoxCharacteristicSelect> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & aName,const opencascade::handle<StepVisual_TextStyleForDefinedFont> & aCharacterAppearance,const opencascade::handle<StepVisual_HArray1OfBoxCharacteristicSelect> & aCharacteristics);
		%feature("compactdefaultargs") NbCharacteristics;
		%feature("autodoc", "	:rtype: int
") NbCharacteristics;
		Standard_Integer NbCharacteristics ();
		%feature("compactdefaultargs") SetCharacteristics;
		%feature("autodoc", "	:param aCharacteristics:
	:type aCharacteristics: opencascade::handle<StepVisual_HArray1OfBoxCharacteristicSelect> &
	:rtype: None
") SetCharacteristics;
		void SetCharacteristics (const opencascade::handle<StepVisual_HArray1OfBoxCharacteristicSelect> & aCharacteristics);
		%feature("compactdefaultargs") StepVisual_TextStyleWithBoxCharacteristics;
		%feature("autodoc", "	* Returns a TextStyleWithBoxCharacteristics

	:rtype: None
") StepVisual_TextStyleWithBoxCharacteristics;
		 StepVisual_TextStyleWithBoxCharacteristics ();
};


%make_alias(StepVisual_TextStyleWithBoxCharacteristics)

%extend StepVisual_TextStyleWithBoxCharacteristics {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_AnnotationCurveOccurrence;
class StepVisual_AnnotationCurveOccurrence : public StepVisual_AnnotationOccurrence {
	public:
		%feature("compactdefaultargs") StepVisual_AnnotationCurveOccurrence;
		%feature("autodoc", "	* Returns a AnnotationCurveOccurrence

	:rtype: None
") StepVisual_AnnotationCurveOccurrence;
		 StepVisual_AnnotationCurveOccurrence ();
};


%make_alias(StepVisual_AnnotationCurveOccurrence)

%extend StepVisual_AnnotationCurveOccurrence {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_AnnotationFillAreaOccurrence;
class StepVisual_AnnotationFillAreaOccurrence : public StepVisual_AnnotationOccurrence {
	public:
		%feature("compactdefaultargs") FillStyleTarget;
		%feature("autodoc", "	* Returns field fill_style_target

	:rtype: opencascade::handle<StepGeom_GeometricRepresentationItem>
") FillStyleTarget;
		opencascade::handle<StepGeom_GeometricRepresentationItem> FillStyleTarget ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	* Initialize all fields (own and inherited)

	:param theName:
	:type theName: opencascade::handle<TCollection_HAsciiString> &
	:param theStyles:
	:type theStyles: opencascade::handle<StepVisual_HArray1OfPresentationStyleAssignment> &
	:param theItem:
	:type theItem: opencascade::handle<Standard_Transient> &
	:param theFillStyleTarget:
	:type theFillStyleTarget: opencascade::handle<StepGeom_GeometricRepresentationItem> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & theName,const opencascade::handle<StepVisual_HArray1OfPresentationStyleAssignment> & theStyles,const opencascade::handle<Standard_Transient> & theItem,const opencascade::handle<StepGeom_GeometricRepresentationItem> & theFillStyleTarget);
		%feature("compactdefaultargs") SetFillStyleTarget;
		%feature("autodoc", "	* Set field fill_style_target

	:param theTarget:
	:type theTarget: opencascade::handle<StepGeom_GeometricRepresentationItem> &
	:rtype: None
") SetFillStyleTarget;
		void SetFillStyleTarget (const opencascade::handle<StepGeom_GeometricRepresentationItem> & theTarget);
		%feature("compactdefaultargs") StepVisual_AnnotationFillAreaOccurrence;
		%feature("autodoc", "	* Returns a AnnotationFillAreaOccurrence

	:rtype: None
") StepVisual_AnnotationFillAreaOccurrence;
		 StepVisual_AnnotationFillAreaOccurrence ();
};


%make_alias(StepVisual_AnnotationFillAreaOccurrence)

%extend StepVisual_AnnotationFillAreaOccurrence {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_AnnotationPlane;
class StepVisual_AnnotationPlane : public StepVisual_AnnotationOccurrence {
	public:
		%feature("compactdefaultargs") Elements;
		%feature("autodoc", "	* Returns field Elements

	:rtype: inline opencascade::handle<StepVisual_HArray1OfAnnotationPlaneElement>
") Elements;
		inline opencascade::handle<StepVisual_HArray1OfAnnotationPlaneElement> Elements ();
		%feature("compactdefaultargs") ElementsValue;
		%feature("autodoc", "	* Returns Elements with the given number

	:param theNum:
	:type theNum: int
	:rtype: inline StepVisual_AnnotationPlaneElement
") ElementsValue;
		inline StepVisual_AnnotationPlaneElement ElementsValue (const Standard_Integer theNum);
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param theName:
	:type theName: opencascade::handle<TCollection_HAsciiString> &
	:param theStyles:
	:type theStyles: opencascade::handle<StepVisual_HArray1OfPresentationStyleAssignment> &
	:param theItem:
	:type theItem: opencascade::handle<Standard_Transient> &
	:param theElements:
	:type theElements: opencascade::handle<StepVisual_HArray1OfAnnotationPlaneElement> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & theName,const opencascade::handle<StepVisual_HArray1OfPresentationStyleAssignment> & theStyles,const opencascade::handle<Standard_Transient> & theItem,const opencascade::handle<StepVisual_HArray1OfAnnotationPlaneElement> & theElements);
		%feature("compactdefaultargs") NbElements;
		%feature("autodoc", "	* Returns number of Elements

	:rtype: inline int
") NbElements;
		inline Standard_Integer NbElements ();
		%feature("compactdefaultargs") SetElements;
		%feature("autodoc", "	* Set field Elements

	:param theElements:
	:type theElements: opencascade::handle<StepVisual_HArray1OfAnnotationPlaneElement> &
	:rtype: inline void
") SetElements;
		inline void SetElements (const opencascade::handle<StepVisual_HArray1OfAnnotationPlaneElement> & theElements);
		%feature("compactdefaultargs") SetElementsValue;
		%feature("autodoc", "	* Sets Elements with given number

	:param theNum:
	:type theNum: int
	:param theItem:
	:type theItem: StepVisual_AnnotationPlaneElement &
	:rtype: inline void
") SetElementsValue;
		inline void SetElementsValue (const Standard_Integer theNum,const StepVisual_AnnotationPlaneElement & theItem);
		%feature("compactdefaultargs") StepVisual_AnnotationPlane;
		%feature("autodoc", "	* Returns a AnnotationPlane

	:rtype: None
") StepVisual_AnnotationPlane;
		 StepVisual_AnnotationPlane ();
};


%make_alias(StepVisual_AnnotationPlane)

%extend StepVisual_AnnotationPlane {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_AnnotationTextOccurrence;
class StepVisual_AnnotationTextOccurrence : public StepVisual_AnnotationOccurrence {
	public:
		%feature("compactdefaultargs") StepVisual_AnnotationTextOccurrence;
		%feature("autodoc", "	* Returns a AnnotationTextOccurrence

	:rtype: None
") StepVisual_AnnotationTextOccurrence;
		 StepVisual_AnnotationTextOccurrence ();
};


%make_alias(StepVisual_AnnotationTextOccurrence)

%extend StepVisual_AnnotationTextOccurrence {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_CameraModelD3MultiClipping;
class StepVisual_CameraModelD3MultiClipping : public StepVisual_CameraModelD3 {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param theName:
	:type theName: opencascade::handle<TCollection_HAsciiString> &
	:param theViewReferenceSystem:
	:type theViewReferenceSystem: opencascade::handle<StepGeom_Axis2Placement3d> &
	:param thePerspectiveOfVolume:
	:type thePerspectiveOfVolume: opencascade::handle<StepVisual_ViewVolume> &
	:param theShapeClipping:
	:type theShapeClipping: opencascade::handle<StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & theName,const opencascade::handle<StepGeom_Axis2Placement3d> & theViewReferenceSystem,const opencascade::handle<StepVisual_ViewVolume> & thePerspectiveOfVolume,const opencascade::handle<StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect> & theShapeClipping);
		%feature("compactdefaultargs") SetShapeClipping;
		%feature("autodoc", "	:param theShapeClipping:
	:type theShapeClipping: opencascade::handle<StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect> &
	:rtype: None
") SetShapeClipping;
		void SetShapeClipping (const opencascade::handle<StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect> & theShapeClipping);
		%feature("compactdefaultargs") ShapeClipping;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect>
") ShapeClipping;
		const opencascade::handle<StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect> ShapeClipping ();
		%feature("compactdefaultargs") StepVisual_CameraModelD3MultiClipping;
		%feature("autodoc", "	* Returns a CameraModelD3MultiClipping

	:rtype: None
") StepVisual_CameraModelD3MultiClipping;
		 StepVisual_CameraModelD3MultiClipping ();
};


%make_alias(StepVisual_CameraModelD3MultiClipping)

%extend StepVisual_CameraModelD3MultiClipping {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_ColourRgb;
class StepVisual_ColourRgb : public StepVisual_ColourSpecification {
	public:
		%feature("compactdefaultargs") Blue;
		%feature("autodoc", "	:rtype: float
") Blue;
		Standard_Real Blue ();
		%feature("compactdefaultargs") Green;
		%feature("autodoc", "	:rtype: float
") Green;
		Standard_Real Green ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:param aRed:
	:type aRed: float
	:param aGreen:
	:type aGreen: float
	:param aBlue:
	:type aBlue: float
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & aName,const Standard_Real aRed,const Standard_Real aGreen,const Standard_Real aBlue);
		%feature("compactdefaultargs") Red;
		%feature("autodoc", "	:rtype: float
") Red;
		Standard_Real Red ();
		%feature("compactdefaultargs") SetBlue;
		%feature("autodoc", "	:param aBlue:
	:type aBlue: float
	:rtype: None
") SetBlue;
		void SetBlue (const Standard_Real aBlue);
		%feature("compactdefaultargs") SetGreen;
		%feature("autodoc", "	:param aGreen:
	:type aGreen: float
	:rtype: None
") SetGreen;
		void SetGreen (const Standard_Real aGreen);
		%feature("compactdefaultargs") SetRed;
		%feature("autodoc", "	:param aRed:
	:type aRed: float
	:rtype: None
") SetRed;
		void SetRed (const Standard_Real aRed);
		%feature("compactdefaultargs") StepVisual_ColourRgb;
		%feature("autodoc", "	* Returns a ColourRgb

	:rtype: None
") StepVisual_ColourRgb;
		 StepVisual_ColourRgb ();
};


%make_alias(StepVisual_ColourRgb)

%extend StepVisual_ColourRgb {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_ContextDependentOverRidingStyledItem;
class StepVisual_ContextDependentOverRidingStyledItem : public StepVisual_OverRidingStyledItem {
	public:
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aName:
	:type aName: opencascade::handle<TCollection_HAsciiString> &
	:param aStyles:
	:type aStyles: opencascade::handle<StepVisual_HArray1OfPresentationStyleAssignment> &
	:param aItem:
	:type aItem: opencascade::handle<Standard_Transient> &
	:param aOverRiddenStyle:
	:type aOverRiddenStyle: opencascade::handle<StepVisual_StyledItem> &
	:param aStyleContext:
	:type aStyleContext: opencascade::handle<StepVisual_HArray1OfStyleContextSelect> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<TCollection_HAsciiString> & aName,const opencascade::handle<StepVisual_HArray1OfPresentationStyleAssignment> & aStyles,const opencascade::handle<Standard_Transient> & aItem,const opencascade::handle<StepVisual_StyledItem> & aOverRiddenStyle,const opencascade::handle<StepVisual_HArray1OfStyleContextSelect> & aStyleContext);
		%feature("compactdefaultargs") NbStyleContext;
		%feature("autodoc", "	:rtype: int
") NbStyleContext;
		Standard_Integer NbStyleContext ();
		%feature("compactdefaultargs") SetStyleContext;
		%feature("autodoc", "	:param aStyleContext:
	:type aStyleContext: opencascade::handle<StepVisual_HArray1OfStyleContextSelect> &
	:rtype: None
") SetStyleContext;
		void SetStyleContext (const opencascade::handle<StepVisual_HArray1OfStyleContextSelect> & aStyleContext);
		%feature("compactdefaultargs") StepVisual_ContextDependentOverRidingStyledItem;
		%feature("autodoc", "	* Returns a ContextDependentOverRidingStyledItem

	:rtype: None
") StepVisual_ContextDependentOverRidingStyledItem;
		 StepVisual_ContextDependentOverRidingStyledItem ();
		%feature("compactdefaultargs") StyleContext;
		%feature("autodoc", "	:rtype: opencascade::handle<StepVisual_HArray1OfStyleContextSelect>
") StyleContext;
		opencascade::handle<StepVisual_HArray1OfStyleContextSelect> StyleContext ();
		%feature("compactdefaultargs") StyleContextValue;
		%feature("autodoc", "	:param num:
	:type num: int
	:rtype: StepVisual_StyleContextSelect
") StyleContextValue;
		StepVisual_StyleContextSelect StyleContextValue (const Standard_Integer num);
};


%make_alias(StepVisual_ContextDependentOverRidingStyledItem)

%extend StepVisual_ContextDependentOverRidingStyledItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_DraughtingAnnotationOccurrence;
class StepVisual_DraughtingAnnotationOccurrence : public StepVisual_AnnotationOccurrence {
	public:
		%feature("compactdefaultargs") StepVisual_DraughtingAnnotationOccurrence;
		%feature("autodoc", "	* Returns a DraughtingAnnotationOccurrence

	:rtype: None
") StepVisual_DraughtingAnnotationOccurrence;
		 StepVisual_DraughtingAnnotationOccurrence ();
};


%make_alias(StepVisual_DraughtingAnnotationOccurrence)

%extend StepVisual_DraughtingAnnotationOccurrence {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_DraughtingPreDefinedColour;
class StepVisual_DraughtingPreDefinedColour : public StepVisual_PreDefinedColour {
	public:
		%feature("compactdefaultargs") StepVisual_DraughtingPreDefinedColour;
		%feature("autodoc", "	* Returns a DraughtingPreDefinedColour

	:rtype: None
") StepVisual_DraughtingPreDefinedColour;
		 StepVisual_DraughtingPreDefinedColour ();
};


%make_alias(StepVisual_DraughtingPreDefinedColour)

%extend StepVisual_DraughtingPreDefinedColour {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_DraughtingPreDefinedCurveFont;
class StepVisual_DraughtingPreDefinedCurveFont : public StepVisual_PreDefinedCurveFont {
	public:
		%feature("compactdefaultargs") StepVisual_DraughtingPreDefinedCurveFont;
		%feature("autodoc", "	* Returns a DraughtingPreDefinedCurveFont

	:rtype: None
") StepVisual_DraughtingPreDefinedCurveFont;
		 StepVisual_DraughtingPreDefinedCurveFont ();
};


%make_alias(StepVisual_DraughtingPreDefinedCurveFont)

%extend StepVisual_DraughtingPreDefinedCurveFont {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_MechanicalDesignGeometricPresentationArea;
class StepVisual_MechanicalDesignGeometricPresentationArea : public StepVisual_PresentationArea {
	public:
		%feature("compactdefaultargs") StepVisual_MechanicalDesignGeometricPresentationArea;
		%feature("autodoc", "	* Returns a MechanicalDesignGeometricPresentationArea

	:rtype: None
") StepVisual_MechanicalDesignGeometricPresentationArea;
		 StepVisual_MechanicalDesignGeometricPresentationArea ();
};


%make_alias(StepVisual_MechanicalDesignGeometricPresentationArea)

%extend StepVisual_MechanicalDesignGeometricPresentationArea {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor StepVisual_AnnotationCurveOccurrenceAndAnnotationOccurrenceAndGeomReprItemAndReprItemAndStyledItem;
class StepVisual_AnnotationCurveOccurrenceAndAnnotationOccurrenceAndGeomReprItemAndReprItemAndStyledItem : public StepVisual_AnnotationCurveOccurrence {
	public:
		%feature("compactdefaultargs") StepVisual_AnnotationCurveOccurrenceAndAnnotationOccurrenceAndGeomReprItemAndReprItemAndStyledItem;
		%feature("autodoc", "	:rtype: None
") StepVisual_AnnotationCurveOccurrenceAndAnnotationOccurrenceAndGeomReprItemAndReprItemAndStyledItem;
		 StepVisual_AnnotationCurveOccurrenceAndAnnotationOccurrenceAndGeomReprItemAndReprItemAndStyledItem ();
};


%make_alias(StepVisual_AnnotationCurveOccurrenceAndAnnotationOccurrenceAndGeomReprItemAndReprItemAndStyledItem)

%extend StepVisual_AnnotationCurveOccurrenceAndAnnotationOccurrenceAndGeomReprItemAndReprItemAndStyledItem {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
/* harray1 class */
class StepVisual_HArray1OfAnnotationPlaneElement : public  StepVisual_Array1OfAnnotationPlaneElement, public Standard_Transient {
  public:
    StepVisual_HArray1OfAnnotationPlaneElement(const Standard_Integer theLower, const Standard_Integer theUpper);
    StepVisual_HArray1OfAnnotationPlaneElement(const Standard_Integer theLower, const Standard_Integer theUpper, const  StepVisual_Array1OfAnnotationPlaneElement::value_type& theValue);
    StepVisual_HArray1OfAnnotationPlaneElement(const  StepVisual_Array1OfAnnotationPlaneElement& theOther);
    const  StepVisual_Array1OfAnnotationPlaneElement& Array1();
     StepVisual_Array1OfAnnotationPlaneElement& ChangeArray1();
};
%make_alias(StepVisual_HArray1OfAnnotationPlaneElement)


class StepVisual_HArray1OfDraughtingCalloutElement : public  StepVisual_Array1OfDraughtingCalloutElement, public Standard_Transient {
  public:
    StepVisual_HArray1OfDraughtingCalloutElement(const Standard_Integer theLower, const Standard_Integer theUpper);
    StepVisual_HArray1OfDraughtingCalloutElement(const Standard_Integer theLower, const Standard_Integer theUpper, const  StepVisual_Array1OfDraughtingCalloutElement::value_type& theValue);
    StepVisual_HArray1OfDraughtingCalloutElement(const  StepVisual_Array1OfDraughtingCalloutElement& theOther);
    const  StepVisual_Array1OfDraughtingCalloutElement& Array1();
     StepVisual_Array1OfDraughtingCalloutElement& ChangeArray1();
};
%make_alias(StepVisual_HArray1OfDraughtingCalloutElement)


class StepVisual_HArray1OfDirectionCountSelect : public  StepVisual_Array1OfDirectionCountSelect, public Standard_Transient {
  public:
    StepVisual_HArray1OfDirectionCountSelect(const Standard_Integer theLower, const Standard_Integer theUpper);
    StepVisual_HArray1OfDirectionCountSelect(const Standard_Integer theLower, const Standard_Integer theUpper, const  StepVisual_Array1OfDirectionCountSelect::value_type& theValue);
    StepVisual_HArray1OfDirectionCountSelect(const  StepVisual_Array1OfDirectionCountSelect& theOther);
    const  StepVisual_Array1OfDirectionCountSelect& Array1();
     StepVisual_Array1OfDirectionCountSelect& ChangeArray1();
};
%make_alias(StepVisual_HArray1OfDirectionCountSelect)


class StepVisual_HArray1OfStyleContextSelect : public  StepVisual_Array1OfStyleContextSelect, public Standard_Transient {
  public:
    StepVisual_HArray1OfStyleContextSelect(const Standard_Integer theLower, const Standard_Integer theUpper);
    StepVisual_HArray1OfStyleContextSelect(const Standard_Integer theLower, const Standard_Integer theUpper, const  StepVisual_Array1OfStyleContextSelect::value_type& theValue);
    StepVisual_HArray1OfStyleContextSelect(const  StepVisual_Array1OfStyleContextSelect& theOther);
    const  StepVisual_Array1OfStyleContextSelect& Array1();
     StepVisual_Array1OfStyleContextSelect& ChangeArray1();
};
%make_alias(StepVisual_HArray1OfStyleContextSelect)


class StepVisual_HArray1OfPresentationStyleSelect : public  StepVisual_Array1OfPresentationStyleSelect, public Standard_Transient {
  public:
    StepVisual_HArray1OfPresentationStyleSelect(const Standard_Integer theLower, const Standard_Integer theUpper);
    StepVisual_HArray1OfPresentationStyleSelect(const Standard_Integer theLower, const Standard_Integer theUpper, const  StepVisual_Array1OfPresentationStyleSelect::value_type& theValue);
    StepVisual_HArray1OfPresentationStyleSelect(const  StepVisual_Array1OfPresentationStyleSelect& theOther);
    const  StepVisual_Array1OfPresentationStyleSelect& Array1();
     StepVisual_Array1OfPresentationStyleSelect& ChangeArray1();
};
%make_alias(StepVisual_HArray1OfPresentationStyleSelect)


class StepVisual_HArray1OfCurveStyleFontPattern : public  StepVisual_Array1OfCurveStyleFontPattern, public Standard_Transient {
  public:
    StepVisual_HArray1OfCurveStyleFontPattern(const Standard_Integer theLower, const Standard_Integer theUpper);
    StepVisual_HArray1OfCurveStyleFontPattern(const Standard_Integer theLower, const Standard_Integer theUpper, const  StepVisual_Array1OfCurveStyleFontPattern::value_type& theValue);
    StepVisual_HArray1OfCurveStyleFontPattern(const  StepVisual_Array1OfCurveStyleFontPattern& theOther);
    const  StepVisual_Array1OfCurveStyleFontPattern& Array1();
     StepVisual_Array1OfCurveStyleFontPattern& ChangeArray1();
};
%make_alias(StepVisual_HArray1OfCurveStyleFontPattern)


class StepVisual_HArray1OfBoxCharacteristicSelect : public  StepVisual_Array1OfBoxCharacteristicSelect, public Standard_Transient {
  public:
    StepVisual_HArray1OfBoxCharacteristicSelect(const Standard_Integer theLower, const Standard_Integer theUpper);
    StepVisual_HArray1OfBoxCharacteristicSelect(const Standard_Integer theLower, const Standard_Integer theUpper, const  StepVisual_Array1OfBoxCharacteristicSelect::value_type& theValue);
    StepVisual_HArray1OfBoxCharacteristicSelect(const  StepVisual_Array1OfBoxCharacteristicSelect& theOther);
    const  StepVisual_Array1OfBoxCharacteristicSelect& Array1();
     StepVisual_Array1OfBoxCharacteristicSelect& ChangeArray1();
};
%make_alias(StepVisual_HArray1OfBoxCharacteristicSelect)


class StepVisual_HArray1OfPresentationStyleAssignment : public  StepVisual_Array1OfPresentationStyleAssignment, public Standard_Transient {
  public:
    StepVisual_HArray1OfPresentationStyleAssignment(const Standard_Integer theLower, const Standard_Integer theUpper);
    StepVisual_HArray1OfPresentationStyleAssignment(const Standard_Integer theLower, const Standard_Integer theUpper, const  StepVisual_Array1OfPresentationStyleAssignment::value_type& theValue);
    StepVisual_HArray1OfPresentationStyleAssignment(const  StepVisual_Array1OfPresentationStyleAssignment& theOther);
    const  StepVisual_Array1OfPresentationStyleAssignment& Array1();
     StepVisual_Array1OfPresentationStyleAssignment& ChangeArray1();
};
%make_alias(StepVisual_HArray1OfPresentationStyleAssignment)


class StepVisual_HArray1OfFillStyleSelect : public  StepVisual_Array1OfFillStyleSelect, public Standard_Transient {
  public:
    StepVisual_HArray1OfFillStyleSelect(const Standard_Integer theLower, const Standard_Integer theUpper);
    StepVisual_HArray1OfFillStyleSelect(const Standard_Integer theLower, const Standard_Integer theUpper, const  StepVisual_Array1OfFillStyleSelect::value_type& theValue);
    StepVisual_HArray1OfFillStyleSelect(const  StepVisual_Array1OfFillStyleSelect& theOther);
    const  StepVisual_Array1OfFillStyleSelect& Array1();
     StepVisual_Array1OfFillStyleSelect& ChangeArray1();
};
%make_alias(StepVisual_HArray1OfFillStyleSelect)


class StepVisual_HArray1OfTextOrCharacter : public  StepVisual_Array1OfTextOrCharacter, public Standard_Transient {
  public:
    StepVisual_HArray1OfTextOrCharacter(const Standard_Integer theLower, const Standard_Integer theUpper);
    StepVisual_HArray1OfTextOrCharacter(const Standard_Integer theLower, const Standard_Integer theUpper, const  StepVisual_Array1OfTextOrCharacter::value_type& theValue);
    StepVisual_HArray1OfTextOrCharacter(const  StepVisual_Array1OfTextOrCharacter& theOther);
    const  StepVisual_Array1OfTextOrCharacter& Array1();
     StepVisual_Array1OfTextOrCharacter& ChangeArray1();
};
%make_alias(StepVisual_HArray1OfTextOrCharacter)


class StepVisual_HArray1OfSurfaceStyleElementSelect : public  StepVisual_Array1OfSurfaceStyleElementSelect, public Standard_Transient {
  public:
    StepVisual_HArray1OfSurfaceStyleElementSelect(const Standard_Integer theLower, const Standard_Integer theUpper);
    StepVisual_HArray1OfSurfaceStyleElementSelect(const Standard_Integer theLower, const Standard_Integer theUpper, const  StepVisual_Array1OfSurfaceStyleElementSelect::value_type& theValue);
    StepVisual_HArray1OfSurfaceStyleElementSelect(const  StepVisual_Array1OfSurfaceStyleElementSelect& theOther);
    const  StepVisual_Array1OfSurfaceStyleElementSelect& Array1();
     StepVisual_Array1OfSurfaceStyleElementSelect& ChangeArray1();
};
%make_alias(StepVisual_HArray1OfSurfaceStyleElementSelect)


class StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect : public  StepVisual_Array1OfCameraModelD3MultiClippingUnionSelect, public Standard_Transient {
  public:
    StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect(const Standard_Integer theLower, const Standard_Integer theUpper);
    StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect(const Standard_Integer theLower, const Standard_Integer theUpper, const  StepVisual_Array1OfCameraModelD3MultiClippingUnionSelect::value_type& theValue);
    StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect(const  StepVisual_Array1OfCameraModelD3MultiClippingUnionSelect& theOther);
    const  StepVisual_Array1OfCameraModelD3MultiClippingUnionSelect& Array1();
     StepVisual_Array1OfCameraModelD3MultiClippingUnionSelect& ChangeArray1();
};
%make_alias(StepVisual_HArray1OfCameraModelD3MultiClippingUnionSelect)


class StepVisual_HArray1OfLayeredItem : public  StepVisual_Array1OfLayeredItem, public Standard_Transient {
  public:
    StepVisual_HArray1OfLayeredItem(const Standard_Integer theLower, const Standard_Integer theUpper);
    StepVisual_HArray1OfLayeredItem(const Standard_Integer theLower, const Standard_Integer theUpper, const  StepVisual_Array1OfLayeredItem::value_type& theValue);
    StepVisual_HArray1OfLayeredItem(const  StepVisual_Array1OfLayeredItem& theOther);
    const  StepVisual_Array1OfLayeredItem& Array1();
     StepVisual_Array1OfLayeredItem& ChangeArray1();
};
%make_alias(StepVisual_HArray1OfLayeredItem)


class StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect : public  StepVisual_Array1OfCameraModelD3MultiClippingInterectionSelect, public Standard_Transient {
  public:
    StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect(const Standard_Integer theLower, const Standard_Integer theUpper);
    StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect(const Standard_Integer theLower, const Standard_Integer theUpper, const  StepVisual_Array1OfCameraModelD3MultiClippingInterectionSelect::value_type& theValue);
    StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect(const  StepVisual_Array1OfCameraModelD3MultiClippingInterectionSelect& theOther);
    const  StepVisual_Array1OfCameraModelD3MultiClippingInterectionSelect& Array1();
     StepVisual_Array1OfCameraModelD3MultiClippingInterectionSelect& ChangeArray1();
};
%make_alias(StepVisual_HArray1OfCameraModelD3MultiClippingInterectionSelect)


class StepVisual_HArray1OfInvisibleItem : public  StepVisual_Array1OfInvisibleItem, public Standard_Transient {
  public:
    StepVisual_HArray1OfInvisibleItem(const Standard_Integer theLower, const Standard_Integer theUpper);
    StepVisual_HArray1OfInvisibleItem(const Standard_Integer theLower, const Standard_Integer theUpper, const  StepVisual_Array1OfInvisibleItem::value_type& theValue);
    StepVisual_HArray1OfInvisibleItem(const  StepVisual_Array1OfInvisibleItem& theOther);
    const  StepVisual_Array1OfInvisibleItem& Array1();
     StepVisual_Array1OfInvisibleItem& ChangeArray1();
};
%make_alias(StepVisual_HArray1OfInvisibleItem)


/* harray2 class */
/* harray2 class */
