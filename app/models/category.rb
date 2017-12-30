class Category < ApplicationRecord
  has_many :products

  validates :name, presence: true

  def self.select_options
    all.map { |c| [ c.name, c.id ] }
  end
end
