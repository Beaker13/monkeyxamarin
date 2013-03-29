Import uiscrollview
Import xamarin.ios.ns.nsobject

Extern

Class UIScrollViewDelegate Extends NSObject = "UIScrollViewDelegate"
	Method DecelerationEnded:Void(scrollView:UIScrollView)
	Method DecelerationStarted:Void(scrollView:UIScrollView)
	Method DidZoom:Void(scrollView:UIScrollView)
	Method DraggingEnded:Void(scrollView:UIScrollView, willDecelerate:Bool)
	Method DraggingStarted:Void(scrollView:UIScrollView)
	
	Method Scrolled:Void(scrollView:UIScrollView)

	Method ScrollAnimationEnded:Void(scrollView:UIScrollView)
	Method ScrolledToTop:Void(scrollView:UIScrollView)
	Method ShouldScrollToTop:Void(scrollView:UIScrollView)
	Method ViewForZoomingInScrollView:Void(scrollView:UIScrollView)
	Method WillEndDragging:Void(scrollView:UIScrollView)
	Method ZoomingEnded:Void(scrollView:UIScrollView)
	Method ZoomingStarted:Void(scrollView:UIScrollView)
End
