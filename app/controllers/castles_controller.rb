class CastlesController < ApplicationController
  def index
    if params[:query].present?
      @castles = Castle.search_by_description_and_location(params[:query])
    else
      @castles = Castle.all
    end
    @markers = @castles.geocoded.map do |castle|
      {
        lat: castle.latitude,
        lng: castle.longitude
      }
    end

  end

  def show
    @castle = Castle.find(params[:id])
  end

  def new
    @castle = Castle.new
  end

  def create
    @castle = Castle.new(castle_params)
    @castle.user = current_user
    if @castle.save
      redirect_to castle_path(@castle)
    else
      render 'new'
    end
  end

  def edit
    @castle = Castle.find(params[:id])
  end

  private

  def castle_params
    params.require(:castle).permit(:name, :description, :location, :price, photos: [])
  end
end
