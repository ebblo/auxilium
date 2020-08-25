class Patient < User
  has_many :consultations, foreign_key: "patient_id", dependent: :destroy

  validates :avs_number, presence: true
  has_many :doctors, through: :consultations

  def doctor
    @doctor = self.doctors.first
  end
end
