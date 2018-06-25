class Answer < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  validates :a_body, presence: true, uniqueness: true

  belongs_to :question
  has_many :responses

end
