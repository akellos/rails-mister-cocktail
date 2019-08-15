class Cocktail < ApplicationRecord
  # A cocktail has many doses
  # When you delete a cocktail, you should delete associated doses (but not the ingredients as they can be linked to other cocktails).
  has_many :doses, dependent: :destroy
  # A cocktail has many ingredients through doses
  has_many :ingredients, through: :doses
  # You can't delete an ingredient if it used by at least one cocktail.
  validates_associated :ingredients, :doses
  validates :name, presence: true
  validates :name, uniqueness: true
end
