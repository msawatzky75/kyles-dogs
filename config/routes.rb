Rails.application.routes.draw do
  resources :product_categories
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :cart_items
  resources :invoice_status_codes
  resources :order_items
  resources :invoices
  resources :product_status_codes
  resources :products
  resources :orders
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
