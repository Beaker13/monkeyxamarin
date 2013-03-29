abstract class MKMapViewResponder {
	
	public void AddMKMapView(MonoTouch.MapKit.MKMapView mapView) {
		mapView.DidUpdateUserLocation += HandleUpdateUserLocation;
	}
	

	private void HandleUpdateUserLocation (object sender, System.EventArgs e) {
		Responder(sender);
	}
	
	abstract public void Responder(object o);		
		 
}




