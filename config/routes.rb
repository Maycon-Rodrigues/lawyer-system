Rails.application.routes.draw do
  resources :opnions
  resources :pprocesses
  resources :customers
  devise_for :users, controllers: { registrations: "registrations" }
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

end
