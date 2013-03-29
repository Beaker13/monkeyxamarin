Import uiimagepickercontroller
Import uinavigationcontroller
Import uiviewcontroller
Import uiimage
Import xamarin.ios.ns.nsdictionary


Extern

Class UIImagePickerControllerDelegate = "UIImagePickerControllerDelegate"
	Method Canceled:Void(picker:UIImagePickerController)
	Method DidShowViewController:Void(navigationController:UINavigationController, viewController:UIViewController, animated:bool)
	Method FinishedPickingImage:Void(picker:UIImagePickerController, image:UIImage, editingInfo:NSDictionary)
	Method FinishedPickingMedia:Void(picker:UIImagePickerController, info:NSDictionary)
	Method WillShowViewController:Void(navigationController:UINavigationController, viewController:UIViewController, animated:bool)

End
