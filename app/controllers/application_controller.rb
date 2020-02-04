class ApplicationController < ActionController::Base
  before_filter :set_company_information
  before_filter :set_current_user

  protect_from_forgery
  protected

  attr_accessor :current_user

  def set_current_user
    @current_user ||= session[:session_token] && User.find_by_session_token(session[:session_token])
  end

  def current_user?(id)
    @current_user.id.to_s == id
  end

  def set_company_information
    @company_information = Business.first!
  end
end
