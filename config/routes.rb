Rails.application.routes.draw do
  resources :portfolios, except: %i[show edit update destroy]
  get 'angular-portfolios', to: 'portfolios#angular'
  get '/portfolio/:id/edit', to: 'portfolios#edit', as: 'edit_portfolio'
  scope '/portfolio/:id', as: 'portfolio' do
    get '/', to: 'portfolios#show'
    put '/', to: 'portfolios#update'
    patch '/', to: 'portfolios#update'
    delete '/', to: 'portfolios#destroy'
  end

  get 'about-me', to: 'pages#about', as: 'about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      patch :toggle_status
    end
  end

  root to: 'pages#home'

  match '/*path', to: 'application#not_found', via: :all
end
