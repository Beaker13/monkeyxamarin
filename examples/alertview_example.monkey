Import xamarin.ios

Global window:UIWindow
Global homeScreen:HomeScreen

Class AlertViewDelegate Extends UIAlertViewDelegate
	Method Canceled:Void(alertView:UIAlertView)
		Print "AlertViewDelegate: Canceled"	
	End
	Method Clicked:Void(alertView:UIAlertView, buttonIndex:Int)
		Print "AlertViewDelegate: Clicked: "+buttonIndex	
	End
	Method Dismissed:Void(alertView:UIAlertView, buttonIndex:Int)
		Print "AlertViewDelegate: Dismissed: "+buttonIndex	
	End
	Method Presented:Void(alertView:UIAlertView)
		Print "AlertViewDelegate: Presented"	
	End
	Method ShouldEnableFirstOtherButton:Bool(alertView:UIAlertView)
		Print "AlertViewDelegate: ShouldEnableFirstOtherButton"	
	End
	Method WillDismiss:Void(alertView:UIAlertView, buttonIndex:Int)
		Print "AlertViewDelegate: WillDismiss: "+buttonIndex	
	End
	Method WillPresent:Void(alertView:UIAlertView)
		Print "AlertViewDelegate: WillPresent"	
	End
End

Class HomeScreen Extends UIViewController
	Field alertView:UIAlertView
	
	Method ViewDidLoad:Void()
		Super.ViewDidLoad()
		
		alertView = CreateAlertView("This is the title","This is the message, it can be much longer than the title. Get over it.", "Cancel|OK", True)			
		alertView.Delegate = New AlertViewDelegate()
	End
End



Function Main()
	window = CreateWindow(UIScreen.MainScreen.Bounds)	

	homeScreen = New HomeScreen ()

	window.RootViewController = homeScreen
	window.MakeKeyAndVisible ()
End
