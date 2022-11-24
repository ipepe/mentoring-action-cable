Rails.application.routes.draw do

  mount ActionCable.server => '/cable'

  root 'chat_rooms#index'
  resources :chat_rooms
end
