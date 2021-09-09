class Billboard < ApplicationRecord
  has_many :artists
  validates :title, presence: true
  validates :genre, presence: true
  validates :description, presence: true
end
