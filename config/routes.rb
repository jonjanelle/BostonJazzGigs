Rails.application.routes.draw do
  root 'static_pages#home'
  post 'contact_messages', to: 'contact_messages#create'

  get 'band_requests', to: 'band_requests#new'
  post 'band_requests', to:  'band_requests#create'
  get 'band_requests/new', to: 'band_requests#new'

  get 'musician_requests', to: 'musician_requests#new'
  post 'musician_requests', to:  'musician_requests#create'
  get 'musician_requests/new', to: 'musician_requests#new'
end
