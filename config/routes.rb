Rails.application.routes.draw do
  
  get 'body/new'
  get 'exercises/new'
  get 'menus/new'
  get 'profiles/new'
  get 'workouts/new'
  get 'sessions/new'
  root to: 'pages#home'
  get 'pages/home'
  get "pages/mypage" => "pages#mypage"
  
  resource :users
  resource :workouts
  resource :exercises
  resource :profiles
  resource :menus
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
