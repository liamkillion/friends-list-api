require 'rest-client'

class Api::V1::FriendsController < ApplicationController

  def index
    @friends=Friend.all
    render json: @friends.map{|f| FriendSerializer.new(f).serializable_hash}
  end

  def show
    @friend=Friend.find(params['id'])
    render json: @friend
  end

  def create
    @friend=Friend.new(params['id'])
    if @friend.save
      @friends=Friend.all
      render json: @friends
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
