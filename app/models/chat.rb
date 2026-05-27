class Chat < ApplicationRecord
  DEFAULT_TITLE = "Untitled"

  belongs_to :user
  belongs_to :content_report
  has_many :messages, dependent: :destroy
  validates :user, presence: true
  validates :content_report, presence: true
end
