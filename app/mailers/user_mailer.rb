class UserMailer < ActionMailer::Base
  default from: "from@example.com"
	def welcome_email(user)
    	@user = current_user
    	@url  = 'localhost:3000/login'
    	mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end