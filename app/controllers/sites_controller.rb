class SitesController < ApplicationController
  def home
    @products = Product.all.for_sale.by_category('Veggies')
  end

  def about
  end

end
