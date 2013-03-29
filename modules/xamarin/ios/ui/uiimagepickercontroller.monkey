Import uiimage
Import uinavigationcontroller
Import uiimagepickercontrollersourcetype
Import uiimagepickercontrollerdelegate


Extern

Class UIImagePickerController Extends UINavigationController = "UIImagePickerController"
	Field SourceType:UIImagePickerControllerSourceType
	Field MediaTypes:String[]
	Field OriginalImage:UIImage
	Field Delegate:UIImagePickerControllerDelegate
	
	
	Method ToString:String()
	
	Function AvailableMediaTypes:String[](sourceType:UIImagePickerControllerSourceType)
	
End
