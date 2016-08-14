Rails.application.routes.draw do
  get 'saved/index'

  root 'welcome#index'

  get to: 'users#index'
  get 'auth/facebook', as: "auth_provider"
  get 'auth/facebook/callback', to: 'users#login'

  resources :events
  resources :eventsget, only:[:index]

end


  # For details on the DSL available within this fil
