class RunsController < ApplicationController

    def index
        if user
            render json: user.runs.all, status: :ok
        else
            render json: {error: ["Unauthorized Access"]}, status: :unauthorized
        end
    end

    def show
        run = user.runs.find_by(id: params[:id])

        if run
            render json: run, status: :ok
        else
            render json: {error: ["Unauthorized Access"]}, status: :unauthorized
        end
    end

    def create
    end

    def update
    end

    def destroy
    end

end
