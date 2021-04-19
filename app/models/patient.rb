class Patient < User
  has_many :consultations, foreign_key: "patient_id", dependent: :destroy
  has_many :doctors, through: :consultations

  has_many :chatrooms, foreign_key: "patient_id"
  # has_many :messages, dependent: :destroy

  has_one_attached :photo

  validates :avs_number, presence: true

  def doctor
    @doctor = self.doctors.first
  end

  def full_name
    "#{self.first_name.capitalize} #{self.last_name.capitalize}"
  end

  def full_address
    "#{self.street}, #{self.zip} #{self.city}"
  end

  def next_consultation
    self.consultations.where("consultations.date >= ?", Time.zone.now).order(:date).first
  end

  def last_consultation
    self.consultations.where("consultations.date < ?", Time.zone.now).order(:date).first
  end
end
