Rails.application.routes.draw do
  root to: 'pages#home'
  resources :leagues
  resources :players
end
