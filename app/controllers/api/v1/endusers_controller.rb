require 'rest-client'
require 'pry'


class Api::V1::EndUserBaseController < ApplicationController
  before_filter :authenticate_user!

end
