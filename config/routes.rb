Rails.application.routes.draw do
  # 社員と職人のルーティングの区別のための記述
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

  # 簡単ログイン機能のためのルーティング設定
  devise_scope :employee do
    post "employees/guest_sign_in", to: "employees/sessions#new_guest"
  end

  devise_scope :worker do
    post "workers/guest_sign_in", to: "workers/sessions#new_guest"
  end

  root to: "chats#index"
  resources :employees, only: [:index, :edit, :update] do
    collection do
      get "search"
    end
  end
  resources :workers, only: [:index, :edit, :update] do
    collection do
      get "search"
    end
  end
  resources :customers, only: [:index, :create, :show, :update, :destroy] do
    resources :comments, only: [:create]
    resources :meetings, only: [:create, :update, :destroy]
    resources :constructions, only: [:create, :update, :destroy]
    collection do
      get "search"
    end
  end
  resources :chats, only: [:index, :create, :show, :update, :destroy] do
    resources :messages, only: [:create]
    resources :tasks, only: [:create, :destroy]
  end
end
