class Message < ApplicationRecord
  # belongs_to :user
  belongs_to :chatroom
  belongs_to :messageable, polymorphic: true

  validates :content, presence: true
end
