class Photo < ActiveRecord::Base
  belongs_to :user
  has_many :photo_albums
  has_many :albums, through: :photo_albums
end
