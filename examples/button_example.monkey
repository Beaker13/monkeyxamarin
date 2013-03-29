Import xamarin.ios

Global window:UIWindow
Global homeScreen:HomeScreen

Class ButtonDelegate Extends UIButtonDelegate
	
	Method Clicked:Void(button:UIButton)
		Print "ButtonDelegate: "+button.Title(UIControlState.Normal)
	End
End

Class SegmentedControlDelegate Extends UISegmentedControlDelegate
	
	Method ValueChanged:Void(segmentedControl:UISegmentedControl)
		Print "SegmentedControlDelegate: "+segmentedControl.SelectedSegment
	End
End



Class HomeScreen Extends UIViewController
	Field button:UIButton
	Field switch:UISwitch
	Field segmented:UISegmentedControl
	
	Method ViewDidLoad:Void()
		Super.ViewDidLoad()
		
		button = CreateButton(View.Frame.Width/2-55,50,110,50, "Click me")
		button.BackgroundColor = UIColor.White
		button.Delegate = New ButtonDelegate()
		View.AddSubview(button)
		
		switch = CreateSwitch(View.Frame.Width/2-55,120,110,50)
		View.AddSubview(switch)
		
		segmented = CreateSegmentedControl(View.Frame.Width/2-105,190,210,50)
		segmented.Delegate = New SegmentedControlDelegate()
		segmented.Add("One", 0, False)
		segmented.Add("Two", 1, False)
		segmented.Add("Three", 2, False)
		View.AddSubview(segmented)
		
	End
End



Function Main()
	window = CreateWindow(UIScreen.MainScreen.Bounds)	

	homeScreen = New HomeScreen ()

	window.RootViewController = homeScreen
	window.MakeKeyAndVisible ()	
End
