class SessionsController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]

    def new
        render '/'
    end

    def create
        if params[:name] && params[:name] != ""
            session[:name] = params[:name]
        else 
            redirect_to login_path
        end
    end

    def destroy
        session.delete :name
    end
end