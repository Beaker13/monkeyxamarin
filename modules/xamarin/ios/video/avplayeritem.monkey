Import avasset
Import xamarin.ios.ns.nsurl


Extern

Class AVPlayerItem = "MonoTouch.AVFoundation.AVPlayerItem"
	
	Function FromAsset:AVPlayerItem(asset:AVAsset)
	Function FromUrl:AVPlayerItem(url:NSUrl)
	
	Method Dispose:Void(disposing:Bool)
	

End
