class Gang < ApplicationRecord
  validates :name, presence: true
  has_many :turves, dependent: :destroy
  has_many :territories, through: :turves
end
