class Signup < ApplicationRecord
    belongs_to :camper
    belongs_to :activity

    # def find_name
    #     @activity = Activity.all
    #     @activity.find_by_params[:id]
    #     @activity.name 
    # end
end
