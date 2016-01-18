Rails.application.routes.draw do

  devise_for :users
  get 'dashboard/index'

  get 'persons/profile'

  root 'dashboard#index'

  get 'persons/profile', as: 'user_root'

  get 'case_profile/:id', :to => 'cases#case_profile'

  resources :template_libraries
  resources :cases
end
