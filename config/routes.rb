Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :cards
    end
  end

  resources :decks

  post '/decks/:id/:card' => 'decks#add_card'
  get '/decks/:id/:card' => 'decks#delete_card'


  resources :decks do
    resources :hands do
      resources :cards
    end
  end

  resources :cards

  get 'decks/index'
  root 'decks#index'

end
