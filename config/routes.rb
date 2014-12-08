Rails.application.routes.draw do

  get 'boot/index'
  get 'boot/form'

  get 'welcome/index'

  get '/login' => 'session#new'
  get '/auth/github/callback' => 'session#create'
  get '/logout' => 'session#destroy'

  get 'appointments/results', to: 'appointment#result', as: :appointment_results
  get 'appointment/show', to: 'appointment#show', as: :appointment_show
  get 'appointments/edit', to: 'appointment#edit', as: :appointment_edit
  get 'appointments/cancel', to: 'appointment#cancel', as: :appointment_cancel

  post 'appointments/search', to: 'appointment#search', as: :appointment_search
  post 'appointments/book', to: 'appointment#book', as: :appointment_book

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  resources :student, :tutor, :appointment

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
