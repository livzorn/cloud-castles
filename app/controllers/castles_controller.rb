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

  def edit
    @castle = Castle.find(params[:id])
  end

  private

  def castle_params
    params.require(:castle).permit(:name, :description, :location, :price, photos: [])
  end
end
