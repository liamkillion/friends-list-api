class Hang < ApplicationRecord
  # attr_accessor :date, :activity, :didHang
  belongs_to :friend
end
