Import cllocationcoordinate2d
Import mkshape
Import mkmaprect

Extern



Class MKCircle Extends MKShape = "MonoTouch.MapKit.MKCircle"
	Field BoundingMap:MKMapRect
	Field Radius:Float
	
	Function Circle:MKCircle(withcenterCoordinate:CLLocationCoordinate2D, radius:float )
	Function CircleWithMapRect:MKCircle(mapRect:MKMapRect)
End
