Rails.application.routes.draw do
  devise_for :users
  resources :position_papers, except: [:edit, :update]
  resources :topics, only: [:index]

  root 'position_papers#new'
end
