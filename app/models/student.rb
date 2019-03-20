class Student < ApplicationRecord
  has_many :subject, foreign_key: "student_id", dependent: :destroy
  validates :name, presence: true
  validates :surname, presence: true
  validates :gender,presence: true
end
