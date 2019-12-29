class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.references :teacher, foreign_key: true
      t.string :name, null: false
      t.string :password_digest, null: false
      t.string :university

      t.timestamps
    end
    add_index :students, :name, unique: true
  end
end
