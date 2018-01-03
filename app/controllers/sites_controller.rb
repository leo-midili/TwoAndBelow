class SitesController < ApplicationController
  def home
    @products = Product.all.for_sale.by_category('Veggies')
  end

  def about
  end

  def dad
  end

  def leo
  end

  def gryphen
  end

  def dean
  end
end
