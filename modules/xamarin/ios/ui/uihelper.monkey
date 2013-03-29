'Import xamarin

'Import ios

Import uiwindow
Import rect
Import uibutton
Import uitextfield
Import uitextview
Import uilabel
Import uislider
Import uiswitch
Import uisegmentedcontrol

Import uialertview
Import uiactionsheet

Import uiscrollview
Import sizef

Import uiwebview

Import uiimagepickercontroller

Import xamarin.ios.map.mkmapview


Function CreateButton:UIButton(rect:RectangleF, image:UIImage)
	Local control:= UIButton.FromType(UIButtonType.RoundedRect)	'Custom)
	control.Frame = rect
	control.SetImage(image, UIControlState.Normal)
	Return control
End

Function CreateButton:UIButton(x:Float,y:Float,width:Float,height:Float, image:UIImage)
	Return CreateButton(Rect.Create(x,y,width,height), image)
End

Function CreateButton:UIButton(x:Float,y:Float,width:Float,height:Float, title:String="")
	Return CreateButton(Rect.Create(x,y,width,height), title)
End

Function CreateButton:UIButton(rect:RectangleF, title:String="")
	Local control:= UIButton.FromType(UIButtonType.RoundedRect)
	control.Frame = rect
	control.SetTitle(title, UIControlState.Normal)
	Return control
End

Function CreateTextField:UITextField(x:Float,y:Float,width:Float,height:Float, text:String="", placeHolder:String="")
	Return CreateTextField(Rect.Create(x,y,width,height), text, placeHolder)
End

Function CreateTextField:UITextField(rect:RectangleF, text:String="", placeHolder:String="")
	Local control:= New UITextField()
	control.Text = text
	control.Placeholder = placeHolder
	control.BorderStyle = UITextBorderStyle.RoundedRect
	control.Frame = rect
	Return control
End


Function CreateTextView:UITextView(x:Float,y:Float,width:Float,height:Float, text:String="")
	Return CreateTextView(Rect.Create(x,y,width,height), text)
End

Function CreateTextView:UITextView(rect:RectangleF, text:String="")
	Local control:= New UITextView()
	control.Text = text
	control.Frame = rect
	Return control
End

Function CreateLabel:UILabel(x:Float,y:Float,width:Float,height:Float, text:String="")
	Return CreateLabel(Rect.Create(x,y,width,height), text)
End

Function CreateLabel:UILabel(rect:RectangleF, text:String="")
	Local control:= New UILabel()
	control.Text = text
	control.Frame = rect
	Return control
End


Function CreateSlider:UISlider(x:Float,y:Float,width:Float,height:Float, minValue:Float=0, maxValue:Float=100, value:Float=0)
	Return CreateSlider(Rect.Create(x,y,width,height), minValue, maxValue, value)
End

Function CreateSlider:UISlider(rect:RectangleF, minValue:Float=0, maxValue:Float=100, value:Float=0)
	Local control:= New UISlider()
	control.Frame = rect
	control.MinValue = minValue
	control.MaxValue = maxValue
	control.Value = value
	If value < minValue control.Value = minValue
	Return control
End

Function CreateSwitch:UISwitch(x:Float,y:Float,width:Float,height:Float)
	Return CreateSwitch(Rect.Create(x,y,width,height))
End

Function CreateSwitch:UISwitch(rect:RectangleF)
	Local control:= New UISwitch()
	control.Frame = rect
	Return control
End


Function CreateSegmentedControl:UISegmentedControl(x:Float,y:Float,width:Float,height:Float, buttons:String="")
	Return CreateSegmentedControl(Rect.Create(x,y,width,height), buttons)
End

Function CreateSegmentedControl:UISegmentedControl(rect:RectangleF, buttons:String="")
	Local control:= New UISegmentedControl()
	control.Frame = rect
	
	Local buttonParts:String[] = buttons.Split("|")
	For Local i:= 0 Until buttonParts.Length
		control.Add(buttonParts[i],i,false)
	End
	
	Return control
End

Function CreateWindow:UIWindow(x:Float,y:Float,width:Float,height:Float)
	Return CreateWindow(Rect.Create(x,y,width,height))
End

Function CreateWindow:UIWindow(rect:RectangleF)
	Local control:= New UIWindow()
	control.Frame = rect
	Return control
End


Function CreateAlertView:UIAlertView(title:String, message:String, buttons:String="Cancel|OK", show:Bool = False)
	Local control:= New UIAlertView()
	control.Title = title
	control.Message = message
	Local buttonParts:String[] = buttons.Split("|")
	For Local i:= 0 Until buttonParts.Length
		control.Add(buttonParts[i])
		If buttonParts[i].ToLower() = "cancel" control.CancelButtonIndex = i
	End
	If show control.Show()
	Return control
End


Function CreateActionSheet:UIActionSheet(buttons:String="Delete|Cancel|Option 3|Option 4")
	Local control:= New UIActionSheet()
	
	Local buttonParts:String[] = buttons.Split("|")
	For Local i:= 0 Until buttonParts.Length
		control.Add(buttonParts[i])
		If buttonParts[i].ToLower() = "cancel" control.CancelButtonIndex = i
		If buttonParts[i].ToLower() = "delete" control.DestructiveButtonIndex = i
	End
	
	Return control
End

Function CreateImagePicker:UIImagePickerController(sourceType:UIImagePickerControllerSourceType=UIImagePickerControllerSourceType.PhotoLibrary)
	Local control:= New UIImagePickerController()
	control.SourceType = sourceType
	control.MediaTypes = UIImagePickerController.AvailableMediaTypes(sourceType)
	Return control
End
		
Function CreateImageView:UIImageView(x:Float,y:Float,width:Float,height:Float, image:UIImage)
	Return CreateImageView(Rect.Create(x,y,width,height), image)
End

Function CreateImageView:UIImageView(rect:RectangleF, image:UIImage)
	Local control:= New UIImageView()
	control.Frame = rect
	control.Image = image
	Return control
End

Function CreateWebView:UIWebView(rect:RectangleF, url:String="")
	Local control:= New UIWebView()
	control.Frame = rect
	control.LoadRequest(NSUrlRequest.FromUrl(NSUrl.FromString(url)))
	Return control
End

Function CreateWebView:UIWebView(x:Float,y:Float,width:Float,height:Float, url:String = "")
	Return CreateWebView(Rect.Create(x,y,width,height), url)
End

Function CreateMapView:MKMapView(rect:RectangleF)
	Local control:= New MKMapView()
	control.Frame = rect
	Return control
End

Function CreateMapView:MKMapView(x:Float,y:Float,width:Float,height:Float)
	Return CreateMapView(Rect.Create(x,y,width,height))
End

Function CreateScrollView:UIScrollView(x:Float,y:Float,width:Float,height:Float, contentSize:SizeF)
	Return CreateScrollView(Rect.Create(x,y,width,height), contentSize)
End

Function CreateScrollView:UIScrollView(rect:RectangleF, contentSize:SizeF)
	Local control:= New UIScrollView()
	control.Frame = rect
	If contentSize <> Null control.ContentSize = contentSize
	Return control
End

Function CreateSizeF:SizeF(width:Float, height:Float)
	Local sizeF:= New SizeF()
	sizeF.Width = width
	sizeF.Height = height
	Return sizeF
End
	
	

	
		