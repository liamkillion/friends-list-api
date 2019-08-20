class SerializableFriend < JSONAPI::Serializable::Resource
  type 'friend'
  attributes :id, :name, :lastDateSeen, :desiredFrequency, :notes
  has_many :hangs
end
