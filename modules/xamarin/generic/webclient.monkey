Import "native/webclient.cs"
Import encoding
Import uri
Import webclientdelegate

Extern

Class WebClient = "WebClientEx"
	Field Encoding:Encoding
	Field Delegate:WebClientDelegate
	
	
	Method DownloadStringAsync:Void(address:Uri)
	Method DownloadDataAsync:Void(address:Uri)
End
