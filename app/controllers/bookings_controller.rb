class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user_id: current_user)
    @castles = Castle.where(user_id: current_user)
  end

  def new
    @castle = Castle.find(params[:castle_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.castle = Castle.find(params[:castle_id])
    @booking.user = current_user

    if @booking.save
      redirect_to bookings_path
    else
      render 'new'
    end
  end
  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end
  private
  def booking_params
    params.require(:booking).permit(:check_in_date, :check_out_date)
  end
end


