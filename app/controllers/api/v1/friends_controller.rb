require 'rest-client'

class Api::V1::FriendsController < EndUserBaseController

  skip_before_action :verify_authenticity_token, only: [:create,:update,:destroy]
  

  def index
    @friends = @user.friends
    render jsonapi: @friends, include: [:hangs]
  end

  def show
    @friend=@user.friends.find(params['id'])
    render json: @friend
  end

  def create
    @friend=@user.friends.build(friend_params)
    if @friend.save
      @friends=@user.friends
      render jsonapi: @friends, include: [:hangs]
    else
      render json @friend.errors, status: :unprocessible_entity
    end
  end

  def update
    @friend=@user.friends.find(params['id'])
    @friend.update(params)
    render json: @friend
  end

  def destroy
  end

  private
  def friend_params
    params.require(:friend).permit(:name, :lastDateSeen, :desiredFrequency, :notes)
  end
end
