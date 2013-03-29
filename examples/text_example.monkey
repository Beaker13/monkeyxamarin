Import xamarin.ios

Global window:UIWindow
Global homeScreen:HomeScreen

Class TextFieldDelegate Extends UITextFieldDelegate	
	Method EditingEnded:Void(textField:UITextField)
		Print "TextFieldDelegate: EditingEnded: "+textField.Text
	End
	
	Method ShouldReturn:Bool(textField:UITextField)
		Print "TextFieldDelegate: ShouldReturn: "+textField.Text
		Print "Hiding keyboard"
		textField.ResignFirstResponder()	
	End

	Method EditingStarted:Void(textField:UITextField)
		Print "TextFieldDelegate: EditingStarted: "+textField.Text
	End
End

Class TextViewDelegate Extends UITextViewDelegate
	Method EditingEnded:Void(textView:UITextView)
		Print "TextViewDelegate: EditingEnded: "+textView.Text
	End

	Method EditingStarted:Void(textView:UITextView)
		Print "TextViewDelegate: EditingStarted: "+textView.Text	
	End
	
	Method Changed:Void(textView:UITextView)
		Print "TextViewDelegate: Changed: "+textView.Text
	End
	
	
End

Class HomeScreen Extends UIViewController
	Field label:UILabel
	Field textField:UITextField
	Field textView:UITextView
	
	Method ViewDidLoad:Void()
		Super.ViewDidLoad()
		
		label = CreateLabel(View.Frame.Width/2-105,30,210,50, "This is a label")
		View.AddSubview(label)
		
		textField = CreateTextField(View.Frame.Width/2-105,90,210,50, "This is a textfield", "This is an empty textfield")
		textField.Delegate = New TextFieldDelegate()
		View.AddSubview(textField)
		
		textView = CreateTextView(View.Frame.Width/2-105,150,210,150, "This is a multi-line textview")
		textView.Delegate = New TextViewDelegate()
		View.AddSubview(textView)
	End
End



Function Main()
	window = CreateWindow(UIScreen.MainScreen.Bounds)	

	homeScreen = New HomeScreen ()

	window.RootViewController = homeScreen
	window.MakeKeyAndVisible ()
End
