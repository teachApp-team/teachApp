Rails.application.routes.draw do
  get 'episodes/index'


  get 'episodes/new'

  post 'episodes/create'

  get 'episodes/:id' => 'episodes#show'
  root 'episodes#index'

  get 'hello/index'
  
 
  resources :episodes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

 # https://fierce-reaches-09141.herokuapp.com/hello/index