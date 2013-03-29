class BasicMapAnnotation : MonoTouch.MapKit.MKAnnotation{
    public override MonoTouch.CoreLocation.CLLocationCoordinate2D Coordinate {get;set;}
    string title, subtitle;
    public override string Title { get{ return title; }}
    public override string Subtitle { get{ return subtitle; }}
    
    public static BasicMapAnnotation Create(MonoTouch.CoreLocation.CLLocationCoordinate2D coordinate, string title, string subtitle) {
    		BasicMapAnnotation anno = new BasicMapAnnotation();
        anno.Coordinate = coordinate;
        anno.title = title;
        anno.subtitle = subtitle;
        return anno;
    }
}