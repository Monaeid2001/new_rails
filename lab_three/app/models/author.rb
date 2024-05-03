class Author < ApplicationRecord
    has_many :posts
    has_many :creators, through: :posts
end
