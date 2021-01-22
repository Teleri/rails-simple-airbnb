class FlatsController < ApplicationController
  before_action :find_flat, only: [:show, :create, :edit, :update, :destroy]

  def index
    @flat = Flat.all
  end

  def show
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(params[:flat])
    if @flat.save
      redirect_to @flat
    else
      render 'new'
    end
  end

  def edit
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to @flat
    else
      render 'new'
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

  def find_flat
    @flat = Flat.find(params[:id])
  end
end
