Import xamarin.ios.ns.nsindexpath
Import uitableview
Import uitableviewcell


Extern

Class UITableViewSource = "UITableViewSource"

	Method RowsInSection:Int(tableview:UITableView, section:Int)
	
	Method RowSelected:Void(tableView:UITableView, indexPath:NSIndexPath)
	Method RowDeselected:Void(tableView:UITableView, indexPath:NSIndexPath)
	
	Method GetCell:UITableViewCell(tableView:UITableView, indexPath:NSIndexPath)
	Method AccessoryButtonTapped:Void(tableView:UITableView, indexPath:NSIndexPath)
	Method AccessoryForRow:UITableViewCellAccessory(tableView:UITableView, indexPath:NSIndexPath)
	Method NumberOfSections:Int(tableView:UITableView)
	
	Method TitleForHeader:String(tableView:UITableView, section:Int)
	Method TitleForFooter:String(tableView:UITableView, section:Int)
	
End
