class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.datetime :order_date
      t.string :status
      t.integer :user_id
      t.string :authy_uuid
      t.decimal :total, precision: 5, scale: 2, default: 0
      t.integer :product_count, default: 0

      t.timestamps
    end
  end
end
