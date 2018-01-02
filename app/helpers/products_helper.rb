module ProductsHelper
  def currently_for_sale(for_sale)
    for_sale ? 'For sale!' : 'Not for sale'
  end
end
