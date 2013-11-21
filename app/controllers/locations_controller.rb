module Api
  class LocationsController < ApplicationController

    def index
      locations = Location.all
      render json: locations
    end

    def show
      location = Location.find(params[:id])
      render json: location
    end

    def create
      location = Location.create params[:location]
      render json: location, status: :ok
    end

    def update
      location = Location.find(params[:id])
      if location.update_attributes(params[:location])
        render json: location, status: :ok
      else
        render json: location.errors, status: :unprocessable_entity
      end
    end

    def destroy
      location = Location.find(params[:id])
      location.destroy
      render json: nil, status: :ok
    end
  end
end
