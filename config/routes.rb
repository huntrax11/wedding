Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'weddings#index'
  resources :weddings, only: %i(index)
end

