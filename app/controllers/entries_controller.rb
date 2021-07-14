class EntriesController < ApplicationController
    before_action :authorized, only: [:create]

    def create
        entry = @user.entries.create(entry_params)
        render json: entry, status: :created
    end

    private

    def entry_params 
        params.permit(:description)
    end

end
