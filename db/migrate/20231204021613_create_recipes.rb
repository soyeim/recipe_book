class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.integer :dish_id
      t.integer :instructions
      t.integer :user_id

      t.timestamps
    end
  end
end
