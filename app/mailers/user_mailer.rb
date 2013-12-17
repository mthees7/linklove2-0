class UserMailer < ActionMailer::Base
  default from: 'linklove.welcome.gmail.com'

  def invitation_email(invited_user, password, message, current_user, stream)
    @invited_user = invited_user
    @message = message
    @current_user = current_user
    @stream = stream
    mail(to: "#{invited_user}", subject: "Join #{current_user.email} on linklove!")
  end
end


# @invited_user.email