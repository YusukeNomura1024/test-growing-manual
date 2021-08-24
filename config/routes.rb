Rails.application.routes.draw do

  root 'public/homes#top'
  devise_for :users, controllers: {
    sessions: 'public/sessions',
    registrations: 'public/registrations',
    passwords: 'public/passwords'
  }

  scope module: :public do
    resources :manuals do
      resources :procedures
    end
  end

end
