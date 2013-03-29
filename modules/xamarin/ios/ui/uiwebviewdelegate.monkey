Import uiwebview
Import xamarin.ios.ns.nserror
Import xamarin.ios.ns.nsurlrequest
Import uiwebviewnavigationtype


Extern

Class UIWebViewDelegate = "UIWebViewDelegate"
	Method LoadFailed:Void(webView:UIWebView, Error:NSError)
	Method LoadStarted:Void(webView:UIWebView)
	Method LoadingFinished:Void(webView:UIWebView)
	Method ShouldStartLoad:Bool(webView:UIWebView, request:NSUrlRequest, navigationType:UIWebViewNavigationType)
	

End