Rails.application.routes.draw do
  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'welcomes#index'
  get 'welcome', to: "welcomes#index"
  post 'sessions/:chapter_id' => 'contents_sessions#create', as: :contents_sessions
  get 'sessions' => 'contents_sessions#destroy', as: :contents_sessions_detroy
  
  resources :histories
  resources :exercises
  devise_for :users
  resources :texts
  resources :videos
  resources :users
  resources :alternatives
  resources :questions
  resources :chapters
  resources :categories
  resources :courses do
    member do
      get :registration
      get :chapters
    end
  end
  scope :user do
    resources :registries
  end
  resources :users
  resources :addresses
  resources :performances
  resources :contents do
    collection do 
      get :management
      get :next
    end
    member do
      put :click
    end
  end
end
