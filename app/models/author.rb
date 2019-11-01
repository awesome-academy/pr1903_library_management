class Author < ApplicationRecord
 has_many :follow_authors
 has_many :books
end
