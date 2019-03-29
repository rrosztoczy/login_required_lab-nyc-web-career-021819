Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'secrets' => 'secrets#show', as: 'secret'

  get 'sessions/new' => 'sessions#new', as: 'login'
  post 'sessions' => 'sessions#create'
  delete 'sessions' => 'sessions#destroy'
end
