class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :surname
      t.string :gender
      t.string :student_number
      t.string :id_number

      t.timestamps
    end
  end
end
