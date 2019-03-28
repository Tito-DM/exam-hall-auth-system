class Subject < ApplicationRecord
  belongs_to :student
  validates :name, presence: true, length: {minimum:3, maximum:50},uniqueness: {case_sensitive: false}
  validates :code, presence: true, uniqueness: {case_sensitive: false}
  validates :final_Mark, presence: true
  validates :exam_datetime, presence:true
  validates :exam_venue, presence: true
  validates :student_id, presence:true
end
