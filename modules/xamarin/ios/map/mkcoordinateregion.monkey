Import cllocationcoordinate2d
Import mkmaprect
Import mkcoordinatespan


Extern

Class MKCoordinateRegion = "MonoTouch.MapKit.MKCoordinateRegion"
	Field Center:CLLocationCoordinate2D
	Field Span:MKCoordinateSpan
	
	Function FromDistance:MKCoordinateRegion(center:CLLocationCoordinate2D, latitudinalMeters:Float, longitudinalMeters:Float)
	Function FromMapRect:MKCoordinateRegion(rect:MKMapRect)
End

