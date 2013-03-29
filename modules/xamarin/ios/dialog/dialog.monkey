Import "native/dialog.cs"
'Import dialogelement
'Import dialogelement
'Import UIVIew
Import xamarin.ios.ui.uiviewcontroller
'Import dialogrootelement

Extern

Class DialogJsonElement Extends DialogRootElement = "MonoTouch.Dialog.JsonElement"
	
	Function FromFile:DialogJsonElement(file:String)	
	
	Method ElementFromId:DialogElement(id:String)
End

#Rem
Class DialogJsonElementContainer Extends DialogRootElement = "DialogJsonElementContainer"
	Field jsonElement:DialogJsonElement
	
	Method ElementFromId:DialogElement(id:String)
	
	Function FromFile:DialogJsonElementContainer(file:String)	
End


Class DialogJsonElementEx = "DialogJsonElementEx"
	Method ElementFromId:DialogElement(id:String)
End
#end



Class DialogElement = "MonoTouch.Dialog.Element"
	Field Caption:String
	Field Parent:DialogElement

End

Class DialogBoolElement Extends DialogElement = "MonoTouch.Dialog.BoolElement"
	Field Value:String

End


Class DialogBooleanElement Extends DialogBoolElement = "MonoTouch.Dialog.BooleanElement"
	Field Value:Bool
	
	Method Dispose:Void(disposing:Bool)
End
Class DialogBooleanElementFromCaption Extends DialogBoolElement = "DialogBooleanElement"
	Field Value:Bool
	
	Method Dispose:Void(disposing:Bool)
	
	Function Create:DialogBooleanElement(caption:String, value:Bool)
End

Class DialogStringElement Extends DialogElement = "MonoTouch.Dialog.StringElement"
	Field Value:String
	Field Alignment:UITextAlignment
	
	Method Matches:Bool(text:String)
	Method Summary:String()
	
End
Class DialogStringElementFromValue Extends DialogElement = "DialogStringElement"
	Field Value:String
	Field Alignment:UITextAlignment
	
	Method Matches:Bool(text:String)
	Method Summary:String()
	
	Function Create:DialogStringElement(value:String)
End





Class DialogSection Extends DialogElement = "MonoTouch.Dialog.Section"
	Field Count:Int	'getter only
	Field Footer:String
	Field Header:String
	Field FooterView:UIView
	Field HeaderView:UIView
	
	Method Add:Void(element:DialogElement)
	Method Add:Void(view:UIView)
	Method Clear:Void()
	Method Dispose:Void(disposing:Bool)
	
	Method Insert:Void(index:Int, elements:DialogElements[])
	Method Remove:Void(element:DialogElement)
	
	Method RemoveAt:Void(index:Int)
	Method RemoveRange:Void(start:Int, count:Int)
	
	Method ElementFromId:DialogElement(id:int)
End


Class DialogRadioElement Extends DialogStringElement = "MonoTouch.Dialog.RadioElement"
	Field Group:String	
End



Class DialogViewControllerFromRoot Extends UIViewController = "DialogViewController"
	Field Root:DialogRootElement
	
	Function Create:DialogViewController(root:DialogRootElement)
End

Class DialogViewController Extends UIViewController = "MonoTouch.Dialog.DialogViewController"
	Field Root:DialogRootElement
End



'Import dialogelement
'Import dialogsection


'Class DialogRootElement Extends DialogElement = "MonoTouch.Dialog.RootElement"
Class DialogRootElementFromCaption Extends DialogElement = "DialogRootElement"
	Field Count:Int				'getter only
	Field RadioSelected:Int
	
	
	Method Add:Void(section:DialogSection)
	Method Insert:Void(section:DialogSection)
	Method Remove:Void(section:DialogSection)
	Method RemoveAt:Void(index:Int)
	Method Clear:Void()
	
	
	Method Dispose:Void(disposing:Bool)
	Method SectionFromId:DialogSection(id:int)
	
	Function Create:DialogRootElement(caption:String)
End


Class DialogRootElement Extends DialogElement = "MonoTouch.Dialog.RootElement"
	Field Count:Int				'getter only
	Field RadioSelected:Int
	
	
	Method Add:Void(section:DialogSection)
	Method Insert:Void(section:DialogSection)
	Method Remove:Void(section:DialogSection)
	Method RemoveAt:Void(index:Int)
	Method Clear:Void()
	
	
	Method Dispose:Void(disposing:Bool)
	Method SectionFromId:DialogSection(id:int)
	
End



