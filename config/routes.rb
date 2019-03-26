Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # resources :cart_items
  # resources :customers
  # resources :invoices
  # resources :invoice_status_codes
  # resources :orders
  # resources :order_items
  # resources :products
  # resources :product_categories
  # resources :product_status_codes

  root to: 'home#index' # Vue takes over here.
end
