class Answer < ApplicationRecord
  belongs_to :question, optional: true
  has_many :user_answers
  has_many :user_tests , through: :user_answers
end
