Rails.application.routes.draw do
  get 'review' => 'review#show'

  get 'review/next'
  get 'review/know'
  get 'review/unknow'
  get 'review/pending'

  resources :todos, only: [:new,:show,:edit, :create, :index] do
    resource :completion, only: [:create, :destroy]
  end
  #get 'shanbay_words/index'
  get 'shanbay_words/show'
  get 'shanbay' => 'shanbay_words#show'
  # post 'shanbay' => 'shanbay_words#show'
  post 'shanbay_search' => 'shanbay_words#search'
  get 'shanbay_search' => 'shanbay_words#search'
  resources :microposts
  resources :event_times
  resources :event_tags
  resources :event_types
  resources :event_tags
  resources :event_types
  resources :event_times
  resources :microposts
  get 'static_pages/contact'

  devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'

  }

  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'
  get 'static_pages/contact'
  root to: "static_pages#home"
  resources :users
  # post 'users' => 'user#update'
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
