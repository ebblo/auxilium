class Patient < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :consultations
  belongs_to :doctor

  has_one :chatroom
  has_one :videoroom
  has_many :messages, as: :messageable

  has_one_attached :photo

  validates :first_name, :last_name, :phone_number, :city, :zip, :street, :avs_number, presence: true

  after_create :new_chatroom
  after_create :new_videoroom

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

  def new_chatroom
    Chatroom.create(patient: self, doctor: self.doctor)
  end

  def new_videoroom
    Videoroom.create(patient: self, doctor: self.doctor)
  end
end
