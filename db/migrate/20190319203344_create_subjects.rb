class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :code
      t.integer :final_Mark
      t.date :exame_date
      t.string :exam_value
      t.string :student_id

      t.timestamps
    end
  end
end
