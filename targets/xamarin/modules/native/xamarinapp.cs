
public class BBXamarinGame : BBGame{

	static BBXamarinGame _xamarinGame;

	Game _app;
	bool _exit;

/*
#if WINDOWS
	System.Windows.Forms.Form _form;
#endif	
*/

	bool _activated;
	bool _autoSuspend;
	
	double _nextUpdate;
	double _updatePeriod;
	
	bool _shift,_control;
//	KeyboardState _keyboard;
		
	MouseState _mouse;
	int[] _touches=new int[32];

/*
#if WINDOWS_PHONE
	bool _gamePadFound=true;	//for back button!
#else		
	bool _gamePadFound=false;
#endif

#if WINDOWS_PHONE
	Accelerometer _accelerometer;
#endif
*/

	PlayerIndex _gamePadIndex=PlayerIndex.One;
	
	public const int KEY_SHIFT=0x10;
	public const int KEY_CONTROL=0x11;
	public const int KEY_JOY0_A=0x100;
	public const int KEY_JOY0_B=0x101;
	public const int KEY_JOY0_X=0x102;
	public const int KEY_JOY0_Y=0x103;
	public const int KEY_JOY0_LB=0x104;
	public const int KEY_JOY0_RB=0x105;
	public const int KEY_JOY0_BACK=0x106;
	public const int KEY_JOY0_START=0x107;
	public const int KEY_JOY0_LEFT=0x108;
	public const int KEY_JOY0_UP=0x109;
	public const int KEY_JOY0_RIGHT=0x10a;
	public const int KEY_JOY0_DOWN=0x10b;
	
	public BBXamarinGame( Game app ){
		_app=app;
		_xamarinGame=this;
		
	}
	
	public static BBXamarinGame XamarinGame(){
		return _xamarinGame;
	}

	/*
	void PreparingDeviceSettings( Object sender,PreparingDeviceSettingsEventArgs e ){
		if( MonkeyConfig.XNA_VSYNC_ENABLED=="1" ){
			PresentationParameters pp=e.GraphicsDeviceInformation.PresentationParameters;
			pp.PresentationInterval=PresentInterval.One;
		}
	}
	*/
	
	int KeyToChar( int key ){
		if( key>=48 && key<=57 && !_shift ) return key;
		if( key>=65 && key<=90 &&  _shift ) return key;
		if( key>=65 && key<=90 && !_shift ) return key+32;
		if( key>=33 && key<=40 || key==45 ) return key | 0x10000;
	 	if( key==8 || key==9 || key==27 || key==32 ) return key;
	 	if( key==46 ) return 127;
		return 0;
	}
	
	bool PollSuspended(){
	
		//wait for first activation		
		if( !_activated ){
			_activated=_app.IsActive;
			return true;
		}
		
		bool suspended;
		
		if( _autoSuspend ){
/*
#if WINDOWS
			if( _form!=null ){
				suspended=!_form.Focused || _form.WindowState==System.Windows.Forms.FormWindowState.Minimized;
			}else{
				suspended=!_app.IsActive;
			}
#else		
			suspended=!_app.IsActive;
#endif
*/
		}else{
//			suspended=!(_app.Window.ClientBounds.Width>0 && _app.Window.ClientBounds.Height>0);
		}
		
		if( suspended!=_suspended ){
			if( suspended ){
				SuspendGame();
			}else{
				ResumeGame();
			}
		}
		return _suspended;
	}
	
	void ValidateUpdateTimer(){
		/*
		if( _updateRate!=0 && !_suspended ){
			_updatePeriod=1000.0/(double)_updateRate;
			_nextUpdate=(double)Millisecs()+_updatePeriod;
			_app.TargetElapsedTime=TimeSpan.FromTicks( (long)(10000000.0/(double)_updateRate+.5) );
			_app.IsFixedTimeStep=(MonkeyConfig.XNA_VSYNC_ENABLED!="1");
		}else{
			_app.TargetElapsedTime=TimeSpan.FromSeconds( 1.0/10.0 );
			_app.IsFixedTimeStep=true;
		}
		*/
	}
	
	void PollKeyboard(){

	}

	void PollMouse(){

	}
	
	void PollTouch(){

	}


	
	//***** BBGame *****
	
