class Message < ApplicationRecord
  belongs_to :group
  belings_to :user

  validates :content, presence: true, unless: :image?
end
