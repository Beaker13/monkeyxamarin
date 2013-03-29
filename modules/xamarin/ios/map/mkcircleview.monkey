Import "native/mkcircleview.cs"

Import mkoverlaypathview
Import mkcircle

Extern


Class MKCircleViewEx Extends MKOverlayPathView = "MKCircleViewEx"
	Function Create:MKCircleView(circle:MKCircle)
End

Class MKCircleView Extends MKOverlayPathView = "MonoTouch.MapKit.MKCircleView"

End
