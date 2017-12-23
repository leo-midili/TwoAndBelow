Rails.application.routes.draw do
  root to: 'sites#home'

  get :about, to: 'sites#about'
  get :dad, to: 'sites#dad'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
