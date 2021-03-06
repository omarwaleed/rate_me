Rails.application.routes.draw do
  
  
  # defaults: { format: :json }
  
  # devise_for :users
  root 'api/session#new'
  
  # resources :api do
  #   resources :post
  #   resources :session
  # end
  
  # resources :session, module: 'api'
  
    get 'user/new' => 'user#new', as: 'new_user'
    post 'user/create' => 'user#create'
    
    get 'api/session/new' => 'api/session#new', defaults: { format: :json }
    post 'api/session/create' => 'api/session#create', defaults: { format: :json }
    
    get 'api/post/index' => 'api/post#index', defaults: { format: :json }
  
  # get 'api/session/new' => 'api/session#new', as: 'sign_in'
  # post 'api/session/create' => 'api/session#create'
  
  post '/rate' => 'rater#create', :as => 'rate'
  
  # namespace :api, defaults: { format: :json } do
    # get 'session/new' => 'api/session#new'
    # post 'session/create' => 'api/session#create'
    
    # get 'post/index' => 'api/post#index'
    # resources :session
    # resources :session, only: :new
    # resources :post, only: :index
  # end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
