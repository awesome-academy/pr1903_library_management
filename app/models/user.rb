class User < ApplicationRecord
 has_many :comments
 has_many :ratings
 has_many :likes
 has_many :follow_authors
 has_many :request_borrow
end
