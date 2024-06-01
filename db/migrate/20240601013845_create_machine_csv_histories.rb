class CreateMachineCsvHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :machine_csv_histories do |t|
      t.integer :action_kind, null: false
      t.string :filename
      t.integer :admin_id, null: false
      t.integer :result

      t.timestamps
    end
    add_index :machine_csv_histories, :created_at
  end
end
