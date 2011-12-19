class MainController < ApplicationController
  def index
    @countries = Country.find(:all)
  end

  def set_locale
    I18n.locale = params[:locale]
    redirect_to :action => "index"
  end

  def add_country
    @country = Country.new
  end
end
