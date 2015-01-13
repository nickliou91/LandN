class ContactsController < ApplicationController


	def new
		@contact = Contact.new
	end
	


	def create
		@contact = Contact.new(params[:contact])
		if @contact.valid?
			#TO do send message here
			flash[:success]= "Thank you sending us the enquiry!"
			ContactusMailer.contactus_email(@contact).deliver!

			redirect_to contact_path
		else 
			flash[:danger]= "unsuccessful"
			redirect_to contact_path

		end
	end 	
end
