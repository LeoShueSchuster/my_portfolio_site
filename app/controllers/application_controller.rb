# frozen_string_literal: true

class ApplicationController < ActionController::Base
  private

  def require_signin
    unless current_user
      redirect_to new_session_url, alert: 'Please sign in first!'
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def require_admin
    unless current_user_admin?
      redirect_to root_url, alert: 'Unauthorized access!'
    end
  end

  def current_user_admin?
    current_user&.admin?
  end

  helper_method :current_user_admin?
end