	public override void SetUpdateRate( int hertz ){
		base.SetUpdateRate( hertz );
		ValidateUpdateTimer();
	}
	
	public override int SaveState( String state ){
		IsolatedStorageFile file=IsolatedStorageFile.GetUserStoreForApplication();
		if( file==null ) return -1;
		
		IsolatedStorageFileStream stream=file.OpenFile( ".monkeystate",FileMode.Create );
		if( stream==null ) return -1;

		StreamWriter writer=new StreamWriter( stream );
		writer.Write( state );
		writer.Close();
		
		return 0;
	}
	
	public override String LoadState(){
		IsolatedStorageFile file=IsolatedStorageFile.GetUserStoreForApplication();
		if( file==null ) return "";
		
		IsolatedStorageFileStream stream=file.OpenFile( ".monkeystate",FileMode.OpenOrCreate );
		if( stream==null ){
			return "";
		}

		StreamReader reader=new StreamReader( stream );
		String state=reader.ReadToEnd();
		reader.Close();
		
		return state;
	}
	
	public override bool PollJoystick( int port,float[] joyx,float[] joyy,float[] joyz,bool[] buttons ){
		return false;
	}
	
	public override void SetMouseVisible( bool visible ){
		_app.IsMouseVisible=visible;
	}
		
	public override FileStream OpenFile( String path,FileMode mode ){
	
		if( path.StartsWith( "monkey://internal/" ) ){
			IsolatedStorageFile file=IsolatedStorageFile.GetUserStoreForApplication();
			if( file==null ) return null;

			try{
				IsolatedStorageFileStream stream=file.OpenFile( path.Substring( 18 ),mode );
				return stream;
			}catch( Exception ){
			}
		}else{
			return base.OpenFile( path,mode );
		}
		return null;
	}
	
	public override Stream OpenInputStream( String path ){
	
		if( path.StartsWith( "monkey://data/" ) ){
			try{
				return TitleContainer.OpenStream( PathToContentPath( path ) );
			}catch( Exception ){
			}
		}else{
			return base.OpenInputStream( path );
		}
		return null;
	}
	
	public virtual Game GetXNAGame(){
		return _app;
	}
	
	public virtual String PathToContentPath( String path ){
		if( path.StartsWith("monkey://data/") ) return "Content/monkey/"+path.Substring( 14 );
		return "";
	}
	
	public virtual Texture2D LoadTexture2D( String path ){
		return null;
	}

	public virtual SoundEffect LoadSoundEffect( String path ){
		return null;
	}
	
	public virtual Song LoadSong( String path ){
		return null;
	}
	
	
	//***** INTERNAL *****
	
	public override void Quit(){
		_exit=true;
		_app.Exit();
	}
	
	public override void SuspendGame(){
		base.SuspendGame();
		ValidateUpdateTimer();
	}
	
	public override void ResumeGame(){
		base.ResumeGame();
		ValidateUpdateTimer();
	}
	
	public override void UpdateGame(){
		PollKeyboard();
		PollMouse();
		PollTouch();
		base.UpdateGame();
	}
	
	public virtual void Run(){

		_app.IsMouseVisible=true;
			
		StartGame();
	}
	
	public virtual void Update( GameTime gameTime ){
		if( _exit ) return;
	
		if( PollSuspended() ) return;

		int updates;
		
		for( updates=0;updates<4;++updates ){
			_nextUpdate+=_updatePeriod;
			
			UpdateGame();
			if( !_app.IsFixedTimeStep || _updateRate==0 || _exit ) break;
			
			if( _nextUpdate-(double)Millisecs()>0 ) break;
		}
		
		if( updates==4 ) _nextUpdate=(double)Millisecs();
	}
	
	public virtual bool BeginDraw(){
		if( _exit ) return false;

		return !PollSuspended();
	}

	public virtual void Draw( GameTime gameTime ){
		if( _exit ) return;
	
		RenderGame();
	}

	/*
	public virtual void FormClosing( object sender,System.Windows.Forms.FormClosingEventArgs e ){
		if( _exit ) return;
		
		KeyEvent( BBGameEvent.KeyDown,0x1b0 );
		KeyEvent( BBGameEvent.KeyUp,0x1b0 );
		
		e.Cancel=true;
	}
	*/
}
