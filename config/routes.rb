Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  root 'welcome#index'
  get 'sessions/new'
  get  '/help',    to: 'welcome#help'
  get  '/about',   to: 'welcome#about'
  get  '/contact', to: 'welcome#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get  '/profile', to: 'users#show'
  get  '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

#  get 'users/new'

  resources :coins, shallow:true do
    resources :editions
  end

  resources :series
  resources :graphics

  scope "admin" do
    #root 'welcome#index'
    resources :users
    resources :artists
    resources :mints, :enamels, :units, :vendors, :materials, :finishes, :attributes
  end

  scope "collection" do
    resources :my_coins
    resources :orders do
      resources :orderitems
    end
  end

  namespace :api do
    namespace :v1 do
      resources :artists, only: [:index, :create, :destroy, :update]
    end
  end

  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
