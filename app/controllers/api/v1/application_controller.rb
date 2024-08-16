class Api::V1::ApplicationController < ApplicationController
  def user
    @user ||= User.find_by(params[:user_id])
  end
end