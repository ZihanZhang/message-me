class Message < ApplicationRecord
  belongs_to :user
  validates :body, presence: true
  scope :custom_display, -> { order(:create_at).last(20) }
end
