Katashuk::Application.routes.draw do  

  resources :tourtables


  resources :contacts, only: [:index, :update, :edit]


  resources :tournaments


  resources :students


  resources :newslines


  resources :homes, only: [:index, :update, :edit]
  resources :soonevents
  resources :sessions, only: [:new, :create, :destroy]
  
  root to: 'homes#index'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  match '/trips', to: 'static_pages#trips'

  match '/lit', to: 'static_pages#lit'

end
