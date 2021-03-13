Rails.application.routes.draw do
  devise_for :users
  resources :be_a_volunteers
  # get 'home/index'
  get 'home/volunteer'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
