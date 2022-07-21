Rails.application.routes.draw do
  get 'task_lists/new'
  root 'application#hello'
  get 'tasks/show'
  post '/tasks/:id/toggle', to: 'tasks#toggle'
  post '/task_lists/:id',  to: 'tasks#create'
  resources :tasks
  resources :task_lists
end