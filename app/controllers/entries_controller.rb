class EntriesController < ApplicationController
    before_action :authorized, only: [:create, :destroy, :update]

    def create
        entry = @user.entries.create(entry_params)
        render json: entry, status: :created
    end

    def destroy
        entry = @user.entries.find(params[:id])
        entry.destroy
        render json: entry
    end

    def update
        entry = @user.entries.find(params[:id])
        entry.update(entry_params)
        render json: entry
    end

    private

    def entry_params 
        params.permit(:description)
    end

end
