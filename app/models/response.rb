class Response < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  validates :r_body, presence: true, uniqueness: true

  belongs_to :answer
  belongs_to :user

end
