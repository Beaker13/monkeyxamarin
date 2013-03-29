Import xamarin.ios

Global window:UIWindow
Global homeScreen:HomeScreen


Class ButtonDelegate Extends UIButtonDelegate	
	Method Clicked:Void(button:UIButton)
		Print "ButtonDelegate: "+button.Title(UIControlState.Normal)
	End
End

Class HomeScreen Extends UIViewController
	Field buttons:List<UIButton> = New List<UIButton>
	Field scrollView:UIScrollView
	
	Method ViewDidLoad:Void()
		Super.ViewDidLoad()
		
		scrollView = CreateScrollView(0,0,View.Frame.Width,View.Frame.Height/2, CreateSizeF(View.Frame.Width, View.Frame.Height*2))
		scrollView.BackgroundColor = UIColor.DarkGray
		'scrollView.AutoresizingMask = UIViewAutoresizing.FlexibleHeight
		
		For Local i:=0 To 20
			Local button:= CreateButton(0,i*50,View.Frame.Width-60,50, "Button "+(i+1))
			button.BackgroundColor = UIColor.White
			button.Delegate = New ButtonDelegate()
			scrollView.AddSubview(button)
			buttons.AddLast(button)
		End
		View.AddSubview(scrollView)
	End
End



Function Main()
	window = CreateWindow(UIScreen.MainScreen.Bounds)	

	homeScreen = New HomeScreen ()

	window.RootViewController = homeScreen
	window.MakeKeyAndVisible ()
End
