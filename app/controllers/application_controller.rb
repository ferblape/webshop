class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def admin_required
    (current_user && current_user.is_admin?) || redirect_to(root_url, :notice => 'admin required')
  end

  def login_required
    current_user || redirect_to(root_url, :notice => 'login required')
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

end
