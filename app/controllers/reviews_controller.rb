class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @castle = Castle.find(params[:castle_id])
    @booking = Booking.find(params[:booking_id])
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find([:booking_id])
    @castle = booking.castle
    @review.user = current_user
    @review.castle = @castle
    @booking.reviewed = true
    if @review.save
      redirect_to castle_path(@castle)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
