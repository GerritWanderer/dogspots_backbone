Dogspots::Application.routes.draw do
  resources :spots, except: :edit, :defaults => { :format => 'json' }
  resources :comments, except: :edit, :defaults => { :format => 'json' }

  get "app/index"
  root :to => 'app#index'
end
