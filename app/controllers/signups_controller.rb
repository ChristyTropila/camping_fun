class SignupsController < ApplicationController

    def index
        @signup = Signup.all
    end

    def show
        @signup = Signup.find(params[:id])
    end

    def def new
        @signup = Signup.new
    end

    
end