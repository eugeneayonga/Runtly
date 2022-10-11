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
        run = user.runs.find_by(id: params[:id])
        if run
            run.update(run_params)
            render json: run, status: :accepted
        else
            render json: {error: "Not found"}, status: :not_found
        end
    end

    def destroy
        run = user.runs.find_by(id: params[:id])
        if run
            run.destroy
            render json: {success: "Run deleted"}
        else
            render json: {error: "Run not found"}, status: :not_found
        end
    end

    private

    def run_params 
        params.require(:run).permit(:date, :distance, :total_time, :calories, :elevation, :average_heartrate, :average_pace, :fastest_split, :favorite, :user_id)
    end

end
