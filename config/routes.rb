Rails.application.routes.draw do

  root 'home#verification'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

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

end
