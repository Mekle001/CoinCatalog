class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :name

      t.timestamps
    end

    change_table :coins do |t|
      t.references :artist, foreign_key: true, null: true
    end

  end
end
