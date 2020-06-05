class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  # Add additional helper method for admin authentication here?

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end
end
