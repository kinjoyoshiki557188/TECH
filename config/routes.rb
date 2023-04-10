Rails.application.routes.draw do
  root to: "posts#new"
  resources :posts do
  resources :answers
  end
end
