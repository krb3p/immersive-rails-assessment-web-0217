class Guest < ApplicationRecord
  has_many :guest_appearances
  has_many :episodes, through: :guest_appearances

end
