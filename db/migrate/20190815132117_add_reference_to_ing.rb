class AddReferenceToIng < ActiveRecord::Migration[5.2]
  def change
    add_reference :doses, :ingredient, foreign_key: true
  end
end
