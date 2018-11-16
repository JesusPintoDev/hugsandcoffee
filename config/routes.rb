Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  resources :accounts, only: [:destroy]
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions'}
  get 'my_profile/:id' => "my_profile#edit", as: 'profile'
  get 'my_profile/:id/settings/' => "my_profile#settings", as: 'my_profile_settings'
  # get 'my_profile/:id/images' => "my_profile#images", as: 'my_profile_images'
  # get 'my_profile/:id/new_image' => "my_profile#new_image", as: 'my_profile_new_image'
  patch 'my_profile/:id' => "my_profile#update"
  patch 'my_profile/settings/:id' => "my_profile#update"
  
  get 'my_profile/:id/accounts' => "my_profile#accounts", as: 'my_profile_accounts'
  get 'my_profile/:id/new_account' => "accounts#new", as: 'new_account'
  get 'my_profile/edit_account/:id' => "accounts#edit", as: 'edit_accounts'
  patch 'accounts/:id' => "accounts#update"
  post 'my_profile/:id/new_account' => "accounts#create", as: 'accounts'
  
  get 'my_profile/:id/images' => "my_profile#images", as: 'my_profile_images'
  get 'my_profile/:id/new_image' => "images#new", as: 'my_profile_new_image'
  get 'my_profile/edit_image/:id' => "images#edit", as: 'edit_images'
  patch 'my_profile/edit_image/:id' => "images#update"
  post 'my_profile/:id/new_image' => "images#create", as: 'images'
  delete 'my_profile/:id/new_image' => "images#destroy"

  
  get 'profiles/:id/reward' => "profiles#reward", as: 'profiles_reward'
  get 'profiles/:id/coffee' => "profiles#coffee", as: 'profiles_coffee'
  get 'profiles/:id/new_hug' => "hugs#new", as: 'new_hug'
  post 'profiles/:id/hug' => "hugs#create", as: 'hugs'
  get 'profiles/:id/hug' => "profiles#hug", as: 'testimonials'
  get 'profiles/:id/thanks' => "profiles#thanks", as: 'profiles_thanks'


  get 'profiles/:id' => "profiles#show", as: "profiles"

  post "profiles/:id/coffee" => "profiles#create", as: "testimonials"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
