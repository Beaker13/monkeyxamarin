Import specialfolder

Extern

Class Environment = "System.Environment"
	Global SpecialFolder:SpecialFolderEnum
	
	Function GetFolderPath:String(folder:SpecialFolder)
End


Class SpecialFolderEnum = "SpecialFolderEnum"
	Global MyDocuments:SpecialFolderEnum

End