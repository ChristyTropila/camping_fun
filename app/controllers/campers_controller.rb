class CampersController < ApplicationController
    def index
    end
    def show
        @camper = Camper.find(params[:id])
    end
    def new
        @camper = Camper.new
        render :form
    end
    def create
        @camper = Camper.create(strong_params(:name, :bio))
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
    def strong_params(*args)
        params.require(:camper).permit(*args)
    end
end
