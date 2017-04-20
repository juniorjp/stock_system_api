class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name, limit: 80, nil: false
      t.string :code, limit: 25
      t.decimal :price, precision: 14, scale: 2, default: 0, nil: false
      t.integer :quantity, default: 0, nil: false
      t.text :ps
      t.boolean :hidden, default: false
      t.timestamps
    end
    add_index :products, :name
    add_index :products, :code
  end
end