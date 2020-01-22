class Author < ApplicationRecord
  has_one_attached :avatar
  has_many :follow_authors, dependent: :destroy
  has_many :books, dependent: :destroy
end
