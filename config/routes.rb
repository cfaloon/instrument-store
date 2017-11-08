Rails.application.routes.draw do

  # Cart
  post 'add_to_cart' => 'cart#add_to_cart'
  get 'view_order' => 'cart#view_order'
  get 'checkout' => 'cart#checkout'
  post 'order_complete' => 'cart#order_complete'
  
  devise_for :users
  get 'categorical' => 'storefront#items_by_category'
  get 'branding' => 'storefront#items_by_brand'

  resources :products

  root 'storefront#all_items'
end
