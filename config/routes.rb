Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  #mes pages dynamiques
  get '/welcome', to:'home#show'
  get '/welcome/:id',to:'home#show'
  get '/gossip/:id', to: 'home#gossip', as:"gossip"
  get '/profil/:id', to: 'home#profil', as:"profil"
  #mes pages statiques
  get '/contact', to:'static#contact'
  get '/team', to:'static#team'
end
