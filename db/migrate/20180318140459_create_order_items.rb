class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.references :order
      t.references :my_coin, foreign_key: true, null: true
      t.decimal :cost
      t.text :comments

      t.timestamps
    end
  end
end
