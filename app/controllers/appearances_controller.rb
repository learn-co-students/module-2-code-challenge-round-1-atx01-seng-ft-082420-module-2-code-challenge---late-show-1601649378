class AppearancesController < ApplicationController

def new
   @appearance = Appearance.new
   @guests =  Guest.all
   @episodes = Episode.all
 end


def create
new_appearance = Appearance.new(appearance_params)
new_appearance.save
redirect_to episode_path(new_appearance.episode)

end







private

def appearance_params

    params.require(:appearance).permit(:rating, :guest_id, :episode_id)

end
    
end



