Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: 'auth'
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  get '/', to: redirect('/api-docs')

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  scope path: 'api/v1' do

      root 'home#index'
      get 'members_only', to:'home#members_only'
      resources :posts
      resources :todos
      resources :users
      resources :versions
      resources :energy_technologyes
      resources :energy_resources


  end
end
