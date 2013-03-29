
class AVPlayerWithPlayerItem : MonoTouch.AVFoundation.AVPlayer {
	public static MonoTouch.AVFoundation.AVPlayer Create(MonoTouch.AVFoundation.AVPlayerItem item) {
		return new MonoTouch.AVFoundation.AVPlayer(item);
	}
}


