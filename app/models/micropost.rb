class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :favorites
  has_many :fav_users, through: :favorites
  
  validates :content, presence: true, length: { maximum: 255 }
end
