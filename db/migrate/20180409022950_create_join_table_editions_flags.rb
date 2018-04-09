class CreateJoinTableEditionsFlags < ActiveRecord::Migration[5.1]
  def change
    create_join_table :editions, :flags do |t|
      # t.index [:edition_id, :flag_id]
      # t.index [:flag_id, :edition_id]
    end
  end
end
