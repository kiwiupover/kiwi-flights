module Api
  class ItinerariesController < ApplicationController

    def index
      itineraries = Itinerary.all
      render json: itineraries
    end

    def show
      slug = params[:id].gsub('-', ' ').titleize
      
      itinerary = Itinerary.where(title: slug)
      render json: itinerary
    end

    def create
      itinerary = Itinerary.create params[:itinerary]
      render json: itinerary, status: :ok
    end

    def update
      itinerary = Itinerary.find(params[:id])
      if itinerary.update_attributes(params[:itinerary])
        render json: itinerary, status: :ok
      else
        render json: itinerary.errors, status: :unprocessable_entity
      end
    end

    def destroy
      itinerary = Itinerary.find(params[:id])
      itinerary.destroy
      render json: nil, status: :ok
    end
  end
end
