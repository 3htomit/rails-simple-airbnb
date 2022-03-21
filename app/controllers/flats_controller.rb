class FlatsController < ApplicationController
  before_action :set_flat, only: [:show]

  def index
    @flats = Flat.all
  end

  def show
  end

  def new
    @new_flat = Flat.new
  end

  def create
    @new_flat = Flat.new(flat_params)
    @new_flat.save
    redirect_to flat_path(@new_flat)
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
