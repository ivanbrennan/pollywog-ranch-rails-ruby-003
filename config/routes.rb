PollywogRanchRailsRuby003::Application.routes.draw do
  root to: "application#index"

  resources :ponds
  # get    "/ponds"          => "ponds#index"
  # post   "/ponds"          => "ponds#new"
  # get    "/ponds/new"      => "ponds#create"
  # get    "/ponds/:id/edit" => "ponds#edit"
  # get    "/ponds/:id"      => "ponds#show"
  # patch  "/ponds/:id"      => "ponds#update"
  # put    "/ponds/:id"      => "ponds#update"
  # delete "/ponds/:id"      => "ponds#destroy"

  resources :frogs
  # get    "/frogs"          => "frogs#index"
  # post   "/frogs/new"      => "frogs#create"
  # get    "/frogs"          => "frogs#new"
  # get    "/frogs/:id/edit" => "frogs#edit"
  # get    "/frogs/:id"      => "frogs#show"
  # patch  "/frogs/:id"      => "frogs#update"
  # put    "/frogs/:id"      => "frogs#update"
  # delete "/frogs/:id"      => "frogs#destroy"

  get "/tadpoles/evolve" => "tadpoles#evolve"

  resources :tadpoles
  # get    "/tadpoles"          => "tadpoles#index"
  # post   "/tadpoles"          => "tadpoles#create"
  # get    "/tadpoles/new"      => "tadpoles#new"
  # get    "/tadpoles/:id/edit" => "tadpoles#edit"
  # get    "/tadpoles/:id"      => "tadpoles#show"
  # patch  "/tadpoles/:id"      => "tadpoles#update"
  # put    "/tadpoles/:id"      => "tadpoles#update"
  # delete "/tadpoles/:id"      => "tadpoles#destroy"

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
