class PagesController < ApplicationController

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
  end

  def production_page
  end

  def wholesale_page
  end
  
end