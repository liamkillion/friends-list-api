require 'rest-client'
class API::V1::HangsController < ApplicationController

  def index
    @hangs=Hang.all
    render json: @hangs
  end

  def show
    @hang=Hang.find(params['id'])
    render json: @hang
  end

  def create
    @hang=Hang.new(params['id'])
    if @hang.save
      @hangs=Hang.all
      render json: @hangs
    else
      render json @hang.errors, status :unprocessible_entity
    end
  end

  def update
    @hang=Hang.find(params['id'])
    @hang.update(params)
    render json: @hang
  end

  def destory
  end

  private
  def hang_params
    params.require(:hang).permit(:date, :activity, :didHang)
  end
end
