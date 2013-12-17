class UserMailer < ActionMailer::Base
  default from: 'linklove.welcome.gmail.com'

  def invitation_email(invited_user, message, current_user)
    @invited_user = invited_user
    @message = message
    @current_user = current_user
    mail(to: "nick.doherty@gmail.com", subject: "Join #{current_user.email} on linklove!")
  end
end


# @invited_user.email