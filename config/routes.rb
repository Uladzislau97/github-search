Rails.application.routes.draw do
  get 'repositories/index'
  root 'repositories#index'
end
