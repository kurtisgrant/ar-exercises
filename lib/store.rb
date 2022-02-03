class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
  }
  validate :has_mens_or_womens_apparel

  def has_mens_or_womens_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:base, "must sell women's or men's clothes")
    end
  end
end
