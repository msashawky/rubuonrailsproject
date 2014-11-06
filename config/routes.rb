Rails.application.routes.draw do

  resources :categories

  devise_for :registered_users



  resources :registered_users


  resources :ngos

  resources :product_carts

  resources :carts

  resources :product_categories

  resources :managers

  resources :accountants

  resources :site_admins

  resources :user_data

  resources :products


  resources :customers
  match ":controller(/:action(/:id))",:via =>:get

  resources :projects


  # Route for Commontator gem
  mount Commontator::Engine => '/commontator'


  resources :customers
  devise_for :users, controllers: { sessions: "users/sessions" }
  root to: "home#index"
  resources:profile

#for autocomplete gem
  resources :products do
    get :autocomplete_comment_body, :on => :collection
  end


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
