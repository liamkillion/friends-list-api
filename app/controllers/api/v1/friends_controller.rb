require 'rest-client'

class Api::V1::FriendsController < ApplicationController

  skip_before_action :verify_authenticity_token, only: [:create,:update,:destroy]
  # before_action :authenticate_scope!

  def index
    session['foo'] ||= 'bar'
    return render jsonapi: [{'foo' => session['foo']}]
    @friends=current_user.friends.all
    render jsonapi: @friends, include: [:hangs]
  end

  def show
    @friend=current_user.friends.find(params['id'])
    render json: @friend, include: [:hangs]
  end

  def create
    @friend=current_user.friends.build(friend_params)
    if @friend.save
      @friends=current_user.friends.all
      render :index
    else
      render json @friend.errors, status: :unprocessible_entity
    end
  end

  def update
    @friend=current_user.friends.find(params['id'])
    @friend.update(params)
    render json: @friend
  end

  def destroy
  end

  private
  def friend_params
    params.require(:friend).permit(:name, :user_id, :lastDateSeen, :desiredFrequency, :notes)
  end
end

# https://blog.eq8.eu/article/rails-api-authentication-with-spa-csrf-tokens.html
# forms
