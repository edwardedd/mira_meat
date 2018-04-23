class PagesController < ApplicationController
   before_filter :info
  def index
    @article = Article.limit(5).show
    @about_us = Aboutus.first

  end

  def about_us
    @about_us = Aboutus.first
    @sertificates = Sertificate.all.show
  end

  def news_page
    @article = Article.all.show
  	@black_header = true
  end

  def one_news_page
    @article = Article.find(params[:id])
    @next = Article.where(["id > ?", params[:id]]).show.first
    @previous = Article.where(["id < ?", params[:id]]).show.last
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
