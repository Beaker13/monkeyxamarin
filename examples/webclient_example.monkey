Import xamarin.generic


Class WwwDelegate Extends WebClientDelegate
	Method DownloadStringHandler:Void(webClient:WebClient, result:String)
		Print "DownStringHandler: "+result
	End
	
	Method DownloadDataHandlerAsString:Void(webClient:WebClient, result:String)
		Print "DownloadDataHandlerAsString"
	End

	Method DownloadDataHandlerAsIntArray:Void(webClient:WebClient, result:Int[])
		Print "DownloadDataHandlerAsIntArray"
		webClient.DownloadStringAsync(Uri.Create("http://xamarin.com"))
		
	End
End

Global webClient:WebClient

Function Main()
	
	webClient = New WebClient()
	webClient.Delegate = New WwwDelegate()
	
	webClient.DownloadDataAsync(Uri.Create("http://xamarin.com/resources/design/home/devices.png"))
	
	
End