abstract public class WebClientDelegate {
	public WebClientDelegate() {	
	}
	
	public void HandleDownloadStringCompleted(object sender, System.Net.DownloadStringCompletedEventArgs e) {
		DownloadStringHandler((WebClientEx)sender, e.Result);
	}
	
	public void HandleDownloadDataCompletedAsString(object sender, System.Net.DownloadDataCompletedEventArgs e) {
		string result = System.Text.Encoding.UTF8.GetString(e.Result);	
		DownloadDataHandlerAsString((WebClientEx)sender, result);		
	}
	
	public void HandleDownloadDataCompletedAsIntArray(object sender, System.Net.DownloadDataCompletedEventArgs e) {
		//int[] bytesAsInts = Array.ConvertAll(e.Result, c => (int)c);	//better if you don't like LINQ
		int[] bytesAsInts = e.Result.Select(x => (int)x).ToArray();	
		DownloadDataHandlerAsIntArray((WebClientEx)sender, bytesAsInts);
	}
	
	abstract public void DownloadStringHandler(WebClientEx webClient, string result);
	abstract public void DownloadDataHandlerAsString(WebClientEx webClient, string result);
	abstract public void DownloadDataHandlerAsIntArray(WebClientEx webClient, int[] result);
}