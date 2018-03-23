class CreateGraphics < ActiveRecord::Migration[5.1]
  def change
    create_table :graphics do |t|
      t.string :name
      t.string :image
      t.string :format
      t.numeric :width
      t.numeric :height
      t.boolean :is_icon, default: false

      t.timestamps
    end
    change_table :coins do |t|
      t.references :icon, references: :graphics, null:true
    end
    change_table :editions do |t|
      t.references :icon, references: :graphics, null:true
    end

    add_foreign_key :coins, :graphics, column: :icon_id, on_delete: :nullify

    add_foreign_key :editions, :graphics, column: :icon_id, on_delete: :nullify
  end
end
