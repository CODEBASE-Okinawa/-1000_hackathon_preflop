Rails.application.routes.draw do
  get 'task_lists/new'
  root 'application#hello'
  get 'tasks/show'
  post '/tasks/:id/toggle', to: 'tasks#toggle'
  resources :tasks
  resources :task_lists
end