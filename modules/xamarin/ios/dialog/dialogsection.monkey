Import dialogelement
Import UIVIew

Extern

Class DialogSection Extends DialogElement = "MonoTouch.Dialog.Section"
	Field Count:Int	'getter only
	Field Footer:String
	Field Header:String
	Field FooterView:UIView
	Field HeaderView:UIView
	Field Item:Int	'getter only
	
	Method Add:Void(element:DialogElement)
	Method Add:Void(view:UIView)
	Method Clear:Void()
	Method Dispose:Void(disposing:Bool)
	
	Method Insert:Void(index:Int, elements:DialogElements[])
	Method Remove:Void(element:DialogElement)
	
	Method RemoveAt:Void(index:Int)
	Method RemoveRange:Void(start:Int, count:Int)
	
	
End