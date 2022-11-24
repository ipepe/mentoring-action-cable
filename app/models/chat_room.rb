class ChatRoom < ApplicationRecord
  has_many :messages
  validates_presence_of :title
  def to_param
    [id, title].join("-").parameterize
  end

  def send_message(message)
    ActionCable.server.broadcast(
      "chat_room_#{id}",
      action: :new_message,
      from: message.from,
      message_body: message.body
    )
  end
end
