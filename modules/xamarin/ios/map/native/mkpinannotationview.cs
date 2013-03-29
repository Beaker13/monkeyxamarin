public class MKPinAnnotationViewEx : MonoTouch.MapKit.MKPinAnnotationView {
	public MKPinAnnotationViewEx(NSObject annotation, string reuseIdentifier):base(annotation, reuseIdentifier) {}

	public static MonoTouch.MapKit.MKPinAnnotationView Create(NSObject annotation, string reuseIdentifier){
		return new MonoTouch.MapKit.MKPinAnnotationView(annotation, reuseIdentifier);
	}

}