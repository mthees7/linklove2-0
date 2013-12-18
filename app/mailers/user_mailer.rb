class UserMailer < ActionMailer::Base
  default from: 'linklove.welcome.gmail.com'

  def invitation_email(invited_user, password, message, current_user, stream)
    @invited_user = invited_user
    @message = message
    @current_user = current_user
    @stream = stream
    @password = password
    mail(to: "#{invited_user}", subject: "Join #{current_user.email} on linklove!")
  end

  def user_invitation_email(invited_user, message, current_user, stream)
    @invited_user = invited_user
    @message = message
    @current_user = current_user
    @stream = stream
    mail(to: "#{invited_user}", subject: "#{current_user.email} invited you to a stream!")
  end
end


# @invited_user.email