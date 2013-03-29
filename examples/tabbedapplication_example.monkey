Import xamarin.ios

Global window:UIWindow
Global tabController:TabBarController


Class TabBarController extends UITabBarController

	Field tab1:UIViewController
	Field tab2:UIViewController
	Field tab3:UIViewController
	Field tab4:UIViewController

	Method New()
		tab1 = New UIViewController()
		tab1.TabBarItem = UITabBarItem.Create(UITabBarSystemItem.Favorites, 0)
		tab1.TabBarItem.Enabled = True		' not sure why we need this!
		tab1.View.BackgroundColor = UIColor.Green

		tab2 = New UIViewController()
		tab2.Title = "Orange"
		tab2.TabBarItem.Image = UIImage.FromFile("data/second.png")		
		tab2.View.BackgroundColor = UIColor.Orange
	
		tab3 = New UIViewController()
		tab3.Title = "Red"
		tab3.TabBarItem.BadgeValue = "Hi"
		tab3.View.BackgroundColor = UIColor.Red
		
		tab4 = New UIViewController()
		tab4.TabBarItem = UITabBarItem.Create(UITabBarSystemItem.Featured, 0)
		tab4.TabBarItem.Enabled = True		' not sure why we need this!
		tab4.TabBarItem.BadgeValue = "1"
		tab4.View.BackgroundColor = UIColor.Purple
		
		ViewControllers = [tab1,tab2,tab3,tab4]
	End
End
        


Function Main()
	window = CreateWindow(UIScreen.MainScreen.Bounds)	

	tabController = New TabBarController ()

	window.RootViewController = tabController
	window.MakeKeyAndVisible ()	
End
