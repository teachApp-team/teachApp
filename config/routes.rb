Rails.application.routes.draw do
  
  post 'scores/create', to: 'scores#create'
  

  get 'scores/create'

  get 'scores/destroy'

  get 'stu_login', to: 'sessions#login_form'

  post 'stu_login', to: 'sessions#create'
  delete 'stu_logout', to: 'sessions#destroy'

  get 'stu_mypage', to: 'students#show'

  devise_for :teachers
  root 'top#home'

 

  post 'episodes/create'
  
  resources :tests
  resources :teachers_accounts
  resources :episodes
  resources :scores
  resources :students, only: [:new ,:create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

 # https://fierce-reaches-09141.herokuapp.com/hello/index