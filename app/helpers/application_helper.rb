module ApplicationHelper
  def authentication_menu
    links = ""
    if user_signed_in?
      links += "<li>#{ link_to('Edit Profile', edit_user_registration_path )}</li>"
      links += "<li>#{ link_to('Sign Out', destroy_user_session_path, :method => :delete )}</li>"
    else
      links += "<li>#{ link_to('Sign Up', new_user_registration_path) }</li>"
      links += "<li>#{ link_to('Sign In', new_user_session_path) }</li>"
    end
  end
end

