class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.integer :score, null: false
      t.references :student, foreign_key: true
      t.references :test, foreign_key: true

      t.timestamps
    end
  end
end
