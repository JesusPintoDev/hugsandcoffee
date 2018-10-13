Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  devise_for :users#, controllers: { registrations: 'users/registrations', sessions: 'users/sessions'}
  resources :profiles do
    get 'my_profile' => "my_profile#index"
    get 'my_profile/settings' => "my_profile#settings"
    get 'my_profile/images' => "my_profile#images"
    get 'my_profile/accounts' => "my_profile#accounts"
  end
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
