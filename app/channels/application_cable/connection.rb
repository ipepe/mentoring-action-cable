module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :user_id

    # def connect
    #   (self.user_id = fetch_user&.id) ||
    #     reject_unauthorized_connection
    # end
    #
    # protected
    #
    # def fetch_user
    #   User.find_by(id: cookies.signed['user.id']) || env['warden'].user
    # end
  end
end
