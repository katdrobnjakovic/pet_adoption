class PagesController < ApplicationController

	def home
	end

	def foster
		
	end
	
	def donate
	end

	def volunteer
	end

	def about
		if request.post? 
			# Send the e-mail
			first_name = params['first_name']
			last_name = params['last_name']
			email = params['email']
			message = params['message']
		UserMailer.contact_confirmation(email, first_name, last_name, message).deliver
			@success = true

		end
	end

	def adoptForm
		if request.post? 
			# Send the e-mail
			first_name = params['first_name']
			last_name = params['last_name']
			email = params['email']
			pet_name = params['pet_name']
			UserMailer.adopt_confirmation(email, first_name, last_name, pet_name).deliver
			@success = true

		end
	end

	def volunteerForm
		if request.post? 
			# Send the e-mail
			first_name = params['first_name']
			last_name = params['last_name']
			email = params['email']
			UserMailer.volunteer_confirmation(email, first_name, last_name).deliver
			@success = true

		end
	end

	def fosterForm
		if request.post? 
			# Send the e-mail
			first_name = params['first_name']
			last_name = params['last_name']
			email = params['email']
			UserMailer.foster_confirmation(email, first_name, last_name).deliver
			@success = true

		end
	end



end
