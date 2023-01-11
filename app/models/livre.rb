class Livre < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy

  validates :titre, presence: true
  validates :auteur, presence: true
  validates :note, numericality: { only_integer: true }
end
