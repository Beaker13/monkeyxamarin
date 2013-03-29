Import uinavigationcontroller

Extern

Class MFMailComposeViewController Extends UINavigationController = "MonoTouch.MessageUI.MFMailComposeViewController"
	Field CanSendMail:Bool

	Method SetToRecipients:Void(recipients:String[])
	Method SetCcRecipients:Void(ccRecipients:String[])
	Method SetBccRecipients:Void(bccRecipients:String[])
	Method SetSubject:Void(subject:String)
	Method SetMessageBody:Void(body:String, isHtml:Bool)
	

End
