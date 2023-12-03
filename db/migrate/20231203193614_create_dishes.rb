class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.string :image
      t.string :name
      t.string :description
      t.integer :recipes_count

      t.timestamps
    end
  end
end
