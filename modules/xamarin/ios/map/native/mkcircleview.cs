public class MKCircleViewEx : MonoTouch.MapKit.MKCircleView {
	public static MonoTouch.MapKit.MKCircleView Create(MonoTouch.MapKit.MKCircle circle) {
		return new MonoTouch.MapKit.MKCircleView(circle);
	}
}