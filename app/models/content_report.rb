class ContentReport < ApplicationRecord
  has_many :chats, dependent: :destroy
end
