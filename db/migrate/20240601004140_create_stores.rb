class CreateStores < ActiveRecord::Migration[7.1]
  def change
    create_table :stores do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.float :lan, null: false
      t.float :lon, null: false

      t.timestamps
    end
  end
end
