class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.references :teacher, foreign_key: true
      t.string :name
      t.string :password_digest

      t.timestamps
    end
  end
end
