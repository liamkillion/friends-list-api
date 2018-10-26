class FriendSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :lastDateSeen, :desiredFrequency, :notes
  has_many :hangs
end
