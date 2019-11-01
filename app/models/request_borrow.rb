class RequestBorrow < ApplicationRecord
  belongs_to :user
  has_many :request_details
end
