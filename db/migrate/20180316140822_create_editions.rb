class CreateEditions < ActiveRecord::Migration[5.1]
  def change
    create_table :editions do |t|
      t.string :name
      t.text :description
      t.references :coin, foreign_key: true
      t.integer :minted
      t.datetime :mintdate

      t.timestamps
    end
  end
end
