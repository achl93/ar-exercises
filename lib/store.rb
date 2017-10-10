class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, minimum: 0 }
  validate :must_carry_mens_or_womens

  def must_carry_mens_or_womens
    if mens_apparel == false && womens_apparel == false
      errors.add("Store must carry either mens or womens apparel")
    end
  end

end
