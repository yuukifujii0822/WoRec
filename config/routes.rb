Rails.application.routes.draw do
  
  root to: 'pages#home'
  get 'pages/home'
  
  resource :users
  
end
