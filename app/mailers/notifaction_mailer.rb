class NotifactionMailer < ActionMailer::Base
  default from: "no-reply@nomsterapp.com"

def comment_added
	mail(to: "bonjias@gmail.com",
		subject: "A comment has been added")

end 






end
