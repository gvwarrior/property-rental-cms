class UsersController < ApplicationController

  before_filter :set_current_user

  # Display all saved Users
  #
  def index
    @users = User.all  # Return all Users
  end

  # Display one User
  #
  def show
    email = user_params[:email] # retrieve User ID from URI route
    @user = User.find_by_email email  # Find User by ID and return the User
    # will render app/views/users/show.<extension> by default
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def new
    # default: render 'new' template
  end

  def create
    if User.find_by_email(user_params[:email])!=nil
      flash[:notice] = "Sorry, this user-email is taken. Try again."
      redirect_to new_user_path, :method=>:get
    else
      @user = User.create_user!(user_params)
      flash[:notice] = "Welcome <#{@user.name}>. Your account was successfully created."
      #redirect_to movies_path
      redirect_to login_path, :method=>:get
    end

  end
end
