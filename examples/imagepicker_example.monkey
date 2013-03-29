Import xamarin.ios

Global window:UIWindow
Global homeScreen:HomeScreen

Class ImagePickerControllerDelegate Extends UIImagePickerControllerDelegate
	Method Canceled:Void(picker:UIImagePickerController)
		Print "Canceled"
	    picker.DismissViewController(True, null)
	End
'	Method DidShowViewController:Void(navigationController:UINavigationController, viewController:UIViewController, animated:Bool)
'		Print "DidShowViewController"
'	End
	Method FinishedPickingImage:Void(picker:UIImagePickerController, image:UIImage, editingInfo:NSDictionary)
		Print "FinishedPickingImage"
	    picker.DismissViewController(True, null)
	End
'	Method FinishedPickingMedia:Void(picker:UIImagePickerController, info:NSDictionary)
'		Print "FinishedPickingMedia"
'	    picker.DismissViewController(True, null)
'	End
'	Method WillShowViewController:Void(navigationController:UINavigationController, viewController:UIViewController, animated:Bool)
'		Print "WillShowViewController"
'	End
End


Class HomeScreen Extends UIViewController
	
	Method ViewDidLoad:Void()
		Super.ViewDidLoad()
		
		Local imagePicker:= CreateImagePicker()	'New UIImagePickerController()
		imagePicker.Delegate = New ImagePickerControllerDelegate()
		NavigationController.PresentViewController(imagePicker, False, Null)	'animated flag (bool=true) seems to cause problems, more info: http://stackoverflow.com/questions/7886096/unbalanced-calls-to-begin-end-appearance-transitions-for-uitabbarcontroller-0x
		
		' add an image to the photo album for the iOS Simulator
		Local image:UIImage = UIImage.FromFile("data/family.jpg")
		image.SaveToPhotosAlbum(Null)
	End
End



Function Main()
	window = CreateWindow(UIScreen.MainScreen.Bounds)	

	homeScreen = New HomeScreen ()
	
	Local rootNavigationController:= New UINavigationController();
	
	rootNavigationController.PushViewController(homeScreen, False)
	
	'---- set the root view controller on the window. the nav controller will handle the rest
	window.RootViewController = rootNavigationController

'	window.RootViewController = homeScreen
	window.MakeKeyAndVisible ()	
End






