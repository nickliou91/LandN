Rails.application.routes.draw do
  


  get 'sub_categories/new'

  get 'sub_categories/index'

  get 'sub_categories/show'

  get 'categories/new'

  get 'categories/index'

  get 'categories/show'

  get 'products/new'

  root 'static_pages#home'
  # get 'static_pages/home'

  get 'contact'   =>  'static_pages#contact'
  get 'product'   =>  'static_pages#product'
  get 'product_catalogs'   => 'static_pages#catalog'
  get 'about'     =>  'static_pages#about'
  get 'signup'    =>  'users#new'
  get 'login'      =>  'sessions#new'
  post 'login'      =>  'sessions#create'
  delete 'logout'      =>  'sessions#destroy'
  get 'admin'   =>'users#index'

  get 'categories' =>'categories#index'
  # get 'add_category' => 'categories#new'
  post 'categories' => 'categories#create'
  delete 'categories' => 'categories#destroy'


  get 'sub_categories' => 'sub_categories#index'

  get 'category_sub_categories' => 'category_sub_categories#index'


  get 'add_product' => 'products#new'

  get 'catalog' => 'catalogs#index'
  get 'add_catalog' => 'catalogs#new'

  get 'users/new'
  resources :users
  resources :products
  resources :categories
  resources :sub_categories
  resources :category_sub_categories
  resources :catalogs
  

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
