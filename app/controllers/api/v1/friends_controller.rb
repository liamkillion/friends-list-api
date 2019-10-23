require 'rest-client'

class Api::V1::FriendsController < ApplicationController

  skip_before_action :verify_authenticity_token, only: [:create,:update,:destroy]
  # before_action :authenticate_user

  def index
    @friends = current_user.friends
    render jsonapi: @friends, include: [:hangs]
  end

  def show
    @friend=current_user.friends.find(params['id'])
    render json: @friend
  end

  def create
    @friend=current_user.friends.build(friend_params)
    if @friend.save
      @friends=current_user.friends
      render jsonapi: @friends, include: [:hangs]
    else
      render json @friend.errors, status: :unprocessible_entity
    end
  end

  def update
    @friend=current_user.friends.find(params['id'])
    @friend.update(params)
    render jsonapi: @friend
  end

  def destroy
  end

  private
  def friend_params
    params.require(:friend).permit(:name, :lastDateSeen, :desiredFrequency, :notes)
  end
end
