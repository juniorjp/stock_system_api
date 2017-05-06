Rails.application.routes.draw do
  namespace :v2, defaults: { format: :json } do
    resources :products do
      post :index, path: '/search', on: :collection
    end
  end
end
