class ApplicationController < ActionController::Base
  before_action :authenticate_scope!
  # https://medium.com/rubyinside/a-deep-dive-into-csrf-protection-in-rails-19fa0a42c0ef
end
