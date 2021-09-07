class Billboard < ApplicationRecord
  validates :title, presence: true
  validates :genre, presence: true
  validates :description, presence: true
end
