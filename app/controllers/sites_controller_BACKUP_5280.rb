class SitesController < ApplicationController
  def home
    @products = Product.all.for_sale
  end

  def about
  end

  def veggies
  end

  def dad
  end

  def coloring_pages
  end

  def leo
  end

  def gryphen
  end

  def dean
  end
end