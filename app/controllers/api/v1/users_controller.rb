class Api::V1::UsersController < ApplicationController
  before_action :authenticate_user

  def create
    @user = User.new(params)
    # auth
    if @user.save
        render  jsonapi: current_user
      else

  end
  def current
    render json: current_user.as_json(only: %i(id email))
  end
end
# https://auth0.com/docs/quickstart/backend/rails/01-authorization
# https://github.com/nsarno/knock/blob/84d3e54b9a8f1e9701097207a8d3135d5a9e64c1/README.md
