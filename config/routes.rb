Rails.application.routes.draw do
  root 'application#hello'
  get 'tasks/show'
  post '/tasks/:id/toggle', to: 'tasks#toggle'
  resources :tasks
end