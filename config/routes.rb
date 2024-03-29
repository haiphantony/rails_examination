Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'guides#index'
  resources :guides, only: [:index, :show]
  resources :reviews, only:[:create, :destroy]

  # api
  namespace :api do
    namespace :v1 do
      resources :guides, only:[:show]
    end
  end
end
