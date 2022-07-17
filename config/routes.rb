Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  root 'application#hello'
  get 'tasks/show'
  post '/tasks/:id/toggle', to: 'tasks#toggle'
  resources :tasks
  resources :users
end
