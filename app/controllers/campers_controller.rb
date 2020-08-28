class CampersController < ApplicationController
    
    def index
        @camper = Camper.all
    end

    def show
        @camper = Camper.find(params[:id])
    end
    def new
        @camper = Camper.new
    end
    def create
        @camper = Camper.create(camper_params)
        redirect_to camper_path(@camper)
    end
    def edit
        @camper = Camper.find(params[:id])
        render :form
    end
    def update
        @camper = Camper.find(params[:id])
        @camper.update(strong_params(:name, :age))
        redirect_to camper_path(@camper)
    end
    private
    def camper_params(*args)
        params.require(:camper).permit(*args)
    end
end
