Rails.application.routes.draw do
  resources :users do
    resources :accounts
  end

  root 'users#index'
end
