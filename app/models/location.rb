class Location < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  validates :opener, presence: true
  validates :positive, presence: true
  validates :negative, presence: true

  has_many :users
  has_many :recommendations

end
