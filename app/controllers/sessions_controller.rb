class SessionsController < ApplicationController
  before_action :authorize, only: :destroy
  before_action :check_login, only: [:new, :create]

  def new
  end

  def create
    # find user by name
    # check password
    # create session
    user = User.find_by_name params[:name] 
    if user.try(:authenticate, params[:password]) # use && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url
    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url
  end

  private 

  def check_login
    if helpers.current_user 
      redirect_to root_url
    end 
  end

end
