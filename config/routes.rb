Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'weddings#index'
  resources :weddings, only: %i(index)
  get :map, controller: :weddings, action: :map, defaults: { format: :html }
  get :album, controller: :weddings, action: :album, defaults: { format: :html }
  get :bus, controller: :weddings, action: :bus, defaults: { format: :html }
end
