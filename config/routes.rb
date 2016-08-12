Rails.application.routes.draw do
  get 'welcome/index'

  root to: 'welcome#index', via: :get
  get 'auth/facebook', as: "auth_provider"
  get 'auth/facebook/callback', to: 'welcome#index'

  resources :events
  resources :eventsget, only:[:index]


end


  # For details on the DSL available within this fil
