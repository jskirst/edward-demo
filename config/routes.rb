Rails.application.routes.draw do
  resources :servers, only: [] do
    resources :demos, only: [:show]
  end
end
