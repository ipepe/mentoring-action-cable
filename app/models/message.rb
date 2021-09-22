class Message < ApplicationRecord
  belongs_to :chat_room
  validates_presence_of :chat_room, :body, :from
end
