class Student < ApplicationRecord
  has_many :subject, foreign_key: "student_id", dependent: :destroy
end
