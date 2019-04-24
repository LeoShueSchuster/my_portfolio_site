class SessionsController < ApplicationController
    def new
    end

    def create
        if user = User.authenticate(params[:email], params[:password])
          session[:user_id] = user.id
          redirect_to users_path, alert: "Welcome back, #{user.name}!"
        else
          redirect_to new_session_path, alert: "Invalid email/password combination!"
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_url, alert: "You're now signed out!"
    end
end