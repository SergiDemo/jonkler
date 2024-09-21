Rails.application.routes.draw do
    root 'jokes#index'
    resources :users, only: [:show]
    resources :jokes, only: [:index, :new, :create, :show]

end
