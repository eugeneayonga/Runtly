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
        run = user.runs.create(run_params)
        if run.valid?
            render json: run, status: :created
        else
            render json: {error: run.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update
    end

    def destroy
    end

end
