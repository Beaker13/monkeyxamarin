Import "native/uitableview2.cs"
Import uitableviewsource
Import uiscrollview
Import uitableviewcell
Import uitableviewdatasource
Import xamarin.ios.ns.nsindexpath
Import uitableviewstyle

Extern

Class UITableViewWithStyle = "UITableViewWithStyle"
	Field Source:UITableViewSource
	Field DataSource:UITableViewDataSource
	Field Style:UITableViewStyle			'getter only!
	
	Method Dispose:Void(disposing:Bool)
	Method DequeueReusableCell:UITableViewCell(identifier:String)
	Method DeselectRow:Void(indexPath:NSIndexPath, animated:Bool)	
	
	Function Create:UITableView(frame:RectangleF, style:UITableViewStyle)

End


Class UITableView Extends UIScrollView = "UITableView"
	Field Source:UITableViewSource
	Field DataSource:UITableViewDataSource
	Field Style:UITableViewStyle			'getter only!
	
	Method Dispose:Void(disposing:Bool)
	Method DequeueReusableCell:UITableViewCell(identifier:String)
	Method DeselectRow:Void(indexPath:NSIndexPath, animated:Bool)	

End

