class Conversation < ApplicationRecord
  belongs_to :contact
  has_many :posts
end
