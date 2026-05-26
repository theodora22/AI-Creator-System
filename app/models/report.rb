class Report < ApplicationRecord
  validates :goal, presence: true
  validates :audience, presence: true
  validates :content_topic, presence: true
  validates :content_type, presence: true
  validates :prompt, presence: true
end
