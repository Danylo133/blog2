class Post < ApplicationRecord
  resourcify

  belongs_to :category
  belongs_to :user
  has_many :comments, dependent: :destroy



  validates :title, presence: true, length: { minimum: 5, maximum: 50}
  validates :text, presence: true
  # validates :category, presence: true


end
