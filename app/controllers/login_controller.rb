class LoginController < ApplicationController
  def start
	email = params[:email]
	password = params[:password]
	if email == "example@facecalendar.com" && password == "nosecret"
		session[:user_id] = 0
		redirect_to :controller => 'calendar', :action => 'show'
	end
		
  end

  def logout
  end
end
