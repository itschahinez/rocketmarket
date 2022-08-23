Rails.application.routes.draw do
  root to: "pokemons#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index
  devise_for :users

  resources :pokemons, only: [ :index, :show, :destroy, :new, :create ] do
    resources :bookings, only: [ :update, :destroy, :create ]
  end

  get '/dashboard', to: 'pages#dashboard' # pour afficher toutes les commandes passees etc.
end
