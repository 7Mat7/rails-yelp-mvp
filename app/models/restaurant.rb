class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true, allow_nil: false
  validates :category, inclusion: { in: CATEGORY }
end
