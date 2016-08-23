Rails.application.routes.draw do
  root 'pages#index'
  resources :order_sheets
  resources :quarterbreeds
    get "quarterbreed/information" => "quarterbreeds#information", as: :quarterbreed_information

  resources :tr7s
  resources :mark_quarterbreeds
  resources :xj6_quarterbreeds
  resources :etype_v12s

  resources :datsun_zcars
    get "datsun_zcar/information" => "datsun_zcars#information", as: :datsun_zcar_information


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
  get 'xj-sedans' => 'jaguars#xj_sedans', as: :xj_sedans
  get 'triumph-tr7' => 'pages#triumph_tr7', as: :triumph_tr7
  get 'chevy-v8' => 'pages#chevy_v8', as: :chevy_v8

  get 'order_forms' => 'pages#order_forms', as: :order_forms
  get 'home2' => 'pages#home2', as: :home2
  get 'print-etype-v12/:id' => 'etype_v12s#print_etype_v12_pdf', as: :print_etype_v12_pdf
  get 'print-xj6-quarterbreeds-pdf/:id' => 'xj6_quarterbreeds#print_xj6_pdf', as: :print_xj6_pdf
  get 'print-mark-quarterbreeds-pdf/:id' => 'mark_quarterbreeds#print_mark_quarterbreeds_pdf', as: :print_mark_quarterbreeds_pdf
  get 'print-tr7s-pdf/:id' => 'tr7s#print_tr7_pdf', as: :print_tr7_pdf
  get 'print-quarterbreeds-pdf/:id' => 'quarterbreeds#print_quarterbreeds_pdf', as: :print_quarterbreeds_pdf
  get 'print-order-sheet-pdf/:id' => 'order_sheets#print_order_sheet_pdf', as: :print_order_sheet_pdf
  get 'print-datsun-zcar-pdf/:id' => 'datsun_zcars#print_datsun_zcar_pdf', as: :print_datsun_zcar_pdf






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
