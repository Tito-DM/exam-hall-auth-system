class Subject < ApplicationRecord
  belongs_to :student
  validates :name, presence: true, length: {minimum:3, maximum:50}
  validates :code, presence: true
  validates :final_Mark, presence: true
  validates :exame_date, presence:true
  validates :exam_value, presence: true
  validates :student_id, presence :true
end
