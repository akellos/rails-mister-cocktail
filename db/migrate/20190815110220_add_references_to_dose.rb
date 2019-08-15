class AddReferencesToDose < ActiveRecord::Migration[5.2]
  def change
    add_reference :doses, :cocktail, foreign_key: true
  end
end
