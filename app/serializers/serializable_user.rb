class SerializableUser < JSONAPI::Serializable::Resource
  type 'user'
  attributes :first_name, :last_name, :email, :password_digest
  has_many :friends
end
