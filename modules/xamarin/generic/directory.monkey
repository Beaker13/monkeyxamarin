
Extern

Class Directory = "System.IO.Directory"
	Function CreateDirectory:DirectoryInfo(path:String)
	
'	Function EnumerateDirectories:Blah(path:String)
'	Function EnumerateDirectories:Blah(path:String, searchPattern:String)
'	'Function EnumerateDirectories:Blah(path:String, searchPattern:String, searchOption:SearchOption)
	
	Function EnumerateFiles:Blah(path:String)
	Function EnumerateFiles:Blah(path:String, searchPattern:String)
	'Function EnumerateFiles:Blah(path:String, searchPattern:String, searchOption:SearchOption)

	Function GetDirectories:String[](path:String)
	Function GetDirectories:String[](path:String, searchPattern:String)
	'Function GetDirectories:String[](path:String, searchPattern:String, searchOption:SearchOption)
	
	Function GetFiles:String[](path:String)
	Function GetFiles:String[](path:String, searchPattern:String)
	'Function GetFiles:String[](path:String, searchPattern:String, searchOption:SearchOption)
End
