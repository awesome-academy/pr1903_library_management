class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :book
  belongs_to :parent, class_name: "Comment", optional: true
  has_many :sub_comments, class_name: "Comment", foreign_key: :parent_id, dependent: :destroy
  scope :root_comments, -> {where parent_id: nil}
  validates :content, presence: true, allow_blank: false
end
