public class WebClientEx : System.Net.WebClient {
	private WebClientDelegate m_delegate;
	public WebClientDelegate Delegate {
		get {
			return m_delegate;
		}
		set {
			this.DownloadStringCompleted += value.HandleDownloadStringCompleted;
			
			this.DownloadDataCompleted += value.HandleDownloadDataCompletedAsString;
			this.DownloadDataCompleted += value.HandleDownloadDataCompletedAsIntArray;
	
			m_delegate = value;
		}
	}	

	public WebClientEx():base() {}
}