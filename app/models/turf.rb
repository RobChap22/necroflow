class Turf < ApplicationRecord
  belongs_to :gang
  belongs_to :territory
  validates :gang, uniqueness: { scope: :territory }
end
