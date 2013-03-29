Import "native/dialog.cs"
Import dialogelement
Import dialogsection

Extern

'Class DialogRootElement Extends DialogElement = "MonoTouch.Dialog.RootElement"
Class DialogRootElementFromCaption Extends DialogElement = "DialogRootElement2"
	Field Count:Int				'getter only
	Field Item:DialogSection		'getter only
	Field RadioSelected:Int
	
	
	Method Add:Void(section:DialogSection)
	Method Insert:Void(section:DialogSection)
	Method Remove:Void(section:DialogSection)
	Method RemoveAt:Void(index:Int)
	Method Clear:Void()
	
	
	Method Dispose:Void(disposing:Bool)
	
	Function Create:DialogRootElement(caption:String)
End


Class DialogRootElement Extends DialogElement = "MonoTouch.Dialog.RootElement"
	Field Count:Int				'getter only
	Field Item:DialogSection		'getter only
	Field RadioSelected:Int
	
	
	Method Add:Void(section:DialogSection)
	Method Insert:Void(section:DialogSection)
	Method Remove:Void(section:DialogSection)
	Method RemoveAt:Void(index:Int)
	Method Clear:Void()
	
	
	Method Dispose:Void(disposing:Bool)
	
End



