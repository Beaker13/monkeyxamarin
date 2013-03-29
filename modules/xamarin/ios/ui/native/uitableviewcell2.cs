
class UITableViewCellWithStyle : UITableViewCell {
	public static UITableViewCell Create(UITableViewCellStyle style, string reuseIdentifier) {
		return new UITableViewCell(style, reuseIdentifier);
	}
}


