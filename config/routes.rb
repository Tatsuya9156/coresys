Rails.application.routes.draw do
  devise_for :workers, controllers: {
    sessions:      "workers/sessions",
    passwords:     "workers/passwords",
    registrations: "workers/registrations"
  }
  
  devise_for :employees, controllers: {
    sessions:      "employees/sessions",
    passwords:     "employees/passwords",
    registrations: "employees/registrations"
  }

  devise_scope :employee do
    post "employees/guest_sign_in", to: "employees/sessions#new_guest"
  end

  root to: "chats#index"
  resources :employees, only: [:index, :edit, :update]
  resources :workers, only: [:index, :edit, :update]
  resources :customers, only: [:index, :create, :show, :destroy] do
    resources :comments, only: [:create]
    resources :meetings, only: [:create, :update, :destroy]
    resources :constructions, only: [:create, :update, :destroy]
  end
  resources :chats, only: [:index, :create, :show, :update, :destroy] do
    resources :messages, only: [:create]
  end
end
