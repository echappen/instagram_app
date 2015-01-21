class Album < ActiveRecord::Base
  belongs_to :user
  has_many :photo_albums
  has_many :photos, through: :photo_albums
end
