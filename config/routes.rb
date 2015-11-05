Rails.application.routes.draw do
  devise_for :users
  resources :position_papers, except: [:edit, :update]
  root 'position_papers#new'
end
