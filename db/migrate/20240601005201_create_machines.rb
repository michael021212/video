class CreateMachines < ActiveRecord::Migration[7.1]
  def change
    create_table :machines do |t|
      t.integer :store_id, null: false, index: true
      t.string :theme, null: false

      t.timestamps
    end
  end
end
