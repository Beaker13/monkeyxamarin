Import xamarin.ios

Global window:UIWindow

Global homeScreen:HomeScreen



Class HomeScreen Extends UIViewController
	Field table:UITableView

	Method ViewDidLoad:Void()
		Super.ViewDidLoad ()
		table = UITableViewWithStyle.Create(View.Bounds, UITableViewStyle.Grouped)	'View.Bounds)
		'table.Frame = View.Bounds
		table.AutoresizingMask = UIViewAutoresizing.All
		CreateTableItems()
		Add (table)
	End
	
	Method CreateTableItems:Void()
		Local tableItems:List<TableItem> = New List<TableItem>
		tableItems.AddLast(New TableItem("Banana", "Fruits"))
		tableItems.AddLast(New TableItem("Apple", "Fruits"))
		tableItems.AddLast(New TableItem("Orange", "Fruits"))
		tableItems.AddLast(New TableItem("Plum", "Fruits"))
		tableItems.AddLast(New TableItem("Grapes", "Fruits"))
		tableItems.AddLast(New TableItem("Carrots", "Vegetables"))
		tableItems.AddLast(New TableItem("Potato", "Vegetables"))
		tableItems.AddLast(New TableItem("Onion", "Vegetables"))
		tableItems.AddLast(New TableItem("Cabbage", "Vegetables"))
		tableItems.AddLast(New TableItem("Peas", "Vegetables"))
		table.Source = New TableSource(tableItems)	'.ToArray())
	End

	Method CreateTableItems_old:Void()
		Local tableItems:List<String> = New List<String> ()
		tableItems.AddLast ("Vegetables")
		tableItems.AddLast ("Fruits")
		tableItems.AddLast ("Flower Buds")
		tableItems.AddLast ("Legumes")
		tableItems.AddLast ("Bulbs")
		tableItems.AddLast ("Tubers")
		table.Source = New TableSource(tableItems)	'.ToArray())
	End	
	
End

Class ListEx< T > Extends List< T >
	Method GetFromList : T( index : Int )
		Local count : int
		For Local this : T = Eachin Self
			If count = index Then Return this
			count = count + 1
		Next
		Return Null
	End
End



Class TableItem
	Field heading:String
	Field subHeading:String
	Field imageName:String
	
	Field cellStyle:UITableViewCellStyle = UITableViewCellStyle.Normal
	
	Field cellAccessory:UITableViewCellAccessory = UITableViewCellAccessory.DetailDisclosureButton	'None

	Method New(heading:String, subHeading:String)
		Self.heading = heading
		Self.subHeading = subHeading
	End
End

Class TableItemGroup
	Field name:String
	Field footer:String

	Field items:List<TableItem> = New List<TableItem>
End


Class TableSource Extends UITableViewSource
	'Field tableItems:String[]
	Field cellIdentifier:String = "TableCell"
	
	Field indexedTableItems:StringMap<ListEx<TableItem>>
	Field keys:String[]

	Method New(items:List<TableItem>)
		indexedTableItems = New StringMap<ListEx<TableItem>>
		For Local t:= Eachin items
			If indexedTableItems.Contains(t.subHeading)
				indexedTableItems.Get(t.subHeading).AddLast(t)
			Else
				Local tableItemList:= New ListEx<TableItem>
				tableItemList.AddLast(t)
				indexedTableItems.Add (t.subHeading, tableItemList)
			End
		End
		Local keysObj:= indexedTableItems.Keys()
		Local i:Int = 0
		For Local k:= Eachin keysObj
			i += 1 
		End
		keys = New String[i]
		i=0
		For Local k:= Eachin keysObj
			keys[i] = k
			i += 1 
		End
	End
	
	'/// <summary>
	'/// Called by the TableView to determine how many sections(groups) there are.
	'/// </summary>
	Method NumberOfSections:Int(tableView:UITableView)
		return keys.Length
	End

	'/// <summary>
	'/// Called by the TableView to determine how many cells to create for that particular section.
	'/// </summary>
	Method RowsInSection:Int(tableview:UITableView, section:Int)
		Return indexedTableItems.Get(keys[section]).Count
	End
	
	'/// <summary>
	'/// Called when a row is touched
	'/// </summary>
	Method RowSelected:Void(tableView:UITableView, indexPath:NSIndexPath)
		CreateAlertView("Row selected", indexedTableItems.Get(keys[indexPath.Section]).GetFromList(indexPath.Row).heading, "OK", True)
		tableView.DeselectRow(indexPath, True)
	End
	
	Method AccessoryButtonTapped:Void(tableView:UITableView, indexPath:NSIndexPath)
		CreateAlertView("Accessory tapped", indexedTableItems.Get(keys[indexPath.Section]).GetFromList(indexPath.Row).heading, "OK", True)
		tableView.DeselectRow(indexPath, True)
	End

	Method TitleForHeader:String(tableView:UITableView, section:Int)
		return keys[section]
	End
	
	Method TitleForFooter:String(tableView:UITableView, section:Int)
		Return indexedTableItems.Get(keys[section]).Count + " items"
	End
	
	Method GetCell:UITableViewCell(tableView:UITableView, indexPath:NSIndexPath)
		Local cell:UITableViewCell = tableView.DequeueReusableCell (cellIdentifier)
		Local item:TableItem = indexedTableItems.Get(keys[indexPath.Section]).GetFromList(indexPath.Row)
		
		'//---- If there are no cells To reuse, create a New one
		If cell = Null
			cell = UITableViewCellWithStyle.Create(item.cellStyle, cellIdentifier)
			'cell.Accessory = UITableViewCellAccessory.DetailDisclosureButton
		End
		
		'//---- set the item text
		cell.TextLabel.Text = item.heading
		
		'//---- If the item has a valid image, And it's not the contact style (doesn't support images)
		'If item.imageName <> "" And (item.cellStyle <> UITableViewCellStyle.Value2)
		'	If File.Exists(item.imageName) cell.ImageView.Image = UIImage.FromBundle(item.imageName)
		'End
		
		'//---- set the accessory
		cell.Accessory = item.cellAccessory
		
		Return cell
	End
		
	'/// <summary>
	'/// Called by the TableView to get the actual UITableViewCell to render for the particular row
	'/// </summary>
	Method GetCell_old:UITableViewCell(tableView:UITableView, indexPath:NSIndexPath)
		Local cell:UITableViewCell = tableView.DequeueReusableCell (cellIdentifier)
		Local item:String = tableItems[indexPath.Row]
		
		'//---- if there are no cells to reuse, create a new one
		If cell = Null
			cell = UITableViewCellWithStyle.Create(UITableViewCellStyle.Normal, cellIdentifier)
			cell.Accessory = UITableViewCellAccessory.DetailDisclosureButton
'			cell = UITableViewCellStyle.Default
'			cell = cellIdentifier
		End
		
		cell.TextLabel.Text = item
		
		Return cell
	End
End



Function Main()
	window = CreateWindow(UIScreen.MainScreen.Bounds)	
	UIApplication.SharedApplication.SetStatusBarHidden(True,True)

	homeScreen = New HomeScreen ()

	'---- instantiate a new navigation controller
	Local rootNavigationController:= New UINavigationController();
	
	rootNavigationController.PushViewController(homeScreen, False)
	
	'---- set the root view controller on the window. the nav controller will handle the rest
	window.RootViewController = rootNavigationController
	window.MakeKeyAndVisible ()
End

