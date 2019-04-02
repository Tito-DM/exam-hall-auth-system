Rails.application.routes.draw do

  # namespace  :api do
  #   resources :pings, only: :index,
  #   constrains: { format: 'jason'}
  #   resources :student, only: [:index,:update, :show]
  # end

  resources :users
  resources :students do
    resources :subjects
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#verification'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
