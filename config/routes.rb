Rails.application.routes.draw do
  get 'customers/show_five_customers', to: 'customers#showFiveCustomers'
  resources :customers

  post 'auth/register', to: 'users#register'
  post 'auth/login', to: 'users#login'
  get 'test', to: 'users#test'
end
