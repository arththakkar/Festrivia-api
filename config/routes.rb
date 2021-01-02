Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "api_help/index", :as => :api_help
  namespace :api, :defaults => {:format => 'json'} do
    scope :module => :v1 do
      post 'sign_up' => "users#sign_up",:as => :signup
      post 'login'  => 'users#login', :as => :login
      post 'update_profile' => 'users#update_profile', :as => :update_profile
      get  'logout' => 'users#logout', :as => :logout
      post 'change_password' => 'users#change_password'
      post 'forgot_password'   => 'users#forgot_password'
    end
  end
end
