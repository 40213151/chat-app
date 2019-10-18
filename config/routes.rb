Rails.application.routes.draw do
  root 'homes#index'
  mount ActionCable.server => '/cable'
  namespace :api, format: 'json' do
    resources :groups, only: [:index, :show, :create, :update, :destroy] do
      resources :messages, only: [:index]
    end
  end
end
