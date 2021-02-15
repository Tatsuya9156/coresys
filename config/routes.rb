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

  root to: 'chats#index'
  resources :employees, only: [:index, :edit, :update]
  resources :workers, only: [:index, :edit, :update]
  resources :customers, only: [:index, :create, :show]
  resources :chats, only: [:index, :create, :show, :update] do
    resources :messages, only: [:create]
  end
end
