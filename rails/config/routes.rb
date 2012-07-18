Dogpots::Application.routes.draw do
  resources :spot_images, except: :edit
  resources :comments, except: :edit
  resources :ratings, except: :edit
  resources :spots, except: :edit
  
  # root :to => 'welcome#index'
end
