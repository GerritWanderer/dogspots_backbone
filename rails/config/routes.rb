Dogpots::Application.routes.draw do
  resources :users, except: :edit
  resources :spot_images, except: :edit
  resources :comments, except: :edit
  resources :ratings, except: :edit
  resources :spots, except: :edit
  
  get "app/index"
  root :to => 'app#index'
end
