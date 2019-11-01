class Book < ApplicationRecord
  belongs_to :author
  has_many :request_details
  has_many :follow_books
  has_many :comments
end
