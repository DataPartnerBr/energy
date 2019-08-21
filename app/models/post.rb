class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :sub_title, presence: true
  validates :body, presence: true
end
