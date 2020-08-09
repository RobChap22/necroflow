Rails.application.routes.draw do
  root to: 'layouts#application'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :gangs do
    resources :turves, only: [:new, :create]
  end
end
