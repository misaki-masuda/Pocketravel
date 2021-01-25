Rails.application.routes.draw do

  get 'users/show'
  devise_for :users, controllers: {
    # sessions: 'devise/user/sessions',
    # registrations: 'devise/user/registrations',
    # passwords: 'devise/user/passwords'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'homes#top'
  get 'home/about' => 'homes#about'
  resources :users, only:[:show]
  resources :posts, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :favorites, only: [:index, :destroy, :create]
end
