class Api::V1::UsersController < Api::V1::ApplicationController
  def index
    render json: { users: User.all }
  end
end