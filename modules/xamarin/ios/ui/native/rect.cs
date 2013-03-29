class Rect { 	//: RectangleF {
	public float X,Y;
	public float Width,Height;
	

	public Rect() {	//float x, float y, float width, float height) {
		this.X = 0;
		this.Y = 0;
		this.Width = 0;
		this.Height = 0;
	}
	
	public Rect(float x, float y, float w, float h) {
		this.X = x;
		this.Y = y;
		this.Width = w;
		this.Height = h;
	}
	
	public static RectangleF Create() {
		return new RectangleF(0,0,0,0);
	}
	public static RectangleF Create(float x, float y, float w, float h) {
		return new RectangleF(x,y,w,h);	//X,Y,Width,Height);
	}
	
	public static RectangleF Create(PointF point, SizeF size) {
		return new RectangleF(point, size);	//X,Y,Width,Height);
	}
	
	public RectangleF ToRectangleF() {
		return new RectangleF(X,Y,Width,Height);
	}

}


