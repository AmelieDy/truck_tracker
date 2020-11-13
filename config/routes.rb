Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'trucks#index'

  resources :trucks
  get '/search' => 'trucks#search'
end
