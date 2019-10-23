Rails.application.routes.draw do
  resources :paintings, only: [:index, :show, :new, :create, :destroy]
  resources :galleries
  resources :artists 
end
