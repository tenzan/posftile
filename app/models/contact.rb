class Contact < ApplicationRecord
    has_many :posts, as: :author
    has_many :conversations
end
