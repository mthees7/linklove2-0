class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource)
    if session[:url].present?
      "/streamify/?url=#{ session[:url] }"
    else
      root_path
    end
  end
end
