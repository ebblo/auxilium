class Patient < User
  has_many :consultations, foreign_key: "patient_id", dependent: :destroy
  has_many :doctors, through: :consultations

  validates :avs_number, presence: true

  def doctor
    @doctor = self.doctors.first
  end
end
