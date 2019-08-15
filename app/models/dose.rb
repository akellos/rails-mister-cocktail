class Dose < ApplicationRecord
  # A dose belongs to a cocktail
  belongs_to :cocktail
  # A dose belongs to an ingredient
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end
