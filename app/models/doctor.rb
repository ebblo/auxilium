class Doctor < User
  has_many :consultations, foreign_key: "doctor_id"
  has_many :patients, through: :consultations

  has_many :chatrooms, foreign_key: "doctor_id"
end