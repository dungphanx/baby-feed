class Api::V1::Users::MilkFeedsController < Api::V1::ApplicationController
  before_action :validate_user_and_baby

  def index
    render json: { milk_feeds: baby.milk_feeds.order(created_at: :desc) }
  end

  def create
    feed = baby.milk_feeds.create(create_params)
  end

  def update
    feed = baby.milk_feeds.find_by(id: params[:id])
    return render json: { messages: ['Milk feed not found'] }, status: 404 unless feed

    feed.update(create_params)
  end

  def destroy
    feed = baby.milk_feeds.find_by(id: params[:id])
    return render json: { messages: ['Milk feed not found'] }, status: 404 unless feed

    feed.destroy
  end

  private

  def create_params
    params.permit(:quantity, :unit, :note, :handle_by_user_id)
  end

  def validate_user_and_baby
    return render json: { messages: ['User not found'] }, status: 404 unless user
    return render json: { messages: ['Baby not found'] }, status: 404 unless baby
  end

  def baby
    @baby ||= user.babies_in_charge.find_by(id: params[:baby_id])
  end
end