class UserMailer < ActionMailer::Base
  default from: "tutorails.katarina@gmail.com"

  def contact_confirmation(email, first_name, last_name, message)
  	@email, @first_name, @last_name, @message = email, first_name, last_name, message

  	mail(:to => email, :subject => "Thank you for contacting us!")
  end

  def adopt_confirmation(email, first_name, last_name, pet_name)
  	@email, @first_name, @last_name, @message = email, first_name, last_name, pet_name

  	mail(:to => email, :subject => "Thank you for submitting your adoption application!")
  end
end
