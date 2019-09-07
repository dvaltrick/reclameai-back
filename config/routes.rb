Rails.application.routes.draw do
  namespace :api do
    resources :complaint
  end
end
