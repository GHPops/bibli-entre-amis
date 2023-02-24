class Livre < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy

  validates :titre, presence: true
  validates :auteur, presence: true
  validates :note, numericality: { only_integer: true }, length: { maximum: 5 }

  scope :past, -> { where("fin < ?", Date.today) }
  scope :upcoming, -> { where("debut > ?", Date.today) }
  scope :current, -> { where("debut <= ? AND fin >= ?", Date.today, Date.today) }
end
