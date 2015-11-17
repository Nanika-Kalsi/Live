Rails.application.routes.draw do
  devise_for :users
  resources :position_papers, except: [:edit, :update, :show]
  get '/download/:id' => 'position_papers#download', as: 'download'
  resources :topics, only: [:index]

  root 'position_papers#index'
end
