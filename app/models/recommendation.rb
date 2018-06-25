class Recommendation < ApplicationRecord
  belongs_to :location

  validates :name, presence: true, uniqueness: true
  validates :website, presence: true
  validates :description, presence: true

  belongs_to :location

end
