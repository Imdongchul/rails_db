Rails.application.routes.draw do
  get '/msv' => 'home#index'
  post 'home/create'
  root 'home#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
