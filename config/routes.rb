Rails.application.routes.draw do
  get "admin/index"
  scope "(:locale)", locale: /ru|en/ do
    root "pages#home"

    devise_for :users

    resources :users do
      patch :update_by_email, on: :collection
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
