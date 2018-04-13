class PagesController < ApplicationController
   before_filter :info
  def index
  end

  def about_us
  end

  def news_page
  	@black_header = true
  end

  def one_news_page
  	@black_header = true
  end

  def contact_us_page
    @black_header = true
  end

  def products_page
  end

  def retail_page
    @retail = Retail.first
    @retailslider = Retailslider.show
  end

  def production_page
    @production = Production.first
  end

  def wholesale_page
    @wholesale =  Wholesale.first
  end
  def consultation
    render json: {}
  end
  private
  def info
    @headerslider = Headerslider.show
    @footerslider = Footerslider.show
    @contact = Contact.first

  end
end
