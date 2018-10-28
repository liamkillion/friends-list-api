class Friend < ApplicationRecord
  # attr_accessor :name, :lastDateSeen, :desiredFrequency, :notes
  has_many :hangs
end
