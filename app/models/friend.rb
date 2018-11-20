class Friend < ApplicationRecord
  # attr_accessor :id, :name, :lastDateSeen, :desiredFrequency, :notes
  has_many :hangs
end
