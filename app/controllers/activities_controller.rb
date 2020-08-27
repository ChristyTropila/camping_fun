class ActivitiesController < ApplicationController
    
    def show
        @activity = Activity.find(params[:id])
    end

    def new
        @activity = Activity.new
        render :form
    end

    def create
        @activity = Activity.create(strong_params(:name))
        redirect_to Activity_path(@activity)
    end

    def edit
        @activity = Activity.find(params[:id])
        render :form
    end

    def update
        @activity = Activity.find(params[:id])
        @activity.update(strong_params(:name))
        redirect_to genre_path(@activity)
    end

    private

    def strong_params(*args)
        params.require(:activity).permit(*args)
    end

end