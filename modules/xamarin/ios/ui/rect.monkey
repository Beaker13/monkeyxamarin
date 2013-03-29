Import "native/rect.cs"
Import rectanglef
Import pointf
Import sizef

Extern

Class Rect = "Rect"
	Function Create:RectangleF()
	Function Create:RectangleF(x:Float,y:Float, w:Float,h:Float)
	Function Create:RectangleF(point:PointF, size:SizeF)	
End
