class SessionsController < ApplicationController
    layout(false)

    
      def create
        user = User.find_by(email: params[:loginn][:email].downcase)
        if user && user.authenticate(params[:loginn][:password])
          session[:user_id] = user.id
          redirect_to main_admin_path, notice: 'Successfully logged in!'
        else
          flash.now.alert = "Incorrect email or password, try again."
          render :login
        end
      end

      def destroy
        session.delete(:user_id)
        redirect_to login_path, notice: "Logged out!"
      end
      
    end