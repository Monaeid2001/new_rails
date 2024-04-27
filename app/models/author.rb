# app/models/author.rb
class Author < ApplicationRecord
    validates :name, :dob, :email, :phone_number, presence: true
    validates_format_of :email, with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  end
  