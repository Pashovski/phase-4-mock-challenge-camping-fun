class ActivitiesController < ApplicationController

    def index
        render json: Activity.all
    end

    def destroy
        activity = Activity.find_by(id: params[:id])

        if activity
            activity.destroy
            render json: {message: 'Activity deleted'}, head: :no_content
        else
            render json: {error: "cannot find activity"}, status: :not_found
        end
    end
end
