class CreateUnits < ActiveRecord::Migration[5.1]
  def change
    create_table :units do |t|
      t.string :name

      t.timestamps
    end
    change_table :coins do |t|
      t.integer :unitsize_id, null:true
      t.integer :unitthickness_id, null:true
    end

    add_foreign_key :coins, :units, column: :unitsize_id, on_delete: :nullify
    add_foreign_key :coins, :units, column: :unitthickness_id, on_delete: :nullify
    add_index :coins, :unitsize_id, name: "index_coins_on_unitsize_id"
    add_index :coins, :unitthickness_id, name: "index_coins_on_unitthickness_id"
  end
end
