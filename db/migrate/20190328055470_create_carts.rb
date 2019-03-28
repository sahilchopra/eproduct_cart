class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.integer :user_id
      t.decimal :total, precision: 5, scale: 2, default: 0
      t.integer :product_count, scale: 2, default: 0

      t.timestamps
    end
  end
end
