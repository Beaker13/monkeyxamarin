Import rectanglef
Import pointf
Import cgpath
Import cgimage

Extern

Class UIGraphics = "UIGraphics"
	Function GetCurrentContext:CGContext()

End


Class CGContext = "MonoTouch.CoreGraphics.CGContext"

	Method AddArc:Void(x:Float,y:Float, radius:Float, startAngle:Float, endAngle:Float, clockwise:Bool)
	Method AddArcToPoint:Void(x1:Float,y1:Float, x2:Float,y2:Float, radius:Float)
	Method AddCurveToPoint:Void(cp1x:Float,cp1y:Float, cp2x:Float,cp2y:Float, x:Float,y:Float)
	Method AddEllipseInRect:Void(rect:RectangleF)
	Method AddLineToPoint:Void(x:Float,y:Float)
	Method AddLines:Void(points:PointF[])
	Method AddPath:Void(path:CGPath)
	Method AddQuadCurveToPoint:Void(cpx:Float,cpy:Float, x:Float,y:Float)
	Method AddRect:Void(rect:RectangleF)
	Method AddRects:Void(rects:RectangleF[])
	Method BeginPath:Void()
	Method BeginTransparencyLayer:Void()
	Method BeginTransparencyLayer:Void(auxilliaryInfo:NSDictionary)
	Method BeginTransparencyLayer:Void(rectangle:RectangleF)
	Method BeginTransparencyLayer:Void(rectangle:RectangleF, auxilliaryInfo:NSDictionary)
	
	Method ClearRect:Void(rect:RectangleF)
	Method Clip:Void()
	Method ClipToMask:Void(rect:RectangleF, mask:CGImage)
	Method ClipToRect:Void(rect:RectangleF)
	Method ClipToRects:Void(rects:RectangleF[])
	Method ClosePath:Void()
	Method ContextFillRects:Void(rects:RectangleF[])
	Method ConvertToUserSpace:PointF(point:PointF)
	Method ConvertRectToDeviceSpace:RectangleF(rect:RectangleF)
	Method ConvertRectToUserSpace:RectangleF(rect:RectangleF)
	Method ConvertSizeToDeviceSpace:SizeF(size:SizeF)
	Method ConvertSizeToUserSpace:SifeF(size:SizeF)
	Method CopyPath:CGPath()
	Method Dispose:Void()
	Method Dispose:Void(disposing:Bool)
	Method DrawImage:Void(rect:RectangleF, image:CGImage)
	Method DrawLayer:Void(layer:CGLayer, point:PointF)
	Method DrawLayer:Void(layer:CGLayer, rect:RectangleF)
	Method DrawLinearGradient:Void(gradient:CGGradient, startPoint:PointF, endPoint:PointF, options:CGGradientDrawingOptions)
	Method DrawPDFPage:Void(page:CGPDFPage)
	Method DrawPath:Void(mode:CGPathDrawingMode)
	
	'Method etc
	
	Method RotateCTM:Void(angle:Float)
	Method ScaleCTM:Void(sx:Float,sy:Float)
	Method SetAllowsAntialiasing:Void(allowsAntialiasing:Bool)
	Method SetFillColor:Void(red:Float,green:Float,blue:Float,alpha:Float)
	
	Method TranslateCTM:Void(tx:Float,ty:Float)

	
	Method FillEllipseInRect:Void(rect:RectangleF)
	
	
End


