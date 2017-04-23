Rails.application.routes.draw do

  root 'subscribers#new'
  resources :subscribers, only: [:new, :index, :create]
end
