class Doctor < User
  has_many :consultations, foreign_key: "doctor_id"
  has_many :patients, through: :consultations
end