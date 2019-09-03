class SerializableHang < JSONAPI::Serializable::Resource
  type 'hang'
  attributes :friend_id, :date, :activity, :didHang
  belongs_to :friend
end
