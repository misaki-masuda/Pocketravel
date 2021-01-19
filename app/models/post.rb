class Post < ApplicationRecord
  # belongs_to :area
  has_many :favorites
  has_many :favorited_users, through: :favorites, source: :user
  belongs_to :user
  belongs_to :area
  attachment :image
end
