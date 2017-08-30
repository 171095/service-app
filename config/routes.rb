Rails.application.routes.draw do
  get 'welcome/index'
  resources :service_men do
    member do
      get :find_nearby_location
    end
  end
  resources :services do
    resources :service_men 
  end
  root 'welcome#index'
  
end

