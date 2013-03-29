
class MPMoviePlayerControllerWithUrl : MonoTouch.MediaPlayer.MPMoviePlayerController {
	public static MonoTouch.MediaPlayer.MPMoviePlayerController Create(NSUrl url) {
		return new MonoTouch.MediaPlayer.MPMoviePlayerController(url);
	}
}


