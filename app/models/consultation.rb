class Consultation < ApplicationRecord
  belongs_to :patient, class_name: "Patient"
  belongs_to :doctor, class_name: "Doctor"

  has_many :consultation_medications, dependent: :destroy
  has_many :medications, through: :consultation_medications

  validates :title, :date, presence: true

  ###### REACTIVATE THIS LINE (desactivated for seeding)
  # after_create :async_update # Run on create

  def full_title_and_date
    "#{self.title}: #{self.date.strftime("%d/%m/%Y")}, #{self.date.strftime("%H:%M")}"
  end

  private

  def async_update
    # SmsJob.set(wait_until: self.date + 2.minutes).perform_later
    SmsJob.perform_now
  end

end
