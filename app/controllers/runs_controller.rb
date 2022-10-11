class RunsController < ApplicationController

    def index
        if user
            render json: user.runs.all
        else
            render json: {error: ["Unauthorized Access"]}, status: :unauthorized
        end
    end

    def show
    end

    def create
    end

    def update
    end

    def destroy
    end

end
