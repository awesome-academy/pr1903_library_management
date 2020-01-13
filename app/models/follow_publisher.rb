class FollowPublisher < ApplicationRecord
  belongs_to :user
  belongs_to :publisher
end
