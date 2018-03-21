class AddUserToEdition < ActiveRecord::Migration[5.1]
  def change
    add_reference :editions, :user, foreign_key: true
  end
end
