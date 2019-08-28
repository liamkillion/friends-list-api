class Friend < ApplicationRecord
  has_many :hangs
  belongs_to :user
end
