Rails.application.routes.draw do
  root to: 'users#index', via: :get
  get 'auth/facebook', as: "auth_provider"
  get 'auth/facebook/callback', to: 'users#login'
end


  # For details on the DSL available within this fil
