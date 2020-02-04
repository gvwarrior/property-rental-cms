class SessionsController < ApplicationController

  # before_filter :set_current_user
  #attr_accessor :session

  def new
    # default: render 'new' template
  end

  def create
    @user = User.find_by_email(params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:session_token] = @user.session_token
      #flash[:notice] = "You are logged in as #{@user.user_id}"
      if @user.is_admin == 'true'
        redirect_to rails_admin.dashboard_path
      else
        redirect_to properties_path
      end

    else
      flash[:notice] = "Invalid email and password combination"
      redirect_to login_path, :method=> :get
    end

  end

  def destroy
    #session[:session_token] = nil
    reset_session
    redirect_to properties_path
  end

end