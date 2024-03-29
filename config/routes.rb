Rails.application.routes.draw do
  devise_for :users
  namespace :v1, defaults: { format: :json } do
    resources :contacts
    resource :sessions, only: [:create, :destroy]
    resource :users, only: [:create]
  end
end
