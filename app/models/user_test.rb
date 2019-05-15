class UserTest < ApplicationRecord
  belongs_to :test
  belongs_to :user
  belongs_to :result, optional: true
  has_many :user_answers
  accepts_nested_attributes_for :user_answers
  has_many :answers , through: :user_answers
end
