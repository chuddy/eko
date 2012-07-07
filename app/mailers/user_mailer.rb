class UserMailer < ActionMailer::Base
  default from: "notifications@ekotrade.com"

  def welcome_email(user)
    @user = user
    @url  = "http://0.0.0.0:3000/signin"
    mail(:to => user.email, :subject => "Welcome to My Eko-Trade Site")
  end
end
