class SessionsController < ApplicationController

  def new
  end

  def create
  admin = Admin.where(email: params[:session][:email]).first
#	 admin = Admin.find_by_email(params[:session][:email].downcase)
    if admin #&& admin.authenticate(params[:session][:password])
		sign_in admin
		redirect_to static_pages_home_path
		@putan = 'Ty Putan!' 
    else
      	@putan = 'Ty ne Putan!' 
      render 'new'
    end
  end

  def destroy
  end
end
