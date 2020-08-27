class CampersController < ApplicationController

    def index
        @campers = Camper.all
    end

    def show
        @camper = Camper.find(params[:id])
        @signup = Signup.all
    end

    def def new
        @camper = Camper.new
    end

    
end
