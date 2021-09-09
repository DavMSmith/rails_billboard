class Artist < ApplicationRecord
  has_many :songs
  belongs_to :billboard
  validates :name, presence: true
  validates :about, presence:true
  validates :discography, presence:true
end
