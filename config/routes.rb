Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'designing', to: 'main#designing'
  get 'development', to: 'main#development'
  get 'mobile', to: 'main#mobile'
  get 'marketing', to: 'main#marketing'
  get 'contact', to: 'main#contact'
  
  
  root "main#index"
end
