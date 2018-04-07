class CreateJoinTableRolePrivilege < ActiveRecord::Migration[5.1]
  def change
    create_join_table :roles, :privileges do |t|
      # t.index [:role_id, :privilege_id]
      # t.index [:privilege_id, :role_id]
    end
  end
end
