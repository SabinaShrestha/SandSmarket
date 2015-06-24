class CreateCategories < ActiveRecord::Migration

  def change
    create_table :categories do |t|
      t.string :homes
      t.string :cars
      t.string :appliances
      t.string :groceries
      t.string :electronics
      t.timestamps null: false
    end
  end
end
