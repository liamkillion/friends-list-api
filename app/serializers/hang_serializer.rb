class HangSerializer
  include FastJsonapi::ObjectSerializer
  attributes :friend_id, :date, :activity, :didHang
  belongs_to :friend
end
