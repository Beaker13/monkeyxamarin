
Import dialog	'rootelement
'Import dialogradioelement
'Import dialogsection
'Import dialogviewcontroller
'Import dialogstringelement

Class Dialog
	Function RootElement:DialogRootElement(caption:String)
		Local element:= DialogRootElementFromCaption.Create(caption)
'		element.Caption = caption
		Return element
	End
	
	
	Function Section:DialogSection(caption:String="", footer:String="")
		Local element:= New DialogSection()
		If caption <> "" element.Caption = caption
		If footer <> "" element.Footer = footer
		Return element
	End
	
	Function RadioElement:DialogRadioElement(caption:String="", group:String="")
		Local element:= New DialogRadioElement()
		If caption <> "" element.Caption = caption
		If group <> "" element.Group = group
		Return element
	End
	
	Function ViewController:DialogViewController(root:DialogRootElement)
		return DialogViewControllerFromRoot.Create(root)
		'element.Root = root
		'Return element
	End
	
	Function StringElement:DialogStringElement(value:String)
		Return DialogStringElementFromValue.Create(value)
		'element.Value = value
		'Return element
	End
	
	Function BooleanElement:DialogBooleanElement(caption:String, value:Bool)
		Return DialogBooleanElementFromCaption.Create(caption, value)
	End
	
	Function JsonElement:DialogJsonElementContainer(url:String)
		Return DialogJsonElementContainer.FromFile(url)
	End
	
	
End



