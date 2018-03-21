class CreateFinishes < ActiveRecord::Migration[5.1]
  def change
    create_table :finishes do |t|
      t.string :name

      t.timestamps
    end
    change_table :editions do |t|
      t.references :finish
    end
  end
end
