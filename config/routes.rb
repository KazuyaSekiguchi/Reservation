Rails.application.routes.draw do
  devise_for :users
  resources :users do
    member { get :user_icon }
  end
  root 'rooms#index'
  get 'users/show'
  resources :rooms do
    collection do
      get "search"
    end
  end
  resources :reservations
　post 'reservation/confirm'
end
