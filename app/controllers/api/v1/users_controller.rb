class Api::V1::UsersController < ApplicationController
  before_action :authenticate_user

  def find
    @user = User.find_by(email: user_params[:user][:email])
    if @user
      render jsonapi: @user
    else
      @errors = @user.errors.full_messages
    end
  end

  def create
    @user = User.new(user_params)
    if @user
      render json: current_user.as_json(only: %i(id email))
    else
      @errors = @user.errors.full_messages
    end
  end

  def update
    @user = curent_user
    @user.update(user_params)
  end

  def current
    render json: current_user.as_json(only: %i(id email))
  end
end
# https://auth0.com/docs/quickstart/backend/rails/01-authorization
# https://github.com/nsarno/knock/blob/84d3e54b9a8f1e9701097207a8d3135d5a9e64c1/README.md
