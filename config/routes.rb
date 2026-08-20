Rails.application.routes.draw do
  get "contacts/new"
  get "contacts/create"
  root "pages#home"

  get "about", to: "pages#about"
  get "services", to: "services#index"

  get "contact", to: "contacts#new"
  post "contact", to: "contacts#create"

  get "up" => "rails/health#show", as: :rails_health_check
end
