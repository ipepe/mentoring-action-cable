class ChatRoom < ApplicationRecord
  validates_presence_of :title
  def to_param
    [id, title].join("-").parameterize
  end
end
