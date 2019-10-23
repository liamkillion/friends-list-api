class ApplicationController < ActionController::API
  include Knock::Authenticable

  private

  def authenticate_user
    authenticate_for API::V1::User
  end

end
