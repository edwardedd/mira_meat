class PagesController < ApplicationController
   before_filter :info
  def index
    @article = Article.limit(5).show
    @about_us = Aboutus.first
    @main = Main.first
  end

  def about_us
    @about_us = Aboutus.first
    @sertificates = Sertificate.all.show
    @history = [History.year(2001).show,History.year(2002).show,History.year(2003).show,History.year(2004).show,History.year(2005).show,History.year(2006).show,History.year(2007).show,History.year(2008).show,History.year(2009).show,History.year(2010).show,
      History.year(2011).show,History.year(2012).show,History.year(2013).show,History.year(2014).show,History.year(2015).show,History.year(2016).show,History.year(2017).show,History.year(2018).show,History.year(2019).show,History.year(2020).show,
      History.year(2021).show,History.year(2022).show,History.year(2023).show,History.year(2024).show,History.year(2025).show,History.year(2026).show,History.year(2027).show,History.year(2028).show]
    @vacancy = Vacancy.all.show
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
    @products = Product.all.show
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
  def policy
    @policy = Policy.first
  end
  def productpopup
  end
  def donwload(file)
    send_file Aboutus.first.file
  end
  private
  def info
    @headerslider = Headerslider.show
    @footerslider = Footerslider.show
    @contact = Contact.first
  end
end
