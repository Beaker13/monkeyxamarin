Import "native/uitableviewcell2.cs"
Import uilabel
Import uiview
Import uitableviewcellaccessory
Import uitableviewcellstyle

Extern


Class UITableViewCell Extends UIView = "UITableViewCell"
	Field TextLabel:UILabel
	Field Accessory:UITableViewCellAccessory
	Field Editing:Bool
	Field EditingAccessory:UITableViewCellAccessory
	Field Highlighted:Bool
	Field ImageView:UIImageView
	Field IndentationLevel:Int
	Field IndentationWidth:Float
	Field Selected:Bool
	Field ShowDeleteConfirmation:Bool
	
	
	Method Dispose:Void(disposing:Bool)
	Method SetEditing:Void(editing:Bool, animated:Bool)
	
End


Class UITableViewCellWithStyle Extends UIView = "UITableViewCellWithStyle"
	Field TextLabel:UILabel
	Field Accessory:UITableViewCellAccessory
	Field Editing:Bool
	Field EditingAccessory:UITableViewCellAccessory
	Field Highlighted:Bool
	Field ImageView:UIImageView
	Field IndentationLevel:Int
	Field IndentationWidth:Float
	Field Selected:Bool
	Field ShowDeleteConfirmation:Bool
	
	
	Method Dispose:Void(disposing:Bool)
	Method SetEditing:Void(editing:Bool, animated:Bool)
	
	Function Create:UITableViewCell(style:UITableViewCellStyle, reuseIdentifier:String)	
End

