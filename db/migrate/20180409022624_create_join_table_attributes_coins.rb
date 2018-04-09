class CreateJoinTableAttributesCoins < ActiveRecord::Migration[5.1]
  def change
    create_join_table :attributes, :coins do |t|
      # t.index [:attribute_id, :coin_id]
      # t.index [:coin_id, :attribute_id]
    end
  end
end
