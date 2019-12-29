class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.string :name, null: false
      t.references :test_type, foreign_key: true
      t.date :test_date, null: false

      t.timestamps
    end
  end
end
