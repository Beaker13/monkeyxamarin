Import xamarin.ios

Global window:UIWindow
Global homeScreen:HomeScreen

Class ButtonDelegate Extends UIButtonDelegate
	Field viewController:UIViewController
	
	Method New(viewController:UIViewController)
		Self.viewController = viewController
	End
	Method Clicked:Void(button:UIButton)
		Print "ButtonDelegate: "+button.Title(UIControlState.Normal)
		
		Local home:= HomeScreen(viewController)
		If button.Title(UIControlState.Normal) = "Play AVPlayer"
			home.PlayAVPlayer()
		Else
			home.PlayMPMovie()
		End
	End
End



Class HomeScreen Extends UIViewController
	Field avPlayerButton:UIButton
	Field mpMovieButton:UIButton
	
	Field asset:AVAsset
	Field playerItem:AVPlayerItem
	Field player:AVPlayer
	Field playerLayer:AVPlayerLayer
	
	Field moviePlayer:MPMoviePlayerController
	
	Method ViewDidLoad:Void()
		Super.ViewDidLoad()
		
		avPlayerButton = CreateButton(View.Frame.Width/2-135,50,110,50, "Play AVPlayer")
		avPlayerButton.BackgroundColor = UIColor.White
		avPlayerButton.Delegate = New ButtonDelegate(Self)
		View.AddSubview(avPlayerButton)
		
		mpMovieButton = CreateButton(View.Frame.Width/2-55+80,50,110,50, "Play MPMovie")
		mpMovieButton.BackgroundColor = UIColor.White
		mpMovieButton.Delegate = New ButtonDelegate(Self)
		View.AddSubview(mpMovieButton)
		
		

	End
	
	Method PlayAVPlayer:Void()
		asset = AVAsset.FromUrl(NSUrl.FromFilename("data/sample.m4v"))
		playerItem = AVPlayerItem.FromAsset(asset)
		player = AVPlayerWithPlayerItem.Create(playerItem)	'FromPlayerItem(playerItem)
'		player = AVPlayer.FromUrl(NSUrl.FromFilename("data/sample.m4v"))
		playerLayer = AVPlayerLayer.FromPlayer(player)
		playerLayer.Frame = View.Frame
	
		If player.Status = AVPlayerStatus.ReadyToPlay Print "ready to play"
		View.Layer.AddSublayer(playerLayer)
		player.Play()
		If player.Err <> Null Print player.Err.ToString()		
	End
	
	Method PlayMPMovie:Void()
		moviePlayer = MPMoviePlayerControllerWithUrl.Create(NSUrl.FromFilename("data/sample.m4v"))	'New MPMoviePlayerController()
		'movie.ContentUrl = NSUrl.FromFilename("data/sample.m4v")
		View.AddSubview(moviePlayer.View)
		moviePlayer.SetFullscreen (True, True)
		'movie.PrepareToPlay()
		moviePlayer.Play()		
	End
End



Function Main()
	window = CreateWindow(UIScreen.MainScreen.Bounds)	

	homeScreen = New HomeScreen ()

	window.RootViewController = homeScreen
	window.MakeKeyAndVisible ()	
End
