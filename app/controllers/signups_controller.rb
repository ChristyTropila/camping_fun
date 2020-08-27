class SignupController < ApplicationController
    
    def index
        @signup = Signup.all
    end

    def show
        @signup = Signup.find(params[:id])
    end

    def new
        @signup = Signup.new
        render :form
    end

    def create
        @signup = Signup.create(strong_params(:camper_id, :activity_id, :time))
        redirect_to signup_path(@signup)
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

    def strong_params(*args)
        params.require(:signup).permit(*args)
    end

end