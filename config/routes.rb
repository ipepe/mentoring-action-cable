Rails.application.routes.draw do

  mount ActionCable.server => '/cable'

  root 'chat_rooms#index'
  resources :chat_rooms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
