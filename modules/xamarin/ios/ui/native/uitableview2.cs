
class UITableViewWithStyle : UITableView {
	public static UITableView Create(RectangleF frame, UITableViewStyle style) {
		return new UITableView(frame, style);
	}
}


