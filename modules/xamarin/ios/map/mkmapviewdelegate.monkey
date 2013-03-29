Import mkmapview
Import mkannotationview
Import xamarin.ios.ui.uicontrol
Import xamarin.ios.ns.nsobject
Import mkannotationview
Import mkuserlocation
Import mkoverlayview


Extern


Class MKMapViewDelegate = "MonoTouch.MapKit.MKMapViewDelegate"
	Method CalloutAccessoryControlTapped:Void(mapView:MKMapView, annotationView:MKAnnotationView, control:UIControl)
	'Method ChangedDragState:Void(mapView:MKMapView, annnotationView:MKAnnotationView, newState:MKAnnotationViewDragState, oldState:MKAnnotationViewDragState)
	
	Method GetViewForAnnotation:MKAnnotationView(mapView:MKMapView, annotation:NSObject)
	Method GetViewForOverlay:MKOverlayView(mapView:MKMapView, overlay:NSObject)
	Method RegionChanged:Void(mapView:MKMapView, animated:Bool)
	Method DidUpdateUserLocation:Void(mapView:MKMapView, userLocation:MKUserLocation)
	
End
