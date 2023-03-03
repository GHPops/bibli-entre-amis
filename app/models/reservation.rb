class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :livre

  validates :debut, :fin, presence: true

  scope :past, -> { where("fin < ?", Date.today) }
  scope :upcoming, -> { where("debut > ?", Date.today) }
  scope :current, -> { where("debut <= ? AND fin >= ?", Date.today, Date.today) }
  # scope :current_user, -> { where(user: current_user) }
end
