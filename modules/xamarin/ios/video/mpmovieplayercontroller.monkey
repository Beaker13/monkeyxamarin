Import "native/mpmovieplayercontroller2.cs"
Import xamarin.ios.ui.uiview
Import xamarin.ios.ns.nsurl

Extern

Class MPMoviePlayerControllerWithUrl = "MPMoviePlayerControllerWithUrl"
	Field View:UIView
	Field ContentUrl:NSUrl
	
	Method Play:Void()
	Method SetFullscreen:Void(fullscreen:Bool, animated:Bool)
	Method PrepareToPlay:Void()
	Method Dispose:Void(disposing:Bool)
	
	Function Create:MPMoviePlayerController(url:NSUrl)

End

Class MPMoviePlayerController = "MonoTouch.MediaPlayer.MPMoviePlayerController"
	Field View:UIView
	Field ContentUrl:NSUrl
	
	Method Play:Void()
	Method SetFullscreen:Void(fullscreen:Bool, animated:Bool)
	Method PrepareToPlay:Void()
	Method Dispose:Void(disposing:Bool)
	

End
