Import xamarin.ios

Global window:UIWindow
Global homeScreen:HomeScreen


Class TouchDrawView Extends UIView
	Field touchSpots:List<Spot> = New List<Spot> ()
	
	'/// <summary>
	'/// rect changes depending on If the whole view is being redrawn, Or just a section
	'/// </summary>
	Method Draw:Void (rect:RectangleF)
		Print "Draw() Called"
		Super.Draw (rect)
		
		Local context:CGContext = UIGraphics.GetCurrentContext()
		'// turn on anti-aliasing
		context.SetAllowsAntialiasing (True)
		
		'// loop through each spot And draw it
		For Local spot:Spot = Eachin touchSpots
			context.SetFillColor (spot.red, spot.green, spot.blue, spot.alpha)
			context.FillEllipseInRect (Rect.Create (spot.x, spot.y, 15, 15))
		End
	End
	
	Method TouchesBegan:Void(touches:NSSet, evt:UIEvent)
		Super.TouchesBegan (touches, evt)
		
		'// get the touch
		Local touch:= UITouch(touches.AnyObject)
		If touch <> Null AddSpot (touch)
	End
	
	Method TouchesMoved:Void (touches:NSSet, evt:UIEvent)
		Super.TouchesMoved (touches, evt)
		
		'// get the touch
		Local touch:= UITouch(touches.AnyObject)
		If touch <> Null AddSpot (touch)
	End
	
	Method AddSpot:Void (touch:UITouch)
		'// create a random color spot at the point of touch, Then add it To the others
		Local spot:Spot = Spot.CreateNewRandomColor (touch.LocationInView(Self).X, touch.LocationInView(Self).Y)
		touchSpots.AddLast (spot)
		'// tell the OS To redraw
		SetNeedsDisplay()
	End
End
	
Class Spot
	Field x:Float, y:Float	':PointF 
	Field red:Float 
	Field green:Float 
	Field blue:Float
	Field alpha:Float
	
	Function CreateNewRandomColor:Spot(x:Float,y:Float)
		Local spot:Spot = New Spot ()
		spot.red = Rnd(0,1)
		spot.green = Rnd(0,1)
		spot.blue = Rnd(0,1)
		spot.alpha = 1
		spot.x = x
		spot.y = y
'		spot.Point = point
		Return spot
	End
End

Class HomeScreen Extends UIViewController
	Method ViewDidLoad:Void()
		Super.ViewDidLoad()	
	End
	
	Method LoadView:Void()
		Super.LoadView()
		Print "LoadView called"
		View = New TouchDrawView()
		View.BackgroundColor = UIColor.White
	End
End


Function Main()
	window = CreateWindow(UIScreen.MainScreen.Bounds)	

	homeScreen = New HomeScreen ()

	window.RootViewController = homeScreen
	window.MakeKeyAndVisible ()
End