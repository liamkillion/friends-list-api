require 'rest-client'

class Api::V1::HangsController < ApplicationController

  skip_before_action :verify_authenticity_token, only: [:create,:update,:destroy]

  def index
    @hangs=Hang.all
    render json: @hangs
  end

  def show
    @hang=Hang.find(params['id'])
    render json: @hang
  end

  def create
    @hang=Hang.new(params)
    if @hang.save
      @hangs=Hang.all
      render json: @hangs
    else
      render json @hang.errors, status: :unprocessible_entity
    end
  end

  def update
    @hang=Hang.find(params['id'])
    @hang.update(params)
    render json: @hang
  end

  def destroy
  end

  private
  def hang_params
    params.require(:hang).permit(:date, :activity, :didHang)
  end
end
