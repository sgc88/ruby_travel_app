class SessionsController < ApplicationController

  def create
    user = User.find_by_email(params[:email])
    # If the user exists and password entered is correct.
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
    # If user's login doesn't work, send them back to the login form.
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
