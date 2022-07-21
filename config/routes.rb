Rails.application.routes.draw do
  root 'application#hello'
  get    '/signup',           to: 'users#new'
  get    'tasks/show'
  post   '/tasks/:id/toggle', to: 'tasks#toggle'
  get    '/login',            to: 'sessions#new'
  post   '/login',            to: 'sessions#create'
  delete '/logout',           to: 'sessions#destroy'
  resources :tasks
  resources :users
end
