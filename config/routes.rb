Rails.application.routes.draw do
  devise_for :users
  root controller: :jobs, action: :index

  resources :jobs, only: :show
end
