class Group < ApplicationRecord
  validates :name, presence: true

  has_many :places, dependent: :destroy
end
