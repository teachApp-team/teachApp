Rails.application.routes.draw do
  
  get 'stu_login', to: 'sessions#login_form'

  post 'stu_login', to: 'sessions#create'
  delete 'stu_logout', to: 'sessions#destroy'

  get 'stu_mypage', to: 'students#show'

  devise_for :teachers
  root 'top#home'

 

  post 'episodes/create'
  
  resources :teachers_accounts
  resources :episodes
  resources :students, only: [:new ,:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

 # https://fierce-reaches-09141.herokuapp.com/hello/index