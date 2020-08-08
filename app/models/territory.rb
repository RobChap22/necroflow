class Territory < ApplicationRecord
  validates :name, presence: true
  has_many :turves
  has_many :gangs, through: :turves
end
