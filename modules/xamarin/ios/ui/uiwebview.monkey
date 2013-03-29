Import uiview
Import xamarin.ios.ns	',nsurlrequest
'Import xamarin.ios.ns.nsurl
Import uiwebviewdelegate


Extern

Class UIWebView Extends UIView = "UIWebView"
	Field IsLoading:Bool
	Field ScalesPageToFit:Bool
	Field CanGoBack:Bool
	Field CanGoForward:Bool
	Field Delegate:UIWebViewDelegate
	
	
	Method Dispose:Void(disposing:Bool)
	Method LoadRequest:Void(r:NSUrlRequest)
	Method LoadHtmlString:Void(s:String, baseUrl:NSUrl)
	
	Method Reload:Void()
	Method StopReloading:Void()
	
	Method GoBack:Void()
	Method GoForward:Void()
	
	Method EvaluateJavascript:String(script:String)
	
End
