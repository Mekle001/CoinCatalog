class CreateCoins < ActiveRecord::Migration[5.1]
  def change
    create_table :coins do |t|
      t.string :name
      t.text :official_name
      t.text :description
      t.integer :series_number
      t.decimal :size
      t.decimal :thickness
      t.boolean :never_icon

      t.timestamps
    end
  end
end
