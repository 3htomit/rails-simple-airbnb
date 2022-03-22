class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :destroy]
  before_action :flat_params, :save_flat, only: [:create, :update]

  def index
    @flats = Flat.all
  end

  def show
  end

  def new
    @flat = Flat.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    @flat_params = params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

  def save_flat
    @flat = Flat.create!(@flat_params)
    redirect_to flat_path(@flat)
  end
end
