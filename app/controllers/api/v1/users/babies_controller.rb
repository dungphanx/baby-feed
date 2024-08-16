class Api::V1::Users::BabiesController < Api::V1::ApplicationController
  def index
    render json: { messages: ['User not found'] }, status: 404 unless user

    render json: { babies: user.babies_in_charge }
  end
end