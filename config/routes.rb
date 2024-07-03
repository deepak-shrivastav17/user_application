Rails.application.routes.draw do
  root 'users#index'
  get 'users/filter', to: 'users#filter', as: 'users_filter'
  get 'users/clear_filter', to: 'users#clear_filter', as: 'users_clear_filter'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
