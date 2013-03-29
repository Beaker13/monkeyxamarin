Import "native/webclientdelegate.cs"
Import webclient


Extern

Class WebClientDelegate = "WebClientDelegate"
	
	Method DownloadStringHandler:Void(webClient:WebClient, result:String)
	Method DownloadDataHandlerAsString:Void(webClient:WebClient, result:String)
	Method DownloadDataHandlerAsIntArray:Void(webClient:WebClient, result:Int[])

End

