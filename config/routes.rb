SampleApp::Application.routes.draw do

  resources :users do
    member do
      get :following, :admirers, :messages_to, :messages_from
    end
  end

  resources :sessions, :only=> [:new, :create, :destroy]
  resources :microposts, :only=> [:destroy]
  resources :relationships, :only=> [:create, :destroy]


  match '/signup',  :to=> 'users#new'
  match '/profile',  :to=> 'users#show'
  match '/signin',  :to=> 'sessions#new'
  match '/signout', :to=> 'sessions#destroy', :via=> :delete

  match '/contact', :to=> 'static_pages#contact'
  match '/about', :to=> 'static_pages#about'
  match '/help',  :to=> 'static_pages#help'
 
   match '/course',  :to=> 'static_pages#courses'
    match '/bugs',  :to=> 'static_pages#bug'
    match '/teach',  :to=> 'static_pages#teach'
    match '/html5',  :to=> 'static_pages#les1'
     match '/android',  :to=> 'static_pages#les2'
 match '/home',  :to=> 'static_pages#home'
  root      :to=> 'users#index'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end