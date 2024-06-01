class CreateKeywordMappings < ActiveRecord::Migration[7.1]
  def change
    create_table :keyword_mappings do |t|
      t.string :keyword, null: false, index: true
      t.string :theme, null: false

      t.timestamps
    end
  end
end
