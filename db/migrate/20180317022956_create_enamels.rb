class CreateEnamels < ActiveRecord::Migration[5.1]
  def change
    create_table :enamels do |t|
      t.string :name

      t.timestamps
    end
  end
end
