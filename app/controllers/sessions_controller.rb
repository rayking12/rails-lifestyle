class SessionsController < ApplicationController
    def new; end
    
    def login
        user = User.find_by(username: session_params[:username])
        if user
            session[:user_id] = user.id
            redirect_to root_path, notice: 'You have successfully logged in.'
        else
            flash.now[:login_error] = 'Username not found'
            render 'new'
        end
    end
    def logout
        logout_user
        redirect_to login_path
      end
    
      private
    
      def session_params
        params.require('session').permit(:username)
      end
end
