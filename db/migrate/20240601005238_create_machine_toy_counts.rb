class CreateMachineToyCounts < ActiveRecord::Migration[7.1]
  def change
    create_table :machine_toy_counts do |t|
      t.integer :machine_id, null: false, index: { unique: true }
      t.integer :quantity, null: false, default: 0

      t.timestamps
    end
  end
end
