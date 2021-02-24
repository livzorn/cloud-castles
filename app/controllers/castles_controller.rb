class CastlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_castle, only: [:show, :edit, :update, :destroy, :my_castle_bookings]

  def index
    # filter out the castles owned by the current user
    bookable_castles = filter_by_user
    # search through the castles if a query is present
    @castles = search_castles(bookable_castles)

    # add markers to the map for all the castles shown
    @markers = @castles.geocoded.map do |castle|
      {
        lat: castle.latitude,
        lng: castle.longitude
      }
    end
  end

  def show
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
    @castles = Castle.where(user_id: current_user.id)
  end

  def my_castle_bookings
    @bookings = @castle.bookings
  end

  def edit
  end

  def update
    @castle.update(castle_params)
    redirect_to castle_path(@castle)
  end

  def destroy
    @castle.destroy
    redirect_to my_castles_castles_path
  end

  private

  def find_castle
    @castle = Castle.find(params[:id])
  end

  def castle_params
    params.require(:castle).permit(:name, :description, :location, :price, :sleeps, :bedrooms, :bathrooms, photos: [])
  end

  def filter_by_user
    return Castle.where.not(user_id: current_user.id) if user_signed_in?

    return Castle.all
  end

  def search_castles(castles)
    return Castle.search_by_description_and_location(params[:query]) if params[:query].present?

    return castles
  end
end
