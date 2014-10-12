class Sendmail < ActionMailer::Base
  default from: "from@example.com"
   def welcome_email(ngo)
    @ngo = ngo
    mail(to: @ngo.email, subject: 'appending to afmin approval ' ,body: "owgygf9wgyuedyuweyuigfyuwfiyu")
  end
end
