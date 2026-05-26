class Chat < ApplicationRecord
  belongs_to :user
  belongs_to :content_report
  has_many :messages
end
