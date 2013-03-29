Import xamarin.ios.ns.nsstring


Extern

Class UIDevice = "UIDevice"
	Global CurrentDevice:UIDevice
	
	Field BatteryLevel:Float
	Field BatterMonitoringEnabled:Bool
	Field GeneratesDeviceOrientationNotifications:Bool
	Field IsMultitaskingSupported:Bool
	Field LocalizedModel:String
	Field Model:String
	Field Name:String
	Field Orientation:UIDeviceOrientation
	Field OrientationDidChangeNotification:NSString
	Field ProximityMonitoringEnabled:Bool
	Field ProximityState:Bool
	Field ProximityStateDidChangeNotification:NSString
	Field SystemName:String
	Field SystemVersion:String
	Field UserInterfaceIdiom:UIUserInterfaceIdiom
	
	
	
	Function BatteryLevelDidChangeNotification:NSString()

	Method CheckSystemVersion:Bool(major:Int, minor:Int)
	Method BeginGeneratingDeviceOrientationNotifications:Void()
	Method EndGeneratingDeviceOrientationNotifications:Void()
	Method PlayInputClick:Void()
	
End




Class UIUserInterfaceIdiom = "UIUserInterfaceIdiom"
	Global Pad:UIUserInterfaceIdiom
	Global Phone:UIUserInterfaceIdiom
End

Class UIDeviceOrientation = "UIDeviceOrientation"
	Global FaceUp:UIDeviceOrientation
	Global FaceDown:UIDeviceOrientation
	Global LandscapeLeft:UIDeviceOrientation
	Global LandscapeRight:UIDeviceOrientation
	Global Portrait:UIDeviceOrientation
	Global PortraitUpsideDown:UIDeviceOrientation
	Global Unknown:UIDeviceOrientation
End