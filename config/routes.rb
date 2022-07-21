Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  root 'application#hello'
  get 'tasks/show'
  post '/tasks/:id/toggle', to: 'tasks#toggle'
  post '/task_lists/:id',  to: 'tasks#create'
  resources :tasks
  resources :task_lists
  resources :users
end
