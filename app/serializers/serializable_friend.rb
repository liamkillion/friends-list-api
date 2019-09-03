class SerializableFriend < JSONAPI::Serializable::Resource
  type 'friend'
  attributes :name, :lastDateSeen, :desiredFrequency, :notes
  has_many :hangs
end
