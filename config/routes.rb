Rails.application.routes.draw do
  root 'application#hello'
  get 'task/new'
end
