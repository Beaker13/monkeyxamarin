Import "native/mkpinannotationview.cs"
Import mkannotationview

Extern

Class MKPinAnnotationView Extends MKAnnotationView = "MonoTouch.MapKit.MKPinAnnotationView"
	Field AnimatesDrop:Bool
	Field PinColor:MKPinAnnotationColor

End

Class MKPinAnnotationViewEx Extends MKAnnotationView = "MKPinAnnotationViewEx"
	Field AnimatesDrop:Bool
	Field PinColor:MKPinAnnotationColor

	Function Create:MKPinAnnotationView(annotation:NSObject, reuseIdentifier:String)
End



Class MKPinAnnotationColor = "MonoTouch.MapKit.MKPinAnnotationColor"
	Global Green:MKPinAnnotationColor
	Global Purple:MKPinAnnotationColor
	Global Red:MKPinAnnotationColor
End

