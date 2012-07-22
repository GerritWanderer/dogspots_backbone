Dogspots::Application.routes.draw do
  resources :spots, except: :edit

  get "app/index"
  root :to => 'app#index'
end
