Import sizef
Import cgimage


Extern

Class UIImage = "UIImage"
	Field LeftCapWidth:Int
	Field TopCapHeight:Int
	Field CGImage:CGImage	
	
	Function FromFile:UIImage(filename:String)
	Function FromFileUncached:UIImage(filename:String)
	Function FromBundle:UIImage(filename:String)
	Function CreateAnimatedImage:UIImage(name:String, duration:Float)

	
	Method Dispose:Void(disposing:Bool)
	Method StretchableImage:UIImage(leftCapWith:Int, topCapHeight:Int)
	Method Scale:UIImage(newSize:SizeF)
	Method SaveToPhotosAlbum:Void(status:SaveStatus)
End

Class SaveStatus = "SaveStatus"

End

