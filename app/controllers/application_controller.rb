class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_screen_style
    @current_screen_style ||= WebpageStyle.last
  end

  helper_method :current_screen_style #make this method available in views
end
