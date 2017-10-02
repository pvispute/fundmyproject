Rails.application.routes.draw do
  
  get 'New' => 'projects#new'

   get 'Home' => 'projects#index'

  root to: 'projects#index'
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
