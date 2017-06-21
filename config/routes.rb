Rails.application.routes.draw do
  get 'dashboard/landing'

  root 'public#index'
  get 'public/index'

  get 'public/about'

  get 'public/free'

  namespace :admin do
    resources :instructors
resources :users
resources :courses
resources :sales
resources :videos

    root to: "instructors#index"
  end

  resources :sales
  devise_for :instructors
  resources :videos
  resources :courses
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
