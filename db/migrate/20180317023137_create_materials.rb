class CreateMaterials < ActiveRecord::Migration[5.1]
  def change
    create_table :materials do |t|
      t.string :name

      t.timestamps
    end
    change_table :editions do |t|
      t.references :material
    end
  end
end
