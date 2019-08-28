Rails.application.routes.draw do
  
  get 'charts/index'
  get 'chart/index'
  get 'workouts/index' => 'workouts#index'
  get "exercises/index" => "exercises#index"
  get 'sessions/new'
  root to: 'pages#home'
  get 'pages/home'
  get "pages/mypage" => "pages#mypage"
  get "exercises/destroy",  to: "exercises#destroy"
  post "exercises/destroy",  to: "exercises#destroy"
  
  resource :users
  resource :workouts
  resource :exercises
  resource :profiles
  resource :menus
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
