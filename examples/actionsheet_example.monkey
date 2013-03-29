Import xamarin.ios

Global window:UIWindow
Global homeScreen:HomeScreen

Class ActionSheetDelegate Extends UIActionSheetDelegate
	Method Canceled:Void(actionSheet:UIActionSheet)
		Print "ActioSheetDelegate: Canceled"	
	End
	Method Clicked:Void(actionSheet:UIActionSheet, buttonIndex:Int)
		Print "ActioSheetDelegate: Clicked: "+buttonIndex	
	End
	Method Dismissed:Void(actionSheet:UIActionSheet, buttonIndex:Int)
		Print "ActioSheetDelegate: Dismissed: "+buttonIndex	
	End
	Method Presented:Void(actionSheet:UIActionSheet)
		Print "ActioSheetDelegate: Presented"	
	End
	Method WillDismiss:Void(actionSheet:UIActionSheet, buttonIndex:Int)
		Print "ActioSheetDelegate: WillDismiss: "+buttonIndex	
	End
	Method WillPresent:Void(actionSheet:UIActionSheet)
		Print "ActioSheetDelegate: WillPresent"	
	End
End

Class HomeScreen Extends UIViewController
	Field actionSheet:UIActionSheet
	
	Method ViewDidLoad:Void()
		Super.ViewDidLoad()
		
		actionSheet = CreateActionSheet("Delete|Cancel|Option 3|Option 4")			
		actionSheet.Delegate = New ActionSheetDelegate()
		actionSheet.ShowInView(View)	
	End
End



Function Main()
	window = CreateWindow(UIScreen.MainScreen.Bounds)	

	homeScreen = New HomeScreen ()

	window.RootViewController = homeScreen
	window.MakeKeyAndVisible ()
End
