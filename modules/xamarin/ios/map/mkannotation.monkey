Import cllocationcoordinate2d
Import "native/basicmapannotation.cs"
Import xamarin.ios.ns.nsobject

Extern

Class BasicMapAnnotation Extends MKAnnotation = "BasicMapAnnotation"
	Function Create:BasicMapAnnotation(coordinate:CLLocationCoordinate2D, title:String, subtitle:String)
	
		
End

Class MKAnnotation Extends NSObject = "MonoTouch.MapKit.MKAnnotation"
	Field Coordinate:CLLocationCoordinate2D
	Field Subtitle:String	'getter only
	Field Title:String		'getter only
	

End
