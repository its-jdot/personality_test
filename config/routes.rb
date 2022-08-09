Rails.application.routes.draw do
  get 'questions/index'
  root 'tests#index'
  get "/tests", to: "tests#index"

  resources :tests
  
  
end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html