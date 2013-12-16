class PagesController < ApplicationController
  before_filter :check_if_logged_in, :only =>[:streamify]

  def home
  end

  def streamify
    session[:url] = nil

    #make sure user is logged in, if not, prompt login to activate session before proceding
      ##need access to users streams
    #display form to share the page that the bookmarklet was clicked from
  end

  def public_stream
  end

  private
  def check_if_logged_in
    unless user_signed_in?
      session[:url] = params[:url] unless params[:url].nil?
      redirect_to(new_user_session_path)
    end
    # check if params:url is stored in the create users controller and redirect back to
    # streamify with the user logged in and the url passed thru
  end

end