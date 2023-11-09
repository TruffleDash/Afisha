class ConcertsController < ApplicationController 
  before_action :authenticate_user!, only: [:new, :create, :update]
  def index
    @concerts = Concert.all  
  end

  def show 
    @concert = Concert.find(params[:id])
  end

  def new
    @concert = Concert.new
  end

  def create
    @concert = Concert.new(concert_params)

    if @concert.save
      redirect_to @concert
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @concert = Concert.find(params[:id])
    if @concert.update(concert_params)
      redirect_to @concert
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def concert_params
    params.require(:concert).permit(:title, :body, :price_balcony, :price_amphitheater, :price_ground_floor)
  end
end
