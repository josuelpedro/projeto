Rails.application.routes.draw do
  resources :parceiros
  resources :sinistros
  resources :alugues
  resources :clientes
  resources :motos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
