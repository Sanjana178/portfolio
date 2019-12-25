Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
    get '/cms', to: 'pages#cms', as: 'cms'
      resources :contents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/questionare', to: 'pages#questionare', as: 'questionare'

end
