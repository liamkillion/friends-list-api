class SerializableHang < JSONAPI::Serializable::Resource
  type 'hang'
  attributes :id, :friend_id, :date, :activity, :didHang
  belongs_to :friend
end
