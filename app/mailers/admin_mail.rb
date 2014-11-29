class AdminMail < ActionMailer::Base
   default from: "nashope.mp@gmail.com"

  def welcome_email(ngo)
  	@ngo = ngo
    mail(to: "promohamed9113@gmail.com", subject: 'Welcome to My Awesome Site') do |format|
      format.text { render :mail_to_admin }
  	end
  end

   def approve_ngo(ngo_name)
  	@ngo_name = ngo_name
    mail(to: "promohamed9113@gmail.com", subject: 'Welcome to My Awesome Site') do |format|
      format.text { render :approve }
  	end
  end
  
   def disapprove_ngo(ngo_Name)
  	@ngo_Name = ngo_Name
    mail(to: "promohamed9113@gmail.com", subject: 'Welcome to My Awesome Site') do |format|
      format.text { render :disapprove }
  	end
  end
end
