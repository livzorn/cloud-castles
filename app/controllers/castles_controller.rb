class CastlesController < ApplicationController
  def index
    @castles = Castle.all
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

  def edit
    # method to be written!
  end

  private

  def castle_params
    params.require(:castle).permit(:name, :description, :location, :price, photos: [])
  end
end
