class Song < ApplicationRecord
  belongs_to :artist
  validates :song_title, presence:true
  validates: artist, presence:true
  validates :duration, presence:true
  validates :release_year, presence:true 
end
