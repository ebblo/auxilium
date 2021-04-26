class Doctor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :consultations
  has_many :patients

  has_many :chatrooms
  has_many :videorooms
  has_many :messages, as: :messageable

  has_one_attached :photo

  validates :first_name, :last_name, presence: true

  def full_name
    "Dr. #{self.last_name.capitalize}"
  end
end
