class UsersController < ApplicationController

    #Creates a new user
    def create
        user = User.create(user_params)
        if user.valid?
            render json: user
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    #Handles the login with the data from the frontend
    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            render json: user
        else
            render json: {error: "You done goofed"}
        end
    end

    private

    def user_params
        params.permit(:username, :password)
    end


end
