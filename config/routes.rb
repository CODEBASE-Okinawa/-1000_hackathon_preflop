Rails.application.routes.draw do
  root 'application#hello'
  get    '/task_create',   to: 'tasks#new'
  post   '/task_create', to: 'tasks#create'
  resources :tasks
end
