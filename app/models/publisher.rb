class Publisher < ApplicationRecord
  has_one_attached :avatar
  has_many :books, dependent: :destroy
end
