class CreateMints < ActiveRecord::Migration[5.1]
  def change
    create_table :mints do |t|
      t.string :name
      t.string :website
      t.string :prefix
      t.text :activation_url

      t.timestamps
    end
    add_reference :coins, :mint, foreign_key:true, null:true
    add_reference :editions, :mint, foreign_key:true, null:true
  end
end
