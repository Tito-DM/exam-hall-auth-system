class Student < ApplicationRecord
  has_many :subject, dependent: :destroy
  has_one_attached :image,:dependent => :destroy
  validates :name, presence: true, length:  { minimum: 3,  maximum: 50}
  validates :surname, presence: true, length: {minimum:3, maximum:50}
  validates :gender,presence: true
  validates :student_number, presence: true
  validates :id_number, presence: true
end

