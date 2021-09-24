class ChatRoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_room_#{params[:chat_room_id]}"

    ActionCable.server.broadcast(
      "chat_room_#{params[:chat_room_id]}",
      action: :new_message,
      from: 'system',
      message_body: "Welcome #{params[:user_name]} to chat room #{params[:chat_room_id]}"
    )
  end
end