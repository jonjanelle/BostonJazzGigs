Rails.application.routes.draw do
  devise_for :users
  root to: 'home_profiles#index'
  get 'home', to: 'static_pages#home'
  get 'admin/edit_content', to: 'home_profiles#edit'
  patch 'home_profiles/:id', to: 'home_profiles#update', as: "home_profile"

  post 'contact_messages', to: 'contact_messages#create'

  get 'band_requests', to: 'band_requests#new'
  post 'band_requests', to:  'band_requests#create'
  get 'band_requests/new', to: 'band_requests#new'

  get 'musician_requests', to: 'musician_requests#new'
  post 'musician_requests', to:  'musician_requests#create'
  get 'musician_requests/new', to: 'musician_requests#new'

end
