Import xamarin.ios

Global window:UIWindow
Global homeScreen:HomeScreen

Class SliderDelegate Extends UISliderDelegate
	Field viewController:UIViewController
	Method New(viewController:UIViewController)
		Self.viewController = viewController
	End
	
	Method ValueChanged:Void(slider:UISlider)
		Print "SliderDelegate: "+slider.Value
		HomeScreen(viewController).label.Text = String(slider.Value)
	End
End

Class HomeScreen Extends UIViewController
	Field slider:UISlider
	Field label:UILabel
	
	Method ViewDidLoad:Void()
		Super.ViewDidLoad()
		
		slider = CreateSlider(View.Frame.Width/2-105,View.Frame.Height/2-25,210,50)
		slider.Continuous = False
		slider.Delegate = New SliderDelegate(Self)
		View.AddSubview(slider)
		
		label = CreateLabel(View.Frame.Width/2-105,View.Frame.Height/2+25,210,30)
		View.AddSubview(label)
	End
End



Function Main()
	window = CreateWindow(UIScreen.MainScreen.Bounds)	

	homeScreen = New HomeScreen ()

	window.RootViewController = homeScreen
	window.MakeKeyAndVisible ()
End
