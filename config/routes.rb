Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions'}
  get 'my_profile/:id' => "my_profile#edit", as: 'profile'
  get 'my_profile/settings' => "my_profile#settings"
  get 'my_profile/images' => "my_profile#images"
  get 'my_profile/new_image' => "my_profile#new_image"
  get 'my_profile/accounts' => "my_profile#accounts"
  get 'my_profile/new_account' => "my_profile#new_account"
  patch 'my_profile/:id' => "my_profile#update"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
