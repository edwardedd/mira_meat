Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: "pages#index"

  controller :pages do
    get "about-us", action: "about_us"
    get "news-page", action: "news_page"
    get "news-page/:id", action: "one_news_page", as: "one_news_page"
    get "contact-us-page", action: "contact_us_page"
    get "products-page", action: "products_page"
    get "retail-page", action: "retail_page"
    get "production-page", action: "production_page"
    get "wholesale-page", action: "wholesale_page"
    post "consultation", action: "consultation"
    get "policy", action: "policy"
    get "product-popup", action: "productpopup"
    get "donwload", action: "donwload"
    get "product/:id", action: "product", as: "product"
  end

  match "*url", to: "application#render_not_found", via: [:get, :post, :path, :put, :update, :delete]
end
