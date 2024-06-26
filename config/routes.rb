Rails.application.routes.draw do

  devise_for :users, controllers: {
  sessions: 'users/sessions',
  registrations: 'users/registrations',
  sessions: 'users/sessions'
}
  resources :users do
    collection do
      patch :bulk_update
      delete :bulk_delete
    end
  end
  resources :users, controller: 'users/registrations', only: [:new, :create]

  resources :users, only: [:index]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # root to: 'users/sessions#new'

  # Defines the root path route ("/")
  # root "pages#home"
  root to: redirect('/users/sign_in')
end
