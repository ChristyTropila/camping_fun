class SignupsController < ApplicationController
    
    def index
        @signup = Signup.all
    end

    def show
        @signup = Signup.find(params[:id])
    end

    def new
        @signup = Signup.new
        @campers = Camper.all
        @activities = Activity.all
    end

    def create
        @signup = Signup.create(signup_params)
        camper = Camper.find(params[:signup][:camper_id])
        redirect_to camper_path(camper)
    end

    def edit
        @signup = Signup.find(params[:id])
        render :form
    end

    def update
        @signup = Signup.find(params[:id])
        @signup.update(strong_params(:camper_id, :activity_id, :time))
        redirect_to signup_path(@signup)
    end

    private

    def signup_params(*args)
        params.require(:signup).permit(*args)
    end

end