Import "native/uisegmentedcontrol.cs"

Import uicontrol
Import rectanglef
Import uiimage

Extern

Class UISegmentedControl Extends UIControl = "UISegmentedControlEx"
	Field Frame:RectangleF
	Field SelectedSegment:Int
	Field ControlStyle:UISegmentedControlStyle
	Field Delegate:UISegmentedControlDelegate
	
	Method InsertSegment:Void(image:UIImage, pos:Int, animated:Bool)
	Method InsertSegment:Void(title:String, pos:Int, animated:Bool)
	Method Add:Void(image:UIImage, pos:Int, animated:Bool) = "InsertSegment"
	Method Add:Void(title:String, pos:Int, animated:Bool) = "InsertSegment"
	
	Method SetWidth:Void(width:Float, segment:Int)
	

End


Class UISegmentedControlStyle = "UISegmentedControlStyle"
	Global Bar:UISegmentedControlStyle
	Global Bezeled:UISegmentedControlStyle
	Global Bordered:UISegmentedControlStyle
	Global Plain:UISegmentedControlStyle
	
End


Class UISegmentedControlDelegate = "UISegmentedControlDelegate"
	Method ValueChanged:Void(segmentedControl:UISegmentedControl)
End