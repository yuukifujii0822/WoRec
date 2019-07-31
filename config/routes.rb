Rails.application.routes.draw do
  
  get 'sessions/new'
  root to: 'pages#home'
  get 'pages/home'
  get "pages/mypage" => "pages#mypage"
  
  resource :users
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
