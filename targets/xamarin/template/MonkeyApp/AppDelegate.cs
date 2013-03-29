using System;
using System.Collections.Generic;
using System.Linq;

using MonoTouch.Foundation;
using MonoTouch.UIKit;
//using MonoTouch.MapKit;
//using MonoTouch.MediaPlayer;

using System.Threading;
using System.IO;
using System.IO.IsolatedStorage;
using System.Diagnostics;
using System.Drawing;


namespace MonkeyApp
{
	// The UIApplicationDelegate for the application. This class is responsible for launching the 
	// User Interface of the application, as well as listening (and optionally responding) to 
	// application events from iOS.
	[Register ("AppDelegate")]
	public partial class AppDelegate : UIApplicationDelegate
	{
		// class-level declarations
		//UIWindow window;
		//MonkeyAppViewController viewController;

		//
		// This method is invoked when the application has loaded and is ready to run. In this 
		// method you should instantiate the window, load the UI into it and then make the window
		// visible.
		//
		// You have 17 seconds to return from this method, or iOS will terminate your application.
		//
		public override bool FinishedLaunching (UIApplication app, NSDictionary options)
		{
			//window = new UIWindow (UIScreen.MainScreen.Bounds);

			bb_.bbMain ();
			/*
			viewController = new MonkeyAppViewController ();
			*/
			//window.RootViewController = viewController;
			//window.MakeKeyAndVisible ();

			return true;
		}
	}

public class MonkeyConfig{
//${CONFIG_BEGIN}
//${CONFIG_END}
}

//${TRANSCODE_BEGIN}
//${TRANSCODE_END}


}

