class RemoveIngredientIdFromIngredients < ActiveRecord::Migration[6.0]
  def change
    remove_column :ingredients, :ingredients_id
  end
end
