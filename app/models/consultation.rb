class Consultation < ApplicationRecord
  belongs_to :patient, class_name: "Patient"
  belongs_to :doctor, class_name: "Doctor"

  has_many :consultation_medications, dependent: :destroy
  has_many :medications, through: :consultation_medications

  validates :title, :date, presence: true
end
