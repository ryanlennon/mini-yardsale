class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image
      t.decimal :price, precision: 6, scale: 2

      t.timestamps null: false
    end
  end
end
