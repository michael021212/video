class CreateStores < ActiveRecord::Migration[7.1]
  def change
    create_table :stores do |t|
      t.string :name, null: false
      t.string :address, null: false, default: ""
      t.float :latitude, null: false, default: 0
      t.float :longitude, null: false, default: 0

      t.timestamps
    end
  end
end
