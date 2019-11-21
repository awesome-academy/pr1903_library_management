class Book < ApplicationRecord
  has_one_attached :picture
  belongs_to :author
  has_many :request_details
  has_many :follow_books
  has_many :comments

def self.search(name, page)
    if name
      where('name LIKE ?', "%#{name}%").paginate(page: page)
    else
      paginate(page: page)
    end
  end
end
