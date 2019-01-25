class WelcomeMailer < ApplicationMailer

  def welcome_email_send
    @user = user
    mail to: user.email, subject: "Welcome #{user.firstname}! And a short message from Nick.", from: "nick@sail.university"

  end

end
