Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'
  get '/*path' => redirect('/#/%{path}')
  root to: 'home#index'
end
