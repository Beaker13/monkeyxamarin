Import encoding


Extern

Class File = "System.IO.File"
	Function ReadAllText:String(path:String)
	Function ReadAllText:String(path:String, encoding:Encoding)
	
	Function ReadAllLines:String[](path:String)
	Function ReadAllLines:String[](path:String, encoding:Encoding)
	
	Function WriteAllText:Void(path:String, contents:String)
	Function WriteAllText:Void(path:String, contents:String, encoding:Encoding)
	
	Function WriteAllLines:Void(path:String, contents:String[])
	Function WriteAllLines:Void(path:String, contents:String[], encoding:Encoding)
	
	
End
