Import xamarin.ios
Import xamarin.generic.path

Global window:UIWindow
Global homeScreen:HomeScreen

Class WebViewDelegate Extends UIWebViewDelegate
	Method LoadFailed:Void(webView:UIWebView, Error:NSError)
		Print "LoadFailed"
	End

	Method LoadStarted:Void(webView:UIWebView)
		Print "LoadStarted"
		
	End
	
	Method LoadingFinished:Void(webView:UIWebView)
		Print "LoadingFinished"
		
	End
End



Class HomeScreen Extends UIViewController
	
	Method ViewDidLoad:Void()
		Super.ViewDidLoad()
	
		Local webView:= CreateWebView(View.Bounds, "http://www.google.com")
		webView.Delegate = New WebViewDelegate()
		View.AddSubview(webView)
		'webView.ScalesPageToFit = True

'		uncomment below to load a dynamic html string		
'		Local contentDirectoryPath:String = Path.Combine (NSBundle.MainBundle.BundlePath, "Content/")
'		local html:String = "<html><a href='Home.html'>Click me</a></html>"
'		webView.LoadHtmlString(html, NSUrl.FromFilename(contentDirectoryPath))	'New NSUrl(contentDirectoryPath, True))		
	End
End



Function Main()
	window = CreateWindow(UIScreen.MainScreen.Bounds)	

	homeScreen = New HomeScreen ()

	window.RootViewController = homeScreen
	window.MakeKeyAndVisible ()	
End



