Import "native/dialog.cs"
Import uiviewcontroller
Import dialogrootelement


Extern

Class DialogViewControllerFromRoot Extends UIViewController = "DialogViewController2"
	Field Root:DialogRootElement
	
	Function Create:DialogViewController(root:DialogRootElement)
End

Class DialogViewController Extends UIViewController = "MonoTouch.Dialog.DialogViewController"
	Field Root:DialogRootElement
End
