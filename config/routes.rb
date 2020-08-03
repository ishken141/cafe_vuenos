Rails.application.routes.draw do
  resources :map, only: :index
  get 'reservations/index'
  resources :questions do 
    resources :answers 
  end 
  resources :drinks, only: [:index] 
  resources :recruits, only: [:index, :create] 
  resources :concepts, only: :index
  root "home#index"
end
