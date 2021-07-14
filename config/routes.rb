Rails.application.routes.draw do
  root to: "gardens#index"
  resources :gardens do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :flowers, only: [ :new, :create]
  end
  resources :flowers, only: [:destroy]
end
