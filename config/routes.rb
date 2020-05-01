Rails.application.routes.draw do
  devise_for :users, skip: [:registration]

  root to: 'sites#home'

  get :about, to: 'sites#about'
  get :admin, to: redirect('/users/sign_in')
  resources :products
  resources :categories

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
