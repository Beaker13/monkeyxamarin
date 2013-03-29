Import xamarin.ios

Global window:UIWindow
Global homeScreen:HomeScreen


Class HomeScreen Extends UIViewController
	Field fontListTextView:UITextView
	
	Method ViewDidLoad:Void()
		Super.ViewDidLoad()
		
		fontListTextView = CreateTextView(View.Bounds)
		fontListTextView.AutoresizingMask = UIViewAutoresizing.FlexibleDimensions
		fontListTextView.Editable = False
		Add (fontListTextView)
		
		
		Local fontList:String = ""
		Local familyNames:String[] = UIFont.FamilyNames
		For Local familyName:= Eachin familyNames
			fontList += "Family: " + familyName + "~n"
			Print "Family: " + familyName
			Local fontNames:String[] = UIFont.FontNamesForFamilyName(familyName);
		    For Local fontName:=  Eachin fontNames
				Print "~tFont: "+fontName
				fontList += "~tFont: " + fontName + "~n"
		    End
		End		
		fontListTextView.Text = fontList
		
	End
End



Function Main()
	window = CreateWindow(UIScreen.MainScreen.Bounds)	

	homeScreen = New HomeScreen ()

	window.RootViewController = homeScreen
	window.MakeKeyAndVisible ()	
End
