Dogspots::Application.routes.draw do
  mount RailsAdmin::Engine => '/danger', :as => 'rails_admin'
  devise_for :admins

  resources :spots, except: :edit, :defaults => { :format => 'json' }
  resources :comments, except: :edit, :defaults => { :format => 'json' }

  get "app/index"
  root :to => 'app#index'
end
