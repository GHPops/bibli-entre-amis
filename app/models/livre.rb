class Livre < ApplicationRecord
  belongs_to :user

  validates :titre, presence: true
  validates :auteur, presence: true
  validates :note, numericality: { only_integer: true }
end
