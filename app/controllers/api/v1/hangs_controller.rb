require 'rest-client'
class API::V1::HangsController < ApplicationController

  def index
    @hangs=Hang.all
  end

  def show
    @hang=Hang.find_by(params[:id])
  end

  def create
    @hang=Hang.new(params)
  end

  def new
  end

  def edit
  end

  def update
  end

  def destory
  end
end
