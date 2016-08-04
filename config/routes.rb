Rails.application.routes.draw do

  resources :day_to_day2
#  resources :stock, :constraints => {:id => /[0-9]+/}, as: :stock
get    '/stock'     => 'stock#index'
get    '/stock/:id' => 'stock#show' 
#  resources :ranking
get    '/ranking'   => 'ranking#index'
get    '/ranking/:id' => 'ranking#show'
#  resources :code
  scope :stock do
#    resources :industry
get    '/industry'  => 'industry#index'
get    '/industry/:id' => 'industry#show'
#    resources :code
get    '/code'      => 'code#index'
get    '/code/:id'  => 'code#show'
  end 
  
get '/patients/:id', to: 'patients#show', as: 'patient'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
   root 'top#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically)
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

  # 決算情報表示
  get 'accounts/:securities_code', to: 'accounts#index'
  get 'accounts/:securities_code/consolidate', to: 'accounts#consolidate'
  get 'accounts/:securities_code/independent', to: 'accounts#independent'
end
