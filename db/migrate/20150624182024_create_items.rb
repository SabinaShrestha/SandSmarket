class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.belongs_to :category
      t.string :details
      t.float :price
      t.text :description
      t.timestamps null: false
    end
  end
end
