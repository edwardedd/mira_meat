RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show

  end
  config.included_models = [Product,Contact,Retail,User,Retailslider,Wholesale,Production,Footerslider,Headerslider]

  config.model Product do
    navigation_label "Продукти"
    label "Одиниця продукціі"
    include_fields :name, :type, :article_num, :country, :company_name, :image, :temperature, :import, :export, :present, :show
    field :category, :enum do
     enum [" Cвинина","Яловичина","Курятина","Індичатина"]
   end
  end
  config.model Contact do
    navigation_label "Контакти"
    label "Контакти"
    include_fields :image, :first_number, :second_number, :third_number, :first_email, :second_email, :image, :first_adress, :map_link, :facebook, :twitter, :youtube
  end

  config.model Retailslider do
    navigation_label "Роздріб"
    label "Роздріб слайдер"
    include_fields :image, :first_title, :second_title, :show
  end

  config.model Retail do
    navigation_label "Роздріб"
    label "Роздріб"
    include_fields :main_image, :first_title, :second_title, :third_title
  end

  config.model Footerslider do
    navigation_label "Слайдери"
    label "Футер"
    include_fields :image, :show
  end

  config.model  Headerslider do
    navigation_label "Слайдери"
    label "Хедер"
    include_fields :image, :show
  end
  config.model  Production do
    navigation_label "Виробництво"
    label "Виробництво"
    include_fields :main_image, :first_title, :second_title, :second_image, :description, :review_title, :review_description
  end
  config.model  Wholesale do
    navigation_label "Гуртовикам"
    label "Гуртовикам"
    include_fields :main_image, :first_title, :second_title, :second_image, :third_title, :fourth_title, :fifth_title, :sixth_title, :review_title, :review_description
  end
end
