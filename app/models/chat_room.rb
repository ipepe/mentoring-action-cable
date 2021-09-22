class ChatRoom < ApplicationRecord

  def to_param
    [id, title].join('-').parameterize
  end
end
