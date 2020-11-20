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

  def my_castles
    @castles = Castle.where(:user_id => current_user.id)
  end

  def my_castle_bookings
    @castle = Castle.find(params[:id])
    @bookings = @castle.bookings
  end

  def edit
    @castle = Castle.find(params[:id])
  end

  def update
    @castle = Castle.find(params[:id])
    if @castle.update(castle_params)
      redirect_to castle_path(@castle)
    else
      render 'edit'
    end
  end

  def destroy
    @castle = Castle.find(params[:id])
    @castle.destroy
    redirect_to castle_path(@castles)
  end

  private

  def castle_params
    params.require(:castle).permit(:name, :description, :location, :price, :sleeps, :bedrooms, :bathrooms, photos: [])
  end
end
