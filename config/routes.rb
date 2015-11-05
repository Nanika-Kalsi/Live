Rails.application.routes.draw do
  devise_for :users
  resources :position_papers
  root 'position_papers#new'
end
