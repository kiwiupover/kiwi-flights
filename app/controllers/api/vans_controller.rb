module Api
  class VansController < ApplicationController

    def index
      vans = Van.all
      render json: vans
    end

    def show
      van = Van.find(params[:id])
      render json: van
    end

    def create

      van = Van.new(params[:van])
      if van.save
        render json: van, status: :created
      else
        render json: van.errors, status: :unprocessable_entity
      end
    end

    def update
      van = Van.find(params[:id])

      if van.update_attributes(params[:van])
        render json: van, status: :ok
      else
        render json: van.errors, status: :unprocessable_entity
      end
    end

    def destroy
      van = Van.find(params[:id])
      van.destroy
      render json: nil, status: :ok
    end

  end

end
