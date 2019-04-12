Rails.application.routes.draw do

  namespace  :api do
    resources :pings, only: :index,
    constrains: { format: 'jason'}
    resources :student, only: [:index,:edit, :show]
    get 'setting', to: 'student#setting'

  end

  resources :subjects,only: [:index]

  resources :users
  resources :students do
    resources :subjects, except:[:index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'sessions#new'
  get 'home/verification'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  mount ActionCable.server, at: '/cable'

end
