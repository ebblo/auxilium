class Doctor < User
  has_many :consultations, foreign_key: "doctor_id"
end