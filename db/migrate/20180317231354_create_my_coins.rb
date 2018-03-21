class CreateMyCoins < ActiveRecord::Migration[5.1]
  def change
    create_table :my_coins do |t|
      t.references :edition, foreign_key: true
      t.boolean :activated
      #t.integer :owner_id
      t.string :reference_code
      t.string :public_name

      t.integer :rating
      t.boolean :keeper
      t.boolean :personal

      t.text :notes
      t.text :mission

      t.string :track_code
      t.string :activate_code
      t.decimal :original_price

      t.timestamps
    end
  end
end
