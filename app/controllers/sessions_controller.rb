class SessionsController < ApplicationController

    def create
        @user = User.find_by(username: params[:username])

        if @user && @user.authenticate(params[:password])
            render json: @user
        end
    end

    def show
    end
end