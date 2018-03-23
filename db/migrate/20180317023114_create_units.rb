class CreateUnits < ActiveRecord::Migration[5.1]
  def change
    create_table :units do |t|
      t.string :name

      t.timestamps
    end
    change_table :coins do |t|
      t.references :unitsize, references: :units, null:true
      t.references :unitthickness, references: :units, null:true
    end

    add_foreign_key :coins, :units, column: :unitsize_id, on_delete: :nullify
    add_foreign_key :coins, :units, column: :unitthickness_id, on_delete: :nullify
  end
end
