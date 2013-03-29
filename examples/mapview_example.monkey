Import xamarin.ios

Global window:UIWindow
Global homeScreen:HomeScreen

'http://forums.xamarin.com/discussion/246/clicking-on-a-mapview-annotation-sigsegv-problem

Class ButtonDelegate Extends UIButtonDelegate
	Field viewController:UIViewController
	
	Method New(viewController:UIViewController)
		Self.viewController = viewController
	End
	
	Method Clicked:Void(button:UIButton)
		Print "ButtonDelegate: "+button.Title(UIControlState.Normal)
		Local home:= HomeScreen(viewController)
		home.OpenMap()
	End
End


Class MapViewDelegate Extends MKMapViewDelegate
	Field detailButton:UIButton
	Field annotationIdentifier:String = "BasicAnnotation"
	Field annotationView:MKAnnotationView
	Field circleView:MKCircleView	
	
	Field viewController:UIViewController
	
	Method New(viewController:UIViewController)
		Self.viewController = viewController
	End
	
	Method CalloutAccessoryControlTapped:Void(mapView:MKMapView, annotationView:MKAnnotationView, control:UIControl)
		Print "CalloutAccessoryControlTapped"
		Local home:= HomeScreen(viewController)
		CreateAlertView("Annotation Clicked", "You clicked on " + MKAnnotation(home.annotation).Coordinate.Latitude+ ", " + MKAnnotation(home.annotation).Coordinate.Longitude, "OK", True)
	End
	
	'Method ChangedDragState:Void(mapView:MKMapView, annnotationView:MKAnnotationView, newState:MKAnnotationViewDragState, oldState:MKAnnotationViewDragState)	
	'End
	
'	Method GetViewForAnnotation:MKAnnotationView(mapView:MKMapView, annotation:NSObject)
'		Print "GetViewForAnnotation"
'	End

	Method RegionChanged:Void(mapView:MKMapView, animated:Bool)
		Print "RegionChanged"
	End
	
	Method DidUpdateUserLocation:Void(mapView:MKMapView, userLocation:MKUserLocation)
		Print "DidUpdateUserLocation: userLocation.Coordinate: lat="+userLocation.Coordinate.Latitude+" lon="+userLocation.Coordinate.Longitude
	End
	
	Method GetViewForAnnotation:MKAnnotationView(mapView:MKMapView, annotation:NSObject)
 		Print "GetViewForAnnotation"
       '// try and dequeue the annotation view
        annotationView = mapView.DequeueReusableAnnotation(annotationIdentifier);   
        '// if we couldn't dequeue one, create a new one
        If annotationView = Null
            annotationView = MKPinAnnotationViewEx.Create(annotation, annotationIdentifier)
        Else '// if we did dequeue one for reuse, assign the annotation to it
            annotationView.Annotation = annotation
		End
		            
        '// configure our annotation view properties
        annotationView.CanShowCallout = True
        MKPinAnnotationView(annotationView).AnimatesDrop = True
        MKPinAnnotationView(annotationView).PinColor = MKPinAnnotationColor.Green
        annotationView.Selected = True
               
        '// you can add an accessory view; in this case, a button on the right and an image on the left
		detailButton = UIButton.FromType(UIButtonType.DetailDisclosure)

        annotationView.RightCalloutAccessoryView = detailButton
               
        annotationView.LeftCalloutAccessoryView = New UIImageView()
        UIImageView(annotationView.LeftCalloutAccessoryView).Image = UIImage.FromFile("data/monkey1.png")	'FromBundle("data/monkey1.png")
        
        Return annotationView
	End
		
	Method GetViewForOverlay:MKOverlayView(mapView:MKMapView, overlay:NSObject)
		Print "GetViewForOverlay"
		If circleView = Null
			circleView = MKCircleViewEx.Create(MKCircle(overlay))
			circleView.FillColor = UIColor.Purple
			circleView.Alpha = 0.5
		End
		Return circleView
	End
End

Class SegmentedDelegate Extends UISegmentedControlDelegate	
	Field viewController:UIViewController
	
	Method New(viewController:UIViewController)
		Self.viewController = viewController
	End

	Method ValueChanged:Void(mapTypes:UISegmentedControl)
		Local home:= HomeScreen(viewController)
	    Select mapTypes.SelectedSegment
		    Case 0
		        home.mapView.MapType = MKMapType.Standard
		    Case 1
		        home.mapView.MapType = MKMapType.Satellite
		    Case 2
		        home.mapView.MapType = MKMapType.Hybrid
	    End		
	End

End



Class HomeScreen Extends UIViewController
	Field button:UIButton
	Field annotation:BasicMapAnnotation
	Field mapView:MKMapView
	Field circleOverlay:MKCircle
	
	Field mapTypes:UISegmentedControl
	
	Method ViewDidLoad:Void()
		Super.ViewDidLoad()
		
		button = CreateButton(View.Frame.Width/2-55,50,110,50, "Open map")
		button.BackgroundColor = UIColor.White
		button.Delegate = New ButtonDelegate(Self)
		View.AddSubview(button)
		
	End
	
	Method OpenMap()
		mapView = CreateMapView(View.Bounds)
		View.AddSubview(mapView)
		mapView.ShowsUserLocation = True
		mapView.Delegate = New MapViewDelegate(Self) 
		
		
		Local coords:= New CLLocationCoordinate2D()
		coords.Latitude = 48.857
		coords.Longitude = 2.351
		annotation = BasicMapAnnotation.Create (coords, "Paris", "City of Light")
		mapView.AddAnnotation(annotation)
		
		circleOverlay = MKCircle.Circle (coords, 2000000)
		mapView.AddOverlay (circleOverlay)	
		
		mapTypes = CreateSegmentedControl(Rect.Create((View.Bounds.Width-260)/2, View.Bounds.Height-60, 260,30), "Road|Satellite|Hybrid")
'		mapTypes.InsertSegment("Road", 0, False)
'		mapTypes.InsertSegment("Satellite", 1, False)
'		mapTypes.InsertSegment("Hybrid", 2, False)
		mapTypes.SelectedSegment = 0		'// Road is the Default
		mapTypes.AutoresizingMask = UIViewAutoresizing.FlexibleTopMargin
		mapTypes.Delegate = New SegmentedDelegate(Self)
		View.AddSubview(mapTypes)
	End	
End



Function Main()
	window = CreateWindow(UIScreen.MainScreen.Bounds)	

	homeScreen = New HomeScreen ()

	window.RootViewController = homeScreen
	window.MakeKeyAndVisible ()	
End
