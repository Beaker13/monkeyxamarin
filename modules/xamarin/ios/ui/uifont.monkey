
Extern

Class UIFont = "UIFont"
	Global FamilyNames:String[]
	
	Field FamilyName:String
	Field Name:String
	Field PointSize:Float
	
	Method Dispose:Void(disposing:Bool)
	
	Function FromName:UIFont(name:String, size:Float)
	Function FontNamesForFamilyName:String[](familyName:String)
	Function SystemFontOfSize:UIFont(size:Float)
	
End

