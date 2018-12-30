Rails.application.routes.draw do
  resources :portfolios, except: %i[show edit update destroy]
  get '/portfolio/:id/edit', to: 'portfolios#edit', as: 'edit_portfolio'
  scope '/portfolio/:id', as: 'portfolio' do
    get '/', to: 'portfolios#show'
    put '/', to: 'portfolios#update'
    patch '/', to: 'portfolios#update'
    delete '/', to: 'portfolios#destroy'
  end

  get 'about-me', to: 'pages#about', as: 'about'
  get 'contact', to: 'pages#contact'

  resources :blogs

  root to: 'pages#home'

  match '/*path', to: 'application#not_found', via: :all
end
