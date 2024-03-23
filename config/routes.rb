Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self) 



      get '/post', to: 'posts#post'
      get '/marketing', to: 'posts#marketing'
      get '/contact', to: 'posts#contact'
      get '/posts/:id', to: 'posts#show', as: 'show_post'

      

  root "posts#index"
end
