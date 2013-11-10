Katashuk::Application.routes.draw do  
resources :sessions, only: [:new, :create, :destroy]
  root to: 'static_pages#home'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
 #get "static_pages/home"
 # get "static_pages/contacts"
 # get 'static_pages/news'
  # get "static_pages/tournaments"
  #get "static_pages/soon"
  #get "static_pages/trips"
  #get "static_pages/lit"
  #get "static_pages/couchroom"
  
  match '/news', to: 'static_pages#news'
  match '/tournaments', to: 'static_pages#tournaments'
  match '/soon', to: 'static_pages#soon'
  match '/contacts', to: 'static_pages#contacts'
  match '/trips', to: 'static_pages#trips'
  match '/news', to: 'static_pages#news'
  match '/lit', to: 'static_pages#lit'
  match '/couchroom', to: 'static_pages#couchroom'
  #match '/contacts', to: 'static_pages#contacts'
  #match '/trips', to: 'static_pages#trips'




end
