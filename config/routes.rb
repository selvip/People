Rails.application.routes.draw do
  resources :people do 
  	resources :garages, only: [:new, :create, :destroy]
  end
  resources :motor_cycles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'people#homepage'
  get 

end
