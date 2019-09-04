class SightingsController < ApplicationController


    def show
       sighting = Sighting.find_by(id: params[:id])
       if sighting
        render json: sighting, include: [:bird,:location], except: [:created_at, :updated_at]
       else
        render json: {message: 'There were NO bird Sightings with that ID'}
       end
        
    end
end
