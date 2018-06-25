class Question < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  validates :q_body, presence: true, uniqueness: true

  belongs_to :questionnaire
  has_many :answers
  has_many :responses, through: :answers

end
