Rails.application.routes.draw do
  
  get 'workouts/index' => 'workouts#index'
  get "exercises/index" => "exercises#index"
  get 'sessions/new'
  root to: 'pages#home'
  get 'pages/home'
  get "pages/mypage" => "pages#mypage"
  get "exercises/destroy",  to: "exercises#destroy"
  post "exercises/destroy",  to: "exercises#destroy"
  get  "workouts/diary", to: "workouts#diary"
  
  resource :users
  resource :workouts
  resource :exercises
  resource :profiles
  resource :menus
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
