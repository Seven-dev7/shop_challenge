Rails.application.routes.draw do
  resources :shops, only: %i[index show]

  root "shops#index"
end
