Rails.application.routes.draw do
  get 'jobs/index'
  root controller: :jobs, action: :index
end
