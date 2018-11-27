Rails.application.routes.draw do
  devise_for :users
  get 'jobs/index'
  root controller: :jobs, action: :index
end
