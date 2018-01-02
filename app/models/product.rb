class Product < ApplicationRecord
  belongs_to :category

  before_validation :set_quantity_if_null
  before_validation :set_price_if_null

  include ImageUploader::Attachment.new(:image)

  validates :name, presence: true
  validates :price, numericality: true
  validates :quantity, numericality: true
  validates :available_on, presence: true
  validates :available_on, format: { with: /([12]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01]))/,
                                     message: "date format : yyyy-mm-dd" }
  validates :discontinued_on, format: { with: /([12]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01]))/,
                                        message: "date format : yyyy-mm-dd" }
  validate :discontinued_not_before

  scope :for_sale, -> { where(for_sale: true) }

private

  def set_quantity_if_null
    self.quantity = 0 if self.quantity.nil?
  end

  def set_price_if_null
    self.price = 0 if self.price.nil?
  end

  def discontinued_not_before
    errors.add(:discontinued_on, "can't exist before the available on date") if discontinued_on && discontinued_on < available_on
  end
end
