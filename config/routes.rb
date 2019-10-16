Rails.application.routes.draw do
  root 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, format: 'json' do
    resources :groups, only: [:index, :show, :create, :update, :destroy]
  end
end
