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

  resources :guest_my_pages, only: :show
  get 'guest_my_pages/follow_list/:id',to: 'guest_my_pages#follow_list'

  resources :host_my_pages, only: :show
  put 'host_my_pages/follow/:id',to: 'host_my_pages#follow'
  put 'host_my_pages/unfollow/:id',to: 'host_my_pages#unfollow'
  get 'host_my_pages/follower_list/:id',to:'host_my_pages#follower_list'

  resources :rooms, only: :index do
    collection do
      get 'search'
      get 'sign_up_user_select'
      get 'sign_in_user_select'
    end
  end
end
