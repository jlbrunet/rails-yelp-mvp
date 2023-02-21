class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  TYPES = %w[chinese italian japanese french belgian].freeze
  validates :category, inclusion: { in: TYPES }, presence: true
  validates :name, presence: true
  validates :address, presence: true
end
