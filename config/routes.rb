Rails.application.routes.draw do

  devise_for :students
  root to: 'publicview/projects#index'

 namespace :students do 
    get '/account' => 'accounts#edit', as: :account
    put '/info' => 'accounts#update_info', as: :info
    put '/change_password' => 'accounts#change_password', as: :change_password
  	resources :projects do
	  put 'publish' => 'projects#publish', on: :member
    put 'unpublish' => 'projects#unpublish', on: :member
   	end
  end

scope module: 'publicview' do
  get 'About' => 'pages#about' , as: :about
  get 'projects' => 'projects#index' , as: :projects
  get 'projects/:id' => 'projects#show', as: :project
  end
end
