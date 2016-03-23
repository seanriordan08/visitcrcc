Rails.application.routes.draw do

  get 'user/index'

  devise_for :users, :controllers => {sessions: 'sessions', registrations: 'registrations'}

  resources :users do
    member do
      put :update_avatar
    end
  end

  resources :welcome do
    collection do
      get :staff
      get :declaration_of_faith
      get :sermons
      get :events
      get :dashboard
      get :serve
    end
  end

  resources :ministries do
    collection do
      get :life_groups
      get :mens
      get :womens
      get :youth
      get :childrens
      get :worship_arts
      get :missions
    end
  end

  resources :dashboards

  Rails.application.routes.draw do
    match '*path', via: :all, to: 'errors#not_found', constraints: CloudfrontConstraint.new
  end


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
