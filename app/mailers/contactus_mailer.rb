class ContactusMailer < ActionMailer::Base
  default from: "notification@landn.com"


  def contactus_email(contact)
  	@contact = contact
  	mail(to: "nickliou91@gmail.com", 
  		subject:" Message from contact us",
  		template_name: 'quotation_notification' 
  		)

  end

end
