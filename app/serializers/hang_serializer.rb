class HangSerializer
  include FastJsonapi::ObjectSerializer
  attributes :date, :activity, :didHang
  belongs_to :friend
end
