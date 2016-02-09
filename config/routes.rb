Rails.application.routes.draw do
  root 'pages#index'
  resources :order_sheets
  resources :quarterbreeds
  resources :tr7s
  resources :mark_quarterbreeds
  resources :xj6_quarterbreeds
  resources :etype_v12s

  # , :except => [:show, :edit, :update] do
  #  collection do
  #      get "/:secure_url", :to => "mark_quarterbreeds#show", :as => :show
  #      get "/:secure_url", :to => "mark_quarterbreeds#edit", :as => :edit
  #      put ':secure_url' => 'mark_quarterbreeds#update', as: :update
   #
   #
  #  end
 # end

  get 'jaguars' =>'pages#jaguars', as: :jaguars
  get 'triumph-tr7' => 'pages#triumph_tr7', as: :triumph_tr7
  get 'datsun-zcar' => 'pages#datsun_zcar', as: :datsun_zcar
  get 'chevy-v8' => 'pages#chevy_v8', as: :chevy_v8

  get 'order_forms' => 'pages#order_forms', as: :order_forms
  get 'home2' => 'pages#home2', as: :home2
  get 'print/:id' => 'etype_v12s#print', as: :print

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
