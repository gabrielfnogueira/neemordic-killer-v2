class Group < ApplicationRecord
  validates :name, presence: true

  has_many :places, dependent: :destroy
  has_many :weapons, dependent: :destroy
end
