Rails.application.routes.draw do
  devise_for :admins, controllers: { sessions: 'sessions' }

  devise_scope :admins do
    get "/admins/home", to: "home#index" , as: :admin_home
  end
end
