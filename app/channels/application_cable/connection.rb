module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :chat_room_id, :user_name

    # def connect
    #   self.chat_room_id = env['CHAT_ROOM_ID']
    #   if ChatRoom.find_by(id: self.chat_room_id).blank?
    #     reject_unauthorized_connection
    #   end
    # end
  end
end
