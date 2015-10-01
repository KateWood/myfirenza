class InquiryMailer < ApplicationMailer
	default :from => "inquiry_alert@myfirenza.com"

	def notification_email(inquiry)
		@inquiry = inquiry
		@url = "http://myfirenza.com/login"
		mail(:to => "dave@firenzapizza.com, dbaer@firenzapizza.com", :subject => "You have received a new inquiry on myfirenza.com")
	end
end
