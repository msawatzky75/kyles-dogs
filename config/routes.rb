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

  root to: 'home#index' # Vue takes over here.
end
