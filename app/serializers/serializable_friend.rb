class SerializableFriend < JSONAPI::Serializable::Resource
  type 'friend'
  attributes :id, :name, :lastDateSeen, :desiredFrequency, :notes
  belongs_to :hangs
end
