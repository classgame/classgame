Rails.application.routes.draw do
  root to: 'welcomes#index'
  devise_for :users
  #resources :attempts
  resources :texts
  resources :videos
  resources :users
  resources :alternatives
  resources :questions
  resources :exercises
  resources :chapters
  resources :categories
  resources :courses do
    member do
      get 'registration'
      get 'chapters'
    end
  end
  scope 'user' do
    resources :registries
  end
  resources :users
  resources :addresses
  resources :performaces

  get 'start/:chapter_id' => 'contents#start', as: :start_contents
  get 'chapter/:chapter_id' => 'contents#contents_management', as: :chapter_contents_management
  get 'click_content/:content_position' => 'contents#click_content', as: :click_content
  post 'contents' => 'contents#performance', as: :performance
  
  get 'welcome' => "welcomes#index"
  
  get '/account/:id', to: 'users#edit', as: :account
end
