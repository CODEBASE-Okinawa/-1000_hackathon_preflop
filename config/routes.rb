Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  root 'application#hello'
  get    '/task_create',   to: 'tasks#new'
  post   '/task_create', to: 'tasks#create'
  resources :tasks
  resources :users
end
