Rails.application.routes.draw do

  devise_for :users
  root to: "home#index"
  
  get '/' => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'terms' =>'home#terms'
  get 'about' =>'home#about'

  resources :articles do
    resource :comments, only: [:create]
  end  

  resource :contacts, only: [:new, :create], path_names: {:new => ''}
end
