Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions'}
  get 'my_profile/:id' => "my_profile#edit", as: 'profile'
  get 'my_profile/:id/settings/' => "my_profile#settings", as: 'my_profile_settings'
  get 'my_profile/:id/images' => "my_profile#images", as: 'my_profile_images'
  get 'my_profile/:id/new_image' => "my_profile#new_image", as: 'my_profile_new_image'
  get 'my_profile/:id/accounts' => "my_profile#accounts", as: 'my_profile_accounts'
  get 'my_profile/:id/new_account' => "my_profile#new_account", as: 'my_profile_new_account'
  patch 'my_profile/:id' => "my_profile#update"
  patch 'my_profile/settings/:id' => "my_profile#update"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
