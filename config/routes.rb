Rails.application.routes.draw do
  resources :portfolios
  get 'home' => 'pages#home'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
