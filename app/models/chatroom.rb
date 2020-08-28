class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :doctor, class_name: "Doctor"
  belongs_to :patient, class_name: "Patient"

  validates :doctor_id, :patient_id, presence: true
end
