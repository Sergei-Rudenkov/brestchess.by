class AdminSingUpController < ApplicationController
  def admin
  @admin = Admin.new
	 admin_log = Admin.find_by_email(@admin[:email].downcase)
   if admin_log != nil && admin_log.authenticate(@admin[:password])
    render 'static_pages/home'
    
    else
    render 'admin_sing_up/admin'
  end
end
end
