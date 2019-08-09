Rails.application.routes.draw do
  
  get 'workouts/new'
  get 'sessions/new'
  root to: 'pages#home'
  get 'pages/home'
  get "pages/mypage" => "pages#mypage"
  
  resource :users
  resource :workouts
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
