class Conversation < ApplicationRecord
  belongs_to :contact
  has_many :posts, dependent: :destroy

  broadcasts_to ->(c) { "conversations" }, inserts_by: :prepend, target: "conversations" 

  def authors
    posts.includes(:author).map(&:author).uniq
  end
end
