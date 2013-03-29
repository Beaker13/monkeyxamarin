Import xamarin.ios.ui.uiview
Import mkmaptype
Import mkcoordinateregion
Import xamarin.ios.ns.nsobject
Import mkannotation
Import mkannotationview
Import mkmapviewdelegate


Extern

Class MKMapView Extends UIView = "MonoTouch.MapKit.MKMapView"
	Field ShowsUserLocation:Bool
	Field MapType:MKMapType
	Field Region:MKCoordinateRegion
	Field Delegate:MKMapViewDelegate
	Field UserLocationVisible:bool
	
	Method AddOverlay:Void(overlay:NSObject)
	Method AddAnnotation:Void(annotation:MKAnnotation)
	Method DequeueReusableAnnotation:MKAnnotationView(withViewIdentifier:String)
	
	
End