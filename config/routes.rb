Rails.application.routes.draw do
  root controller: :jobs, action: :index

  resources :jobs, only: :show
  #match 'job/id' => 'jobs#show', via: :get

end
