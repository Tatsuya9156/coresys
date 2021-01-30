Rails.application.routes.draw do
  devise_for :workers, controllers: {
    sessions:      'workers/sessions',
    passwords:     'workers/passwords',
    registrations: 'workers/registrations'
  }
  
  devise_for :employees, controllers: {
    sessions:      'employees/sessions',
    passwords:     'employees/passwords',
    registrations: 'employees/registrations'
  }

  root to: 'customers#index'
  resources :employees, only: [:index, :edit, :update]
  resources :workers, only: [:index, :edit, :update]
  resources :customers
  resources :chats
end
