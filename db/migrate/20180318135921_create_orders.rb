class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.datetime :order_date
      t.references :vendor, foreign_key: true, null: true
      t.decimal :shipping_cost
      t.text :comments

      t.timestamps
    end
  end
end
