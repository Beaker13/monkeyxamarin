public class UriEx : System.Uri {

	public static UriEx Create(string uriString) {
		return new UriEx(uriString);
	}
	
	//public UriEx():base() {}
	public UriEx(string uriString):base(uriString) {}

}