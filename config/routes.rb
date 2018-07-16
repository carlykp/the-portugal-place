Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/questionnaires' => "questionnaires#index", as: :user_root
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :questionnaires, only: [:index, :show] do
    resources :questions, only: [:index, :show] do
      resources :answers, only: [:index, :show] do
        resources :responses, only: [:index, :show, :edit, :update]
      end
    end
  end

  resources :locations, only: [:index, :show] do
    resources :recommendations, only: [:index, :show]
  end

end
