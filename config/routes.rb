Rails.application.routes.draw do
  
  resources :subscriptions
  devise_for :users
  root to: "pages#index"
  post "/" => "pages#index"
  post "/update" => "pages#update_content", :as => "update_content"
  post "/confirm" => "pages#confirm", :as => "confirm_comment"
  get "/.well-known/acme-challenge/dDqPsg4EcB1r1DezOtEH0S7IE3VHjKY5b7fCAUrcg2E" => "pages#acme"
  #get "/location" => "pages#location", :as => "location"
  #get "/gallery" => "pages#gallery", :as => "gallery"
  #get "/order" => "pages#order", :as => "order"
  #get "/team" => "pages#team", :as => "team"
  #get "/oysterstory" => "pages#oysterstory", :as => "oysterstory"
  #get "/contact" => "pages#contact", :as => "contact"
  #get "/farmed-vs-wild" => "pages#fvw", :as => "fvw"
  #get "/blog" => "pages#blog", :as => "blog"
  
  #post '/gallery' => 'media_files#create'

  resources :posts
  
  #authenticated :user, lambda { |u| u.admin? } do
  #  resources :media_files
  #end
  
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
