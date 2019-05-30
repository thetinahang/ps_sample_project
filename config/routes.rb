Rails.application.routes.draw do
  get 'schools/index'
  get 'schools/import'
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :schools do 
  	collection do 
      post 'import'
      delete 'destroy_multiple'
    end
  end

  root to: "schools#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
