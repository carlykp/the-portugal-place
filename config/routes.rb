Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :questionnaire, only: [:index, :show] do
    resources :question, only: [:index, :show] do
      resources :answer, only: [:index, :show] do
        resources :response, only: [:index, :show, :edit, :update]
      end
    end
  end

  resources :location, only: [:index, :show] do
    resources :recommendation, only: [:index, :show]
  end

end
