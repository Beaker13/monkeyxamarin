Import avplayer
Import xamarin.ios.ui.calayer


Extern

Class AVPlayerLayer Extends CALayer = "MonoTouch.AVFoundation.AVPlayerLayer"
	Field Player:AVPlayer
	Field ReadyForDisplay:Bool	'getter only
	'Field Frame:RectangleF
	'Field Bounds:RectangleF
	
	
	Function FromPlayer:AVPlayerLayer(player:AVPlayer)
	
	Method Dispose:Void(disposing:Bool)
	
	
End



