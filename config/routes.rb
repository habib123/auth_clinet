Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :test
  root to: 'pages#index'
  match '/oauth/callback', to: 'sessions#token', via: [:post, :get]
  #post 'code_id_token', to: 'sessions#code_id_token'
  #post 'code_id_token_token', to: 'sessions#code_id_token'
  #match '/oauth/callback', to: 'sessions#create', via: [:post, :get]
  delete 'session_delete', to: 'sessions#destroy'
end
