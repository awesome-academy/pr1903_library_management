class RequestBorrow < ApplicationRecord
  belongs_to :user
  has_many :request_details
  validates :day_borrow, presence: true
  validates :day_return, presence: true
  validate :request_detail_present

  private

  def request_detail_present
    if request_details.nil?
      errors.add(:request_details, "Book nil, please add book")
    end
  end
end
