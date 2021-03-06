class User < ActiveRecord::Base
  has_many :posts
  has_many :tags, through: :posts

  validates :name, presence: true
  validates :name, uniqueness: true
end
