Rails.application.routes.draw do
  
  root 'top#home'

 

  post 'episodes/create'
  
  
  resources :episodes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

 # https://fierce-reaches-09141.herokuapp.com/hello/index