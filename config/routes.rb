Rails.application.routes.draw do
  root to: 'rooms#index'
  
  devise_for :hosts, controllers: {
    sessions:      'hosts/sessions',
    password:      'hosts/passwords',
    registrations: 'hosts/registrations'
  }
  devise_for :guests, controllers: {
    sessions:      'guests/sessions',
    password:      'guests/passwords',
    registrations: 'guests/registrations'
  }

  resources :rooms, only: :index do
    collection do
      get 'search'
      get 'sign_up_user_select'
      get 'sign_in_user_select'
    end
  end
end
