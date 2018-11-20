class Hang < ApplicationRecord
  # attr_accessor :id, :friend_id, :date, :activity, :didHang
  belongs_to :friend
end
