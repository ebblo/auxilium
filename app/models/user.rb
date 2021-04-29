class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # has_many :messages, dependent: :destroy

  validates :first_name, :last_name, :phone_number, :city, :zip, :street, presence: true

  def doctor?
    self.type == "Doctor"
  end

  def patient?
    self.type == "Patient"
  end
end
