Import uitextfield
Import xamarin.ios.ns.nsrange


Extern

Class UITextFieldDelegate = "UITextFieldDelegate"
	Method EditingEnded:Void(textField:UITextField)
	Method EditingStarted:Void(textField:UITextField)
	
	Method ShouldBeginEditing:Bool(textField:UITextField)
	Method ShouldChangeCharacters:Bool(textField:UITextField, range:NSRange, replacementString:String)
	Method ShouldClear:Bool(textField:UITextField)
	Method ShouldEndEditing:Bool(textField:UITextField)
	Method ShouldReturn:Bool(textField:UITextField)
	
End