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
  config.included_models = [Vacancyform,Order,Consultation,Vacancy,Policy,Main,History,Aboutus,Article,Sertificate,Product,Contact,Retail,User,Retailslider,Wholesale,Production,Footerslider]
    config.model Vacancyform do
      navigation_label "Звязок"
      label "Резюме"
      include_fields :name, :surname, :phone, :vacancy_name, :email, :file
    end
    config.model Order do
      navigation_label "Звязок"
      label "Замовлення"
      include_fields :name,:phone, :email, :category, :amount, :comment
    end
    config.model Consultation do
      navigation_label "Звязок"
      label "Консультація"
      include_fields :name, :phone, :email, :comment
    end
    config.model History do
      navigation_label "Про нас"
      label " Наша Історія"
      include_fields :title, :image, :show
      field :year, :enum do
       enum ["1991","1992","1993","1994","1995","1996","1997","1998","1999","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2013","2014","2015","2016","2017","2018","2019","2020","2021","2022","2023","2024","2025","2026","2027","2028"]
      end
      field :description, :ck_editor
    end
    config.model Aboutus do
      navigation_label "Про нас"
      label " Основна інформація"
      include_fields :title, :description, :main_image, :video_link, :video_cover, :second_title, :second_description, :second_image, :third_title, :third_description, :third_description_right, :frase, :history_text, :file
    end
    config.model Vacancy do
      navigation_label "Про нас"
      label "Ваканції"
      include_fields :vacancy, :salary, :show
    end

    config.model Article do
      navigation_label "Новини"
      label "Новини"
      configure :date do
      strftime_format do
        "%d.%m.%Y"
      end
      end
      include_fields :title, :second_title,  :main_image, :second_image, :date, :show
      field :first_description, :ck_editor
      field :second_description, :ck_editor
      field :photo_description, :ck_editor
    end
  config.model Policy do
    navigation_label "Політика конфідеційності"
    label "Політика конфідеційності"
    field :text, :ck_editor
  end
  config.model Sertificate do
    navigation_label "Про нас"
    label "Сертифікати"
    include_fields :image, :name, :show
  end

  config.model Product do
    navigation_label "Продукти"
    label "Одиниця продукціі"
    include_fields :name, :product_description,:part_of_meat, :article_num, :country, :company_name, :image, :temperature, :import, :export, :present, :show, :price, :freeze_type, :priority
    field :category, :enum do
     enum ["Cвинина","Яловичина","Курятина","Індичатина"]
   end
  end
  config.model Contact do
    navigation_label "Контакти"
    label "Контакти"
    include_fields :image, :first_number, :second_number, :third_number, :first_email, :second_email, :image, :first_adress, :map_link, :facebook, :twitter, :youtube
  end
  config.model Main do
    navigation_label "Головна"
    label "Головна"
    include_fields :main_description, :second_description, :third_description, :fourth_description, :video_link,:video_cover
  end

  config.model Retailslider do
    navigation_label "Роздріб"
    label "Роздріб слайдер"
    include_fields :image, :first_title, :show
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
