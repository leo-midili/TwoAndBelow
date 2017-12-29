Rails.application.routes.draw do
  resources :products
  root to: 'sites#home'

  get :about, to: 'sites#about'
  get :dad, to: 'sites#dad'
  get :veggies, to: 'sites#veggies'
  get :coloring_pages, to: "sites#coloring_pages"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
