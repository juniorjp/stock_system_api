Rails.application.routes.draw do
  namespace :v2, defaults: { format: :json } do
    resources :products do
    end
  end
end
