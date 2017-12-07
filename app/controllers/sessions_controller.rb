class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]

   def new
   end


   def create
      user = User.find_by(username: params[:username])
      if user && user.authenticate(params[:password])
        # you are who you say you are

        session[:user_id] = user.id
        redirect_to profile_path
      else

       # sign in failed
        flash[:message] = "Wrong username or password"
        redirect_to login_path

     end
    end


   def destroy
      session[:user_id] = nil
      redirect_to home_path
   end

end
