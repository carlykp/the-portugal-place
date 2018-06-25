class Questionnaire < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :questions, dependent: :destroy
  has_many :answers, through: :questions

end
