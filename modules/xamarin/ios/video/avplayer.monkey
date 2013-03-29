Import "native/avplayer2.cs"
Import xamarin.ios.ns.nsurl
Import avplayeritem
Import avplayerstatus
Import xamarin.ios.ns.nserror

Extern

Class AVPlayerWithPlayerItem = "AVPlayerWithPlayerItem"
	Field Status:AVPlayerStatus	'getter only
	Field Err:NSError = "Error"

	Function FromUrl:AVPlayer(url:NSUrl)
	Function FromPlayerItem:AVPlayer(item:AVPlayerItem)
	
	Method Play:Void()
	Method Pause:Void()
	Method Dispose:Void(disposing:Bool)
	
	Function Create:AVPlayer(item:AVPlayerItem)
End

Class AVPlayer = "MonoTouch.AVFoundation.AVPlayer"
	Field Status:AVPlayerStatus	'getter only
	Field Err:NSError = "Error"
	
	Function FromUrl:AVPlayer(url:NSUrl)
	Function FromPlayerItem:AVPlayer(item:AVPlayerItem)
	
	Method Play:Void()
	Method Pause:Void()
	Method Dispose:Void(disposing:Bool)
	
	
End
