class CreateCartProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :cart_products do |t|
      t.integer :cart_id
      t.integer :product_id
      t.integer :qty, default: 0
      t.decimal :price, precision: 5, scale: 2

      t.timestamps
    end
  end
end
