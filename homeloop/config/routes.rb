Rails.application.routes.draw do
  get 'results', to: 'results#index'
  get 'home/index'
  get 'home/new_query'

  root 'home#index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
