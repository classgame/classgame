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
  #resources :chapters
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

  get 'welcome' => "welcomes#index"
  
  get '/account/:id', to: 'users#edit', as: :account

  get '/chapters/:id', to: 'chapters#index', as: :chapters

  get '/attempts/:id', to: 'attempts#new', as: :new_attempt
  
  post '/attempts_create/', to: 'attempts#create', as: :attempts_create
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
