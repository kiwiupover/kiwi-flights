Vanz::Application.routes.draw do

  namespace :api do
    resources :itineraries

    resources :locations

    resources :vans

    resources :search_results

    resources :bookings

    resources :results
  end

  root to: 'welcome#index'
  match "/*ember" => "welcome#index"
end
