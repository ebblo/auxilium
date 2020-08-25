class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :phone_number, :city, :zip, :street, presence: true

  # def doctor?
  #   current_user.type == "Doctor"
  # end

  # def patient?
  #   current_user.type == "Patient"
  # end
end
