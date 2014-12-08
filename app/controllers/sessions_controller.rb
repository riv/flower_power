class SessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by(email: params[:session][:email].downcase)
    if admin && Admin.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in admin
      redirect_to admin
    p "logged in"
    else
      flash[:danger] = "incorrect email or password"
      render 'new'
      p "did not log in"

    end
  end

  def destroy
  end

end
