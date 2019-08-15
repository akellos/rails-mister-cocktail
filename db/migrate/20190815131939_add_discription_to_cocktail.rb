class AddDiscriptionToCocktail < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :description, :text
  end
end
