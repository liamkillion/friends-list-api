require 'rest-client'

class Api::V1::FriendsController < ApplicationController

  skip_before_action :verify_authenticity_token, only: [:create,:update,:destroy]


  def index
    @friends=Friend.all
    render jsonapi: @friends, include: [:hangs]
  end

  def show
    @friend=Friend.find(params['id'])
    render json: @friend
  end

  def create
    @friend=Friend.new(friend_params)
    if @friend.save
      @friends=Friend.all
      render jsonapi: @friends, include: [:hangs]
    else
      render json @friend.errors, status: :unprocessible_entity
    end
  end

  def update
    @friend=Friend.find(params['id'])
    @friend.update(params)
    render json: @friend
  end

  def destroy
  end

  private
  def friend_params
    params.require(:friend).permit(:name, :dateLastSeen, :desiredFreqeuncy, :notes)
  end
end
