class AddCocktailIdToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_column :ingredients, :ingredients_id, :integer
  end
end
