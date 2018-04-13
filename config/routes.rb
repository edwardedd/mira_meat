Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: "pages#index"

  controller :pages do
    get "about-us", action: "about_us"
    get "news-page", action: "news_page"
    get "one-news-page", action: "one_news_page"
    get "contact-us-page", action: "contact_us_page"
    get "products-page", action: "products_page"
    get "retail-page", action: "retail_page"
    get "production-page", action: "production_page"
    get "wholesale-page", action: "wholesale_page"
    post "consultation", action: "consultation"
  end

  match "*url", to: "application#render_not_found", via: [:get, :post, :path, :put, :update, :delete]
end
